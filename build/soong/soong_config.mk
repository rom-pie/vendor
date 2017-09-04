# Insert new variables inside the Lineage structure
aosmp_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Aosmp": {'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
