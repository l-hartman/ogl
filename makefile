all: Application.exec

Application.exec: Application.o glad.o
		g++ -o Application.exec Application.o glad.o -lGL -lGLU -lglfw3 -lX11 \
		-lXxf86vm -lXrandr -lpthread -lXi -ldl -lXinerama -lXcursor \
		-ldl

Application.o: src/Application.cpp
		g++ -std=c++11 -c src/Application.cpp

glad.o: src/glad.c
		gcc -c src/glad.c 

clean: 
		rm Application.o Application.exec