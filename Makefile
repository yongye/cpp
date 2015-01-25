# Makefile ( C++11 needed )

CXX = g++ -m64
PG = Tetris_Game
SOURCE = Tetris_Game.cpp
OBJECTS = Tetris_Game.o
CXXFLAGS = -std=c++11 -s -Wall -O3
LDLIBS = -l pthread

${PG}: ${OBJECTS}
	${CXX} ${CXXFLAGS} ${LDLIBS} -o ${PG} ${OBJECTS}
	rm -f ${OBJECTS}

${OBJECTS}: ${SOURCE}
	${CXX} ${CXXFLAGS} -c ${SOURCE}

clean:
	rm -f ${PG} ${OBJECTS}
