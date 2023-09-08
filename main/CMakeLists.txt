# Embed CA, certificate & key directly into binary
set(MY_COMPONENT_SRCS 
    #"wifi_enterprise_main.c"
    "station_main.c"
    "take_picture.c"
    "aws.c"
    )
set(COMPONENT_ADD_INCLUDEDIRS
	"."
	${CMAKE_CURRENT_LIST_DIR}
	)
set(MY_COMPONENT_ADD_INCLUDEDIRS
                    ${COMPONENT_ADD_INCLUDEDIRS}
                 
                    )
idf_component_register(SRCS ${MY_COMPONENT_SRCS}
                    INCLUDE_DIRS ${COMPONENT_ADD_INCLUDEDIRS}
                  )
