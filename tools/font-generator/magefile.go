//go:build mage
// +build mage

package main

import (
	"fmt"
	font "riscv/tools/font-generator/src"
)

const atlasSize = 32

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

type glyph [25]int

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
