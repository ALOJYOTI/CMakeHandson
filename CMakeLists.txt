cmake_minimum_required(VERSION 3.22)

project(
    CppProjecttemplate
    VERSION 1.0.0
    LANGUAGES C CXX
)

add_subdirectory(Helloworld)
add_subdirectory(app)

target_link_libraries(Executable PUBLIC Helloworld)
#source need to be build 1st then app
#use CXX instead of c++ and ++ can be an operator

#Helloworld is the library name and it is a static linked. then listing down the source file required to build that library




# mow we have two target that can be build. Helloworld and Executable. Executable has dependancy on Helloworld library
#we can build Helloworld seperately 1st then we can build Executable.  -> build$ cmake --build . --target Helloworld
#or we can directly build execitable. it will build all the depandant library also 1st. -> build$ cmake --build .


#good practice is to create a cmakelists in each sub dir. and add that sub dir in the parrent dir cmakelists