CC      = @g++ -Wall -ansi
CCLINK  =  -FFrameworks -framework SDL_mixer -framework SDL -framework OpenGL -framework GLUT -framework Cocoa
CCFLAGS = -I Frameworks/SDL_mixer.framework/Headers -I Frameworks/SDL.framework/Headers -c

all: dod

dod: creature.o dod.o dodgame.o dungeon.o enhanced.o object.o oslink.o parser.o player.o sched.o viewer.o SDLMain.o
	$(CC) $(CCLINK) -o dod creature.o dod.o dodgame.o dungeon.o enhanced.o object.o oslink.o parser.o player.o sched.o viewer.o SDLMain.o

creature.o: creature.cpp creature.h
	$(CC) $(CCFLAGS) creature.cpp

dod.o: dod.cpp dod.h
	$(CC) $(CCFLAGS) dod.cpp

dodgame.o: dodgame.cpp dodgame.h
	$(CC) $(CCFLAGS) dodgame.cpp

dungeon.o: dungeon.cpp dungeon.h
	$(CC) $(CCFLAGS) dungeon.cpp

enhanced.o: enhanced.cpp enhanced.h
	$(CC) $(CCFLAGS) enhanced.cpp

object.o: object.cpp object.h
	$(CC) $(CCFLAGS) object.cpp

oslink.o: oslink.cpp oslink.h
	$(CC) $(CCFLAGS) oslink.cpp

parser.o: parser.cpp parser.h
	$(CC) $(CCFLAGS) parser.cpp

player.o: player.cpp player.h
	$(CC) $(CCFLAGS) player.cpp

sched.o: sched.cpp sched.h
	$(CC) $(CCFLAGS) sched.cpp

viewer.o: viewer.cpp viewer.h
	$(CC) $(CCFLAGS) viewer.cpp

SDLMain.o: SDLMain.m
	$(CC) $(CCFLAGS) SDLMain.m

clean:
	@echo -n Cleaning...
	@rm -f *.o;rm -f dod
	@echo Done
