.PHONY: %.o

all: basic.o idle.o

%.o:./src/%/*.c
	$(CC) ./$^ -luv -o $@;
	echo run $@
	./$@;

demo:
	$(CC) ./src/basic/main.c -luv -o a.out;

clean:
	@rm -rf *.o

