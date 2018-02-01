@echo off
ren C:\MinGW\mingw64-485 mingw64
ren C:\MinGW\mingw32-485 mingw32
copy "C:\MinGW\mingw64\x86_64-w64-mingw32\lib\libwinpthread-1.dll" "C:\Users\andre\Documents\StockfishFamily\Stockfish9\Stockfish\src\libwinpthread-1.dll"
cd "C:\Users\andre\Documents\StockfishFamily\Stockfish9\Stockfish\src"

make clean
mingw32-make -f MakeFile build ARCH=x86-64 COMP=mingw
strip stockfish.exe
ren stockfish.exe Stockfish9-x86-64.exe"

make clean
mingw32-make -f MakeFile build ARCH=x86-64-modern COMP=mingw
strip stockfish.exe
ren stockfish.exe Stockfish9-x86-64-modern.exe"

make clean
mingw32-make -f MakeFile build ARCH=x86-64-bmi2 COMP=mingw
strip stockfish.exe
ren stockfish.exe Stockfish9-x86-64-bmi2.exe"

make clean
mingw32-make -f MakeFile build ARCH=x86-32 COMP=mingw
strip stockfish.exe
ren stockfish.exe Stockfish9-x86-32.exe"

make clean
mingw32-make -f MakeFile build ARCH=x86-32-old COMP=mingw
strip stockfish.exe
ren stockfish.exe Stockfish9-x86-32-old.exe"

make clean
mingw32-make -f MakeFile build ARCH=ppc-64 COMP=mingw
strip stockfish.exe
ren stockfish.exe Stockfish9-ppc-64.exe"

make clean
mingw32-make -f MakeFile build ARCH=ppc-32 COMP=mingw
strip stockfish.exe
ren stockfish.exe Stockfish9-ppc-32.exe"

make clean
mingw32-make -f MakeFile build ARCH=armv7 COMP=mingw
strip stockfish.exe
ren stockfish.exe Stockfish9-armv7.exe"

make clean
mingw32-make -f MakeFile build ARCH=general-64 COMP=mingw
strip stockfish.exe
ren stockfish.exe Stockfish9-general-64.exe"

make clean
mingw32-make -f MakeFile build ARCH=general-32 COMP=mingw
strip stockfish.exe
ren stockfish.exe Stockfish9-general-32.exe"

ren C:\MinGW\mingw64 mingw64-485
ren C:\MinGW\mingw32 mingw32-485
del libwinpthread-1.dll

make clean
pause

