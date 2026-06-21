CC=g++
CFLAGS= -g -Wall

all: http_server

http_server: proxy_server_with_cache.cpp proxy_parse.cpp
	$(CC) $(CFLAGS) -o proxy_parse.o -c proxy_parse.cpp -lpthread
	$(CC) $(CFLAGS) -o proxy.o -c proxy_server_with_cache.cpp -lpthread
	$(CC) $(CFLAGS) -o http_server proxy_parse.o proxy.o -lpthread

clean:
	rm -f http_server *.o