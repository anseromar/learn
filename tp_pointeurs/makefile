TARGET=prog
LIBS=
CC=gcc
CFLAGS=-g -Wall
OBJECTS= $(patsubst %.c, %.o, $(wildcard source/*.c))
HEADERS= $(wildcard source/*.h)
.PRECIOUS:	$(TARGET) $(OBJECTS)

.PHONY:	default all clean

default:	$(TARGET)
all:	default

%.o: %.c $(HEADERS)
		$(CC) $(CFLAGS) -c $< -o $@


$(TARGET):	$(OBJECTS)
		$(CC) $(OBJECTS) -Wall $(LIBS) -o $@

clean:
		@ echo Cleaning...
		-rm -f source/*.o
		-rm -f $(TARGET)
