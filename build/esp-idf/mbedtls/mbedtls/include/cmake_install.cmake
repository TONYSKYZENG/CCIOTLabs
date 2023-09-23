# Install script for directory: /home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/tony/.espressif/tools/xtensa-esp32-elf/esp-2021r2-patch5-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aesni.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/arc4.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/blowfish.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bn_mul.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/certs.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher_internal.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/compat-1.3.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp_internal.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy_poll.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/havege.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md2.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md4.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md_internal.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/padlock.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk_internal.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs11.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa_internal.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_internal.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/xtea.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_config.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_types.h"
    "/home/tony/Platforms/esp/v4_4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

