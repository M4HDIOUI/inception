# Inception

Inception is a project from 42 that involves setting up a containerized architecture using Docker and Docker Compose. The goal is to deploy multiple services (NGINX, WordPress, MariaDB) in separate containers while following best containerization practices.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Features](#features)
- [Troubleshooting](#troubleshooting)
- [Author](#author)

## Prerequisites
Before starting, make sure you have the following tools installed:
- Docker
- Docker Compose
- Make (optional but recommended for automating commands)

## Installation
1. Clone this repository:
   ```sh
   git clone https://github.com/M4HDIOUI/inception.git
   cd inception
   ```
2. Build and launch the containers:
   ```sh
   make
   ```
   or if `make` is not installed:
   ```sh
   docker-compose up --build -d
   ```

## Project Structure
```
.
├── srcs
│   ├── docker-compose.yml
│   ├── requirements
│   │   ├── nginx
│   │   │   ├── Dockerfile
│   │   │   ├── conf
│   │   │   ├── tools
│   │   ├── wordpress
│   │   │   ├── Dockerfile
│   │   │   ├── conf
│   │   │   ├── tools
│   │   ├── mariadb
│   │   │   ├── Dockerfile
│   │   │   ├── conf
│   │   │   ├── tools
│   ├── .env
├── Makefile
├── README.md
```

## Usage
- **Start services**: `make up`
- **Stop services**: `make down`
- **View logs**: `make logs`
- **Rebuild containers**: `make rebuild`

## Features
- Containerization with Docker and Docker Compose
- Reverse proxy with NGINX
- Hosting a WordPress site
- MariaDB database
- Secure configuration using `.env`
- Persistent data storage

## Troubleshooting
- Ensure Docker is running
- Check container logs with `docker-compose logs -f`
- Make sure ports are not already in use

## Author
Project created by **Omar Mahdioui** as part of the 42 curriculum.


