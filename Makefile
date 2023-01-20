CC = g++

LIBS = -lallegro -lallegro_font -lallegro_primitives -lallegro_ttf -lallegro_audio -lallegro_acodec hitbox.o fonts.o sounds.o paddle.o ball.o pong.o middle_line.o

main: paddle.o ball.o middle_line.o pong.o fonts.o hitbox.o sounds.o settings.h main.c
	$(CC) main.c -o main $(LIBS)

paddle.o: paddle.h paddle.c
	$(CC) -c paddle.c

ball.o: ball.h ball.c
	$(CC) -c ball.c

middle_line.o: middle_line.h middle_line.c
	$(CC) -c middle_line.c

pong.o: pong.h pong.c
	$(CC) -c pong.c

fonts.o: fonts.h fonts.o
	$(CC) -c fonts.c

hitbox.o: hitbox.h hitbox.o
	$(CC) -c hitbox.c

sounds.o: sounds.h sounds.o
	$(CC) -c sounds.c

.PHONY:
clean:
	$(RM) *.o main