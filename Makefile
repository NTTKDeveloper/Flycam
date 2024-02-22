PROGRAMNAME = Flycam

CC = g++
CFLAGS =
LDFLAGS = -pthread
LIBFLAGS = -lMPU6050 -lwiringPi 
SRCDIR = ./src
BINDIR = ./bin

run:
	$(CC) $(CFLAGS) $(SRCDIR)/*.cpp -o $(BINDIR)/$(PROGRAMNAME) $(LIBFLAGS) $(LDFLAGS) 
	$(BINDIR)/$(PROGRAMNAME)

clean:
	rm -rf $(BINDIR)/$(PROGRAMNAME)
