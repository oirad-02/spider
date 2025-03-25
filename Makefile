.PHONY: all install update docker git-submodule

all: install update docker git-submodule

install:
	sudo apt update
	sudo apt install -y gnome-terminal

update:
	sudo apt-get update

docker:
	sudo apt-get install -y ./docker-desktop-amd64.deb

git-submodule:
	git submodule update --init --recursive
