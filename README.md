# learn-uv

### Requirements
You may need some requirements

#### sphinx-doc
```bash
$ brew install sphinx-doc
```
#### automake

```bash
$ brew install automake
```
#### libtool

```bash
$ brew install libtool
```
### Build UV
```bash
$ cd lib
$ git clone https://github.com/libuv/libuv.git
$ cd libuv
$ ./autogen.sh
$ ./configure
$ make
```

```console
> ./install-sh -c -d '/usr/local/lib'
> /bin/sh ./libtool   --mode=install /usr/bin/install -c   libuv.la '/usr/local/lib'
>libtool: install: /usr/bin/install -c .libs/libuv.1.dylib /usr/local/lib/libuv.1.dylib
>libtool: install: (cd /usr/local/lib && { ln -s -f libuv.1.dylib libuv.dylib || { rm -f libuv.dylib && ln -s libuv.1.dylib libuv.dylib; }; })
>libtool: install: /usr/bin/install -c .libs/libuv.lai /usr/local/lib/libuv.la
>libtool: install: /usr/bin/install -c .libs/libuv.a /usr/local/lib/libuv.a
>libtool: install: chmod 644 /usr/local/lib/libuv.a
>libtool: install: ranlib /usr/local/lib/libuv.a
> ./install-sh -c -d '/usr/local/include'
> /usr/bin/install -c -m 644 include/uv.h '/usr/local/include'
> ./install-sh -c -d '/usr/local/lib/pkgconfig'
> /usr/bin/install -c -m 644 libuv.pc '/usr/local/lib/pkgconfig'
> ./install-sh -c -d '/usr/local/include/uv'
> /usr/bin/install -c -m 644 include/uv/errno.h include/uv/threadpool.h include/uv/version.h include/uv/unix.h include/uv/darwin.h '/usr/local/include/uv'
```