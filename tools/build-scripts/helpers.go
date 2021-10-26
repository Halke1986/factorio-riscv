package build

import (
	"os"
	"strings"
)

// MakeObjPath strips source files of their extension and replaces it with.o.
// The .o files are returned with buildDir prefix.
func MakeObjPath(sourcePath, buildDir string) string {
	elems := strings.Split(sourcePath, "/")
	file := elems[len(elems)-1]
	fileName := strings.Split(file, ".")[0]
	return buildDir + fileName + ".o"
}

// AppendStrings appends strings and string slices into one slice.
func AppendStrings(ss ...interface{}) []string {
	result := []string(nil)
	for i := range ss {
		switch v := ss[i].(type) {
		case string:
			result = append(result, v)
		case []string:
			result = append(result, v...)
		}
	}

	return result
}

// Clean removes the listed files.
func Clean(files []string) error {
	for _, f := range files {
		if err := os.Remove(f); err != nil {
			return err
		}
	}
	return nil
}
