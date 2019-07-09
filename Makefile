.PHONY: %.o

all: basic.o

%.o:./src/%/*.c
	@$(CC) ./$^ -luv -o $@;
	@./$@;
	@$(MAKE) clean;

clean:
	rm -rf *.o

