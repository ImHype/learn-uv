.PHONY: %.o

all: basic.o idle.o

%.o:./lib/libuv/docs/code/%/main.c
	@$(CC) ./$^  -luv -o $@;
	@echo run $@
	@./$@;
	@$(MAKE) clean;

clean:
	@rm -rf *.o