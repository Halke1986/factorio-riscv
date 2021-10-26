package build

import (
	"strings"

	"github.com/magefile/mage/sh"
)

type Args struct {
	Sources      []string
	IncludeDirs  []string
	Macros       []string
	Libraries    []string
	LinkerScript string
	Optimization string
}

// Default Factorio RISCV program build script. Builds elf file in repo root.
func Default(args Args) error {
	// Decorate arguments.
	includeDirs := addPrefix(args.IncludeDirs, "-I")
	macros := addPrefix(args.Macros, "-D")
	libraries := addPrefix(args.Libraries, "-l")

	// Prepare object files cleaning.
	objects := []string(nil)
	defer func() { _ = Clean(objects) }()

	// Build object files.
	for _, source := range args.Sources {
		objPath := MakeObjPath(source, "")
		objects = append(objects, objPath)

		if strings.HasSuffix(source, "c") {
			// Compile source file.
			if err := sh.RunV(
				"riscv64-unknown-elf-gcc",
				AppendStrings(
					"-ffreestanding",
					"-nostartfiles",
					"-specs=nosys.specs",
					"-march=rv32im",
					"-mabi=ilp32",
					"-"+args.Optimization,

					includeDirs,
					macros,
					"-c", source,
					"-o", objPath,
				)...,
			); err != nil {
				return err
			}
		} else {
			// Assemble source file.
			if err := sh.RunV(
				"riscv64-unknown-elf-as",
				"-march=rv32im",
				"-mabi=ilp32",
				source,
				"-o", objPath,
			); err != nil {
				return err
			}
		}
	}

	// Link objects.
	return sh.RunV(
		"riscv64-unknown-elf-gcc",
		AppendStrings(
			"-ffreestanding",
			"-nostartfiles",
			"-specs=nosys.specs",
			"-march=rv32im",
			"-mabi=ilp32",
			"-"+args.Optimization,
			"-Xlinker",
			"-T"+args.LinkerScript,
			objects,
			libraries,
			"-o", ElfPath,
		)...,
	)
}

func addPrefix(vals []string, prefix string) []string {
	result := []string(nil)
	for _, s := range vals {
		result = append(result, prefix+s)
	}

	return result
}
