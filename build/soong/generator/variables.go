package generator

import (
	"fmt"

	"android/soong/android"
)

func aosmpExpandVariables(ctx android.ModuleContext, in string) string {
	aosmpVars := ctx.Config().VendorConfig("aosmpVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if aosmpVars.IsSet(name) {
			return aosmpVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
