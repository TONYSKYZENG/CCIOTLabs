# Embed CA, certificate & key directly into binary
set(COMPONENT_ADD_INCLUDEDIRS
	"."
	"${CMAKE_CURRENT_LIST_DIR}"
	)
idf_component_register(SRCS "wpa2_enterprise_main.c" "aws.c"
                    INCLUDE_DIRS ${COMPONENT_ADD_INCLUDEDIRS}
                    EMBED_TXTFILES wpa2_ca.pem wpa2_client.crt wpa2_client.key)
