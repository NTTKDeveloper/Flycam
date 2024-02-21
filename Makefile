PROGRAMNAME = Flycam

CC = gcc 
CFLAGS = -Wall 
LDFLAGS = -lwiringPi
SRCDIR = ./src
OBJDIR = ./obj
BINDIR = ./bin


run:
	$(CC) $(CFLAGS) $(SRCDIR)/*.c -o $(BINDIR)/$(PROGRAMNAME) $(LDFLAGS)
	$(BINDIR)/$(PROGRAMNAME)

clean:
	rm -rf $(BINDIR)/$(PROGRAMNAME)
