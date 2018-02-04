BUILD_RRO_SYSTEM_PACKAGE := $(TOPDIR)vendor/aosmp/build/core/system_rro.mk

# Rules for MTK targets
include $(TOPDIR)vendor/aosmp/build/core/mtk_target.mk

# Rules for QCOM targets
include $(TOPDIR)vendor/aosmp/build/core/qcom_target.mk

# We modify several neverallows, so let the build proceed
SELINUX_IGNORE_NEVERALLOWS := true

