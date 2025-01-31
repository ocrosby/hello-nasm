# Hello NASM

This project is a demo of an assembly language project in CLion using NASM.

## Setting Up NASM in CLion

1. Install NASM
Ensure you have NASM installed on your system.

```shell
brew install nasm
```

2. Modify the CMakeLists.txt file for NASM

```plaintext
cmake_minimum_required(VERSION 3.30)
project(hello_nasm LANGUAGES C ASM)

enable_language(ASM_NASM)

set(SOURCE_FILES assembly/hello.asm)

set(CMAKE_CXX_STANDARD 14)

add_executable(hello assembly/hello.asm)
```

This tells CLion to treat .asm files as assembly language and compile them properly.

