cmake_minimum_required(VERSION 3.22)

project(
    CppProjecttemplate
    VERSION 1.0.0
    LANGUAGES C CXX
)
#use CXX instead of c++ and ++ can be an operator

#Helloworld is the library name and it is a static linked. then listing down the source file required to build that library
add_library(Helloworld STATIC my_lib.cpp)

add_executable(Executable main.cpp)

# mow we have two target that can be build. Helloworld and Executable. Executable has dependancy on Helloworld library
#we can build Helloworld seperately 1st then we can build Executable.  -> build$ cmake --build . --target Helloworld
#or we can directly build execitable. it will build all the depandant library also 1st. -> build$ cmake --build .
target_link_libraries(Executable PUBLIC Helloworld)