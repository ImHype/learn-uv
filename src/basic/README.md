## basic example also could to learn the C build process

### We could build with -l
```bash
$ gcc main.c -luv -o basic
```

### We also could build in the split ways
#### 1. Pre-processing
```bash
$ gcc -E ./main.c -o basic.i
```

The file `basic.i` is like this [basic.i](./src/basic/basic.i)

#### 2. Compiling
```bash
$ gcc -S basic.i -o basic.s
```

Your code will be compile to assembly by this step.

#### 3. Assembling

```bash
$ gcc -c basic.s -o basic.o
```

It will be the binary.

#### 4. Link
The command is `gcc somefile.o`. But the `uv` has been used in our codes.

So we will meet some problems if we use the `gcc basic.o`.

```bash
$ gcc basic.o
```

```console
Undefined symbols for architecture x86_64:
  "_uv_loop_close", referenced from:
      _main in basic.o
  "_uv_loop_init", referenced from:
      _main in basic.o
  "_uv_run", referenced from:
      _main in basic.o
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```

We need also include our dependencies

```bash
$ gcc basic.o ../../lib/libuv/.libs/libuv.dylib -o basic
```

#### 5. Run
```bash
$ ./basic
```

Then the console will output

```console
> Hello.
```
