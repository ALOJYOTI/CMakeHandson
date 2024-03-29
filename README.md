# CMakeHandson

Steps to build using cmake

1. create CMakeLists.txt in the foldee having the source cpp file
2. create a build dir in the project root
3. cd build
4. cmake .. -> basically configuring the cmake project. and pointing to the dir where the cmakelists.txt is located
5. cmake --build . -> building the project and executable
6. once done, from the nex time no need to perform till setp 5
7. just go to build dir and do cmake .
8. ./executable  running project