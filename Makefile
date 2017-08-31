

all: program-static program-dynamic

program-satic: main.o libmylib.all
	gcc -Wall -static -o program-static $<

program-dynamic: main.o libmylib.so
	gcc -Wall -o program-static $<

