[ -d "out.static" ] && rm -rfv out.static
mkdir -p out.static
gcc -c main.c -o out.static/main.o
gcc -c module1.c -o out.static/module1.o
gcc -c module2.c -o out.static/module2.o
ar rcs out.static/libmylib.a out.static/module1.o out.static/module2.o
gcc out.static/main.o -static -L./out.static -lmylib -o program-static
