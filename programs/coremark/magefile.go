package coremark

import (
	bld "riscv/build-scripts"
	"strings"

	"github.com/magefile/mage/sh"
)

const workDir = "./programs/coremark"

// BuildHost builds the coremark binary for execution on host
func BuildHost() error {
	return bld.InDir(workDir, "coremark.run", buildHost)
}

func buildHost() error {
	return sh.RunV(
		"gcc",

		"src/core_list_join.c",
		"src/core_main.c",
		"src/core_matrix.c",
		"src/core_state.c",
		"src/core_util.c",
		"posix/core_portme.c",

		"-I", "posix/",
		"-I", "src/",

		"-DCOMPILER_FLAGS=\"-O2\"",
		"-DCORE_DEBUG=1",

		"-O2",

		"-o", "coremark.run",
	)
}

//// Build build selected benchmark
//func Build(suite string) error {
//	if err := build(suite); err != nil {
//		return err
//	}
//
//	return bootloader.Make(elfPath, bootloaderPath, nil)
//}

func build(suite string) error {
	sources := []string{
		"src/core_list_join.c",
		"src/core_main.c",
		"src/core_matrix.c",
		"src/core_state.c",
		"src/core_util.c",

		"env/core_portme.c",
		"env/crt.S",
	}

	// Compile or assemble all required sources.
	objects := []string(nil)
	for _, sourcePath := range sources {
		objPath := bld.MakeObjPath(sourcePath, "build/")
		objects = append(objects, objPath)

		if strings.HasSuffix(sourcePath, "c") {
			if err := compile(sourcePath, objPath); err != nil {
				return err
			}
		} else {
			//if err := assemble(sourcePath, objPath); err != nil {
			//	return err
			//}
		}
	}

	//return link(objects)
	return nil
}

func compile(filePath, objPath string) error {
	return sh.RunV(
		"riscv64-unknown-elf-gcc",
		"-ffreestanding",
		"-nostartfiles",
		"-specs=nosys.specs",
		"-march=rv32im",
		"-mabi=ilp32",
		"-O2",

		"-Isrc/",
		"-Ienv/",

		"-DCOMPILER_FLAGS=\"-O2\"",
		"-DCORE_DEBUG=1",

		"-c", filePath,
		"-o", objPath,
	)
}

//func assemble(filePath, objPath string) error {
//	return sh.RunWithV(
//		map[string]string{
//			"WORK_DIR": workDir,
//		},
//		"riscv64-unknown-elf-as",
//		"-march=rv32im",
//		"-mabi=ilp32",
//
//		filePath,
//		"-o", objPath,
//	)
//}
//
//func link(objects []string) error {
//	return sh.RunWithV(
//		map[string]string{
//			"WORK_DIR": workDir,
//		},
//		"riscv64-unknown-elf-gcc",
//		appendStrings(
//			"-ffreestanding",
//			"-nostartfiles",
//			"-specs=nosys.specs",
//			"-march=rv32im",
//			"-mabi=ilp32",
//			"-O2",
//			"-Xlinker",
//			"-T${WORK_DIR}/env/link.ld",
//			objects,
//			"-lgcc",
//			"-lm",
//			"-o", elfPath,
//		)...,
//	)
//}
//
//func makeObjPath(sourcePath string) string {
//	elems := strings.Split(sourcePath, "/")
//	file := elems[len(elems)-1]
//	fileName := strings.Split(file, ".")[0]
//	return "${WORK_DIR}/build/" + fileName + ".o"
//}
//
//// appendStrings appends strings and string slices into one slice.
//func appendStrings(ss ...interface{}) []string {
//	result := []string(nil)
//	for i := range ss {
//		switch v := ss[i].(type) {
//		case string:
//			result = append(result, v)
//		case []string:
//			result = append(result, v...)
//		}
//	}
//
//	return result
//}
