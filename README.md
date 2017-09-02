# learning-cpp

Sketches of code I use to learn a few things about C/C++ programming (on linux)

## Configuring the environment

### Tools

- Python 2.7
- CMAKE 4.0
- GYP
- GCC 4.9.2

### Run GYP to prepare the makefiles

```bash
gyp --depth=. --generator-output=output main.gyp
```

### Run the makefile

```bash
make app1
make app2
```
