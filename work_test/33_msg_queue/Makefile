CXX=g++

CXXFLAGS 	= -O3 -Wall --std=c++11 -I./ -I/usr/include/ -Wfatal-errors
LDFLAGS		= -L./ -L/usr/local/lib -L/usr/lib -lpthread

SRC1 = recv_msg.c
SRC2 = send_msg.c

LIB ?= ${LDFLAGS}

BIN1 = recv_msg
BIN2 = send_msg

all:
	${CXX} ${CXXFLAGS} -o ${BIN1}  ${SRC1} ${LIB}
	${CXX} ${CXXFLAGS} -o ${BIN2}  ${SRC2} ${LIB}
	@echo '^_^ ^_^ ^_^ ^_^ ^_^ ^_^ OK ^_^ ^_^ ^_^ ^_^ ^_^ ^_^'
clean:
	rm -f ${BIN1} ${BIN2}
	rm -f *.o

.PHONY:
	all clean install uninstall
	
