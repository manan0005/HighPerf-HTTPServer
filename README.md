# High-Performance Multithreaded HTTP Server

## Overview
* Developed a custom web server utilizing a Thread Pool pattern, POSIX mutexes, and asynchronous I/O to efficiently handle thousands of concurrent client connections.
* Implemented a thread-safe LRU (Least Recently Used) cache mechanism to serve static assets, minimizing disk I/O operations and significantly reducing request latency.

## Build and Run Instructions
This project uses a standard Makefile for compilation. Ensure `g++` is installed on your system.

```bash
# Compile the project
make

# Run the server
./http_server