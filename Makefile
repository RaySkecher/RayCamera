CC = gcc
CFLAGS = -std=c99 -Wall -Wextra -O3 -march=native -ffast-math
TARGET = raytracer
SOURCE = raytracer.c

.PHONY: all clean gif

all: $(TARGET)
	./$(TARGET) 0.0 > frame1.ppm
	./$(TARGET) 1.0 > frame2.ppm
	./$(TARGET) 2.0 > frame3.ppm
	./$(TARGET) 3.0 > frame4.ppm
	./$(TARGET) 4.0 > frame5.ppm
	./$(TARGET) 5.0 > frame6.ppm
	./$(TARGET) 6.0 > frame7.ppm
	./$(TARGET) 7.0 > frame8.ppm
	./$(TARGET) 8.0 > frame9.ppm
	./$(TARGET) 9.0 > frame10.ppm
	./$(TARGET) 10.0 > frame11.ppm
	./$(TARGET) 11.0 > frame12.ppm
	./$(TARGET) 12.0 > frame13.ppm
	./$(TARGET) 13.0 > frame14.ppm
	./$(TARGET) 14.0 > frame15.ppm
	./$(TARGET) 15.0 > frame16.ppm
	./$(TARGET) 16.0 > frame17.ppm
	./$(TARGET) 17.0 > frame18.ppm
	./$(TARGET) 18.0 > frame19.ppm
	./$(TARGET) 19.0 > frame20.ppm
	./$(TARGET) 20.0 > frame21.ppm
	./$(TARGET) 21.0 > frame22.ppm
	./$(TARGET) 22.0 > frame23.ppm
	./$(TARGET) 23.0 > frame24.ppm
	./$(TARGET) 24.0 > frame25.ppm
	./$(TARGET) 25.0 > frame26.ppm
	./$(TARGET) 26.0 > frame27.ppm
	./$(TARGET) 27.0 > frame28.ppm
	./$(TARGET) 28.0 > frame29.ppm
	./$(TARGET) 29.0 > frame30.ppm
	./$(TARGET) 30.0 > frame31.ppm
	./$(TARGET) 31.0 > frame32.ppm
	./$(TARGET) 32.0 > frame33.ppm
	./$(TARGET) 33.0 > frame34.ppm
	./$(TARGET) 34.0 > frame35.ppm
	./$(TARGET) 35.0 > frame36.ppm
	./$(TARGET) 36.0 > frame37.ppm
	./$(TARGET) 37.0 > frame38.ppm
	./$(TARGET) 38.0 > frame39.ppm
	./$(TARGET) 39.0 > frame40.ppm
	./$(TARGET) 40.0 > frame41.ppm
	./$(TARGET) 41.0 > frame42.ppm
	./$(TARGET) 42.0 > frame43.ppm
	./$(TARGET) 43.0 > frame44.ppm
	./$(TARGET) 44.0 > frame45.ppm
	./$(TARGET) 45.0 > frame46.ppm
	./$(TARGET) 46.0 > frame47.ppm
	./$(TARGET) 47.0 > frame48.ppm
	./$(TARGET) 48.0 > frame49.ppm
	./$(TARGET) 49.0 > frame50.ppm
	./$(TARGET) 50.0 > frame51.ppm
	./$(TARGET) 51.0 > frame52.ppm
	./$(TARGET) 52.0 > frame53.ppm
	./$(TARGET) 53.0 > frame54.ppm
	./$(TARGET) 54.0 > frame55.ppm
	./$(TARGET) 55.0 > frame56.ppm
	./$(TARGET) 56.0 > frame57.ppm
	./$(TARGET) 57.0 > frame58.ppm
	./$(TARGET) 58.0 > frame59.ppm
	./$(TARGET) 59.0 > frame60.ppm

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCE) -lm

gif: all
	convert -delay 50 frame1.ppm frame2.ppm frame3.ppm frame4.ppm frame5.ppm frame6.ppm frame7.ppm frame8.ppm frame9.ppm frame10.ppm frame11.ppm frame12.ppm frame13.ppm frame14.ppm frame15.ppm frame16.ppm frame17.ppm frame18.ppm frame19.ppm frame20.ppm frame21.ppm frame22.ppm frame23.ppm frame24.ppm frame25.ppm frame26.ppm frame27.ppm frame28.ppm frame29.ppm frame30.ppm -loop 0 animation.gif
clean:
	rm -f $(TARGET) frame1.ppm frame2.ppm frame3.ppm frame4.ppm frame5.ppm frame6.ppm frame7.ppm frame8.ppm frame9.ppm frame10.ppm frame11.ppm frame12.ppm frame13.ppm frame14.ppm frame15.ppm frame16.ppm frame17.ppm frame18.ppm frame19.ppm frame20.ppm animation.gif