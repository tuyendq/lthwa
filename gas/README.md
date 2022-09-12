```bash
$ which as
/usr/bin/as
$ as -V
GNU assembler version 2.34 (x86_64-linux-gnu) using BFD version (GNU Binutils for Ubuntu) 2.34

$ as --help

```

```bash
as hello.s -o hello.o
ld hello.o -o hello
./hello
```
