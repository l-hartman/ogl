all: Application.exec

Application.exec: Application.o
		g++ -o Application.exec Application.o -lGL -lGLU -lglfw3 -lX11 \
		-lXxf86vm -lXrandr -lpthread -lXi -ldl -lXinerama -lXcursor

Application.o: src/Application.cpp
		g++ -std=c++11 -c src/Application.cpp

clean: 
		rm Application.o Application.exec