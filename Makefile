.PHONY: %.o

all: basic.o

%.o:./src/%/*.c
	$(CC) ./$^ -luv -o $@;
	echo run $@
	./$@;

clean:
	@rm -rf *.o

