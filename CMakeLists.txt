cmake_minimum_required(VERSION 3.22)

project(
    CppProjecttemplate
    VERSION 1.0.0
    LANGUAGES C CXX
)

#these are cmake predefined variable. we are setting the value of it
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS        OFF)

#there are user defined variable
set(LIBRARY_NAME "Helloworld")
set(EXECUTABLE_NAME "Executable")

option(COMPILE_EXECUTABLE "wheather to compile executable. if off then will not build executable" OFF)
#to set this to on at the time of configuring time -> cmake .. -DCOMPILE_EXECUTABLE=ON

add_subdirectory(Helloworld)

if (COMPILE_EXECUTABLE)
    add_subdirectory(app)

    target_link_libraries(${EXECUTABLE_NAME} PUBLIC ${LIBRARY_NAME})
else()
    message("without compiling executable")
endif()

#good practice is to create a cmakelists in each sub dir. and add that sub dir in the parrent dir cmakelists