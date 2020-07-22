# data

Compile the helloworld program on MinGW with the following.
Compiling on Cygwin did not result in a static executable and there was an error about
dll not being found.

```
gcc helloworld.c -static -o helloworld.exe

or

cc helloworld.c -static -o helloworld.exe
```
