cmake -H. -Bbuild -G "Visual Studio 16 2019" -A x64
cmake --build build --parallel 5 --config MinSizeRel