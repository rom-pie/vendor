# Insert new variables inside the Lineage structure
aosmp_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Aosmp": {'; \
	echo '    "Needs_text_relocations": $(if $(filter true,$(TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS)),true,false)'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
