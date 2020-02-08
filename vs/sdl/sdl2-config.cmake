set(SDL2_INCLUDE_DIRS "${SDL2_DIR}/include")

if(${CMAKE_GENERATOR} MATCHES "Visual Studio")
    set(SDL2_LIBRARIES "${SDL2_DIR}/lib/$(PlatformTarget)/SDL2.lib" "${SDL2_DIR}/lib/$(PlatformTarget)/SDL2main.lib")
else()
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        set(SDL2_LIBRARIES "${SDL2_DIR}/lib/x64/SDL2.lib" "${SDL2_DIR}/lib/x64/SDL2main.lib")
    else()
        set(SDL2_LIBRARIES "${SDL2_DIR}/lib/x86/SDL2.lib" "${SDL2_DIR}/lib/x86/SDL2main.lib")
    endif()
endif()