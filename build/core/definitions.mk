define uniq
$(if $1,$(firstword $1) $(call uniq,$(filter-out $(firstword $1),$1)))
endef
 
# Include board/platform macros
include vendor/aosmp/build/core/utils.mk

# Include vendor platform definitions
include vendor/aosmp/build/core/vendor/*.mk