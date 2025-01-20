CC=clang
export PRESENT
LD1=ld -lSystem /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/lib/darwin/libclang_rt.osx.a -demangle -lto_library /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libLTO.dylib  -dynamic -arch arm64 -platform_version macos 15.0.0 15.2 -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -mllvm -enable-linkonceodr-outlining
LD2=ld -lSystem /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/lib/darwin/libclang_rt.osx.a -demangle -lto_library /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libLTO.dylib  -dynamic -arch arm64 -platform_version macos 15.0.0 15.2 -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -mllvm -enable-linkonceodr-outlining
DEPS=otool -L
CMAKe=cmake
PRESENT?=static

all: conf build static-link run

conf: 
	$(CMAKe) . --preset=$(PRESENT)

build: 
	$(CMAKe) --build output-$(PRESENT)

# static-link: 
# 	$(LD1) -o ./output/hello-static ./output/hello.o

# dynamic-link: 
# 	$(LD2) -o ./output/hello-dynamic ./output/hello.o 

deps: 
	$(DEPS) -o ./output-$(PRESENT)/HelloWorld

clear:
	rm -rf ./output-$(PRESENT)
	rm -f CmakeCache.txt

run:
	./output-$(PRESENT)/HelloWorld

size:
	ls -l ./output-$(PRESENT)/HelloWorld