//go:build mage
// +build mage

package main

import (
	_ "embed"
	"fmt"
	font "riscv/tools/font-generator/src"

	"github.com/zachomedia/go-bdf"
)

const atlasSize = 32

type glyph [15]int

//go:embed tom-thumb.bdf
var fontFile []byte

func Build() error {
	glyphs := []glyph(nil)

	for g := 0; g < len(font.Font); g++ {
		glyphs = append(glyphs, parseRawGlyph(font.Font[g]))
	}

	for g := 0; g < len(glyphs); g += atlasSize {
		k := g + atlasSize
		if k >= len(glyphs) {
			k = len(glyphs)
		}
		atlas := makeAtlas(glyphs[g:k])

		for i := 0; i < len(atlas); i++ {
			fmt.Printf("\"%x\",", atlas[i])
		}
		fmt.Println()
	}

	return nil
}

func DecodeFontFile() error {
	font, err := bdf.Parse(fontFile)
	if err != nil {
		return err
	}

	for c := ' '; c <= '~'; c++ {
		character := font.CharMap[c]
		lp := character.LowerPoint
		img := character.Alpha

		g := [6][3]bool{}

		h := img.Rect.Max.Y - img.Rect.Min.Y
		for y := img.Rect.Min.Y; y < img.Rect.Max.Y; y++ {
			for x := img.Rect.Min.X; x < img.Rect.Max.X; x++ {
				_, _, _, v := img.At(x, y).RGBA()
				if v != 0 {
					g[len(g)-h+y-lp[1]-1][x+lp[0]] = true
				}
			}
		}

		for y := 0; y < len(g)-1; y++ {
			fmt.Printf("\"")
			for x := 0; x < len(g[y]); x++ {
				if g[y][x] {
					fmt.Printf("X")
				} else {
					fmt.Printf(".")
				}
			}
			fmt.Println("\",")
		}
		fmt.Print("},\n{\n")
	}

	return nil
}

func parseRawGlyph(r font.Glyph) glyph {
	g := glyph{}

	for y := 0; y < font.GlyphHeight; y++ {
		for x := 0; x < font.GlyphWidth; x++ {
			if r[y][x] == 'X' {
				g[y*font.GlyphWidth+x] = 1
			}
		}
	}

	return g
}

func makeAtlas(gs []glyph) glyph {
	atlas := glyph{}
	for g := 0; g < len(gs); g++ {
		for i := 0; i < len(atlas); i++ {
			atlas[i] |= gs[g][i] << g
		}
	}

	return atlas
}
