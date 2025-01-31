cmake_minimum_required(VERSION 3.16)
project(NASM_Project LANGUAGES ASM_NASM)

enable_language(ASM_NASM)

set(CMAKE_ASM_NASM_OBJECT_FORMAT macho64)  # Ensure Mach-O format

set(SOURCE_FILES assembly/hello.asm)

add_executable(hello ${SOURCE_FILES})

# macOS-specific linker flags
if(APPLE)
    set(CMAKE_EXE_LINKER_FLAGS "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/crt1.o -e _start -lSystem -syslibroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -macos_version_min 10.14")
endif()
