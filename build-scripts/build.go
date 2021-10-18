package build

import (
	"os"
	"path/filepath"
	"strings"

	"github.com/carolynvs/magex/shx"
)

// InDir runs build() function in workDir and copies the resultFile to wd.
func InDir(workDir string, resultFile string, build func() error) error {
	wd, err := os.Getwd()
	if err != nil {
		return err
	}

	if err := os.Chdir(workDir); err != nil {
		return err
	}

	err = build()
	_ = os.Chdir(wd)
	if err != nil {
		return err
	}

	if resultFile == "" {
		return nil
	}

	src := filepath.Join(workDir, resultFile)
	if err := shx.Copy(src, resultFile); err != nil {
		return err
	}

	return os.Remove(src)
}

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
