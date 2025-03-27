.PHONY: all install-docker git-submodule

all: install-docker git-submodule

# Docker installieren
install-docker:
	@if ! command -v docker &> /dev/null; then \
		echo "Docker nicht gefunden. Installation wird gestartet..."; \
		sudo apt update; \
		sudo apt install -y gnome-terminal docker.io \
	else \
		echo "Docker ist bereits installiert."; \
	fi
	sudo usermod -aG docker $USER

# Git-Submodule klonen
git-submodule:
	git submodule update --init --recursive
