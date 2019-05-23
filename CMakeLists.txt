cmake_minimum_required(VERSION 3.11)
project(katana)

set(CMAKE_C_STANDARD 99)

file(GLOB HEADER_FILES src/*.h )
file(GLOB EXPORT_HEADER_FILES src/katana.h)

set(INCLUDE_DIRECTORIES src)

if(MSVC)
  list(APPEND HEADER_FILES visualc/include/unistd.h)
  list(APPEND INCLUDE_DIRECTORIES visualc/include)
endif()

file(INSTALL ${EXPORT_HEADER_FILES} DESTINATION ${CMAKE_BINARY_DIR}/include/katana)		

file(GLOB SOURCE_FILES src/*.c)

add_library(katana STATIC ${HEADER_FILES} ${SOURCE_FILES})
target_include_directories(katana PRIVATE ${INCLUDE_DIRECTORIES})

install(FILES ${EXPORT_HEADER_FILES} 
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include/katana
)

install(
        TARGETS katana
        EXPORT "${TARGETS_EXPORT_NAME}"
        LIBRARY DESTINATION "lib"
        ARCHIVE DESTINATION "lib"
        RUNTIME DESTINATION "bin"
        INCLUDES DESTINATION "include/katana"
)
