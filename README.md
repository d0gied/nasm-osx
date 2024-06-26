# NASM OSX

## Установка

1. Установить Docker

Homebrew:
```bash
brew install docker
```
Или  Docker Desktop:
https://www.docker.com/products/docker-desktop/

2. Склонировать репозиторий
```bash
git clone https:://github.com/d0gied/nasm-osx.git
```

3. Перейти в папку с проектом
```bash
cd nasm-osx
```

4. Загрузить образ
```bash
docker compose pull
```

## Использование

Все действия выполняются внутри контейнера. Контейнер подключает `./src` и все изменения в этой папке синхронизируются.

1. Запустить образ
```bash
docker compose run -it --rm nasm-osx
```

2. Скомпилировать файл
```bash
nasm -f elf32 main.asm -o main.o
```

3. Скомпоновать файл
```bash
gcc -no-pie -w main.o macro.c -o main
```

4. Запустить файл
```bash
./main
```

Альтернативно можно использовать `build.sh` (внутри контейнера):
```bash
./build.sh main.asm 
```