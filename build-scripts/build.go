package build

import (
	"os"
	"path/filepath"

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

	return shx.Copy(filepath.Join(workDir, resultFile), resultFile)
}
