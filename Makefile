#automate cmake steps with makefile
all: clean build exec

clean:
	rm -rf build
build:
	mkdir -p build
	cmake -S . -B ./build -DCOMPILE_EXECUTABLE=ON
	cmake --build ./build/
exec:
	./build/app/Executable


	