This repository provides a container that allows to build fortran programs with `gcc-fortran`.

To compile your code run this command in the directory where you would run usually the compilation:

```bash
docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) -u $(id -u):$(id -g) aluschumacher/gcc-fortran:latest <command>
```

Here, `<command>` can be either `gfortran` followed by some arguments, or `make`.

You can then execute the program with 

```bash
docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) -u $(id -u):$(id -g) aluschumacher/gcc-fortran:latest ./<your-binary>
```
