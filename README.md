# ogl

Boilerplate code for Modern OpenGL using GLFW as an API for window frames and glad to as a library extension loader.

## Setup GLFW3

``` 
version="3.2.1" && \
wget "https://github.com/glfw/glfw/releases/download/${version}/glfw-${version}.zip" && \
unzip glfw-${version}.zip && \
cd glfw-${version} && \
sudo apt-get install cmake xorg-dev libglu1-mesa-dev && \
sudo cmake -G "Unix Makefiles" && \
sudo make && \
sudo make install
```

## Build and Run
```
  make
  ./Application.exe

```

- Application.cpp renders a colorful rotating triangle

![Alt Text](https://github.com/l-hartman/ogl/blob/master/res/triangle.gif "example output")

Will soon use cmake to generate makefile.
