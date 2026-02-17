# Hydra

![image](https://upload.wikimedia.org/wikipedia/commons/d/da/Gustave_Moreau_-_Hercules_and_the_Lernaean_Hydra_-_1964.231_-_Art_Institute_of_Chicago.jpg)

## Table of content

- [Requirement](https://github.com/MikeHorn-git/Hydra#requirement)
- [Installation](https://github.com/MikeHorn-git/Champs-Elysees#installation)
  - [Uv](https://github.com/MikeHorn-git/Hydra#uv)
  - [Pip](https://github.com/MikeHorn-git/Hydra#pip)
  - [Nix](https://github.com/MikeHorn-git/Hydra#nix)
- [Usage](https://github.com/MikeHorn-git/Hydra#usage)

## Requirement

- [Tshark](https://www.wireshark.org/docs/man-pages/tshark.html)

### Arch

```bash
sudo pacman -S wireshark-cli
```

### Debian

```bash
sudo apt-get install tshark
```

## Installation

### Uv

```bash
git clone https://github.com/MikeHorn-git/Hydra.git
cd Hydra/
uv sync
```

### Pip

```bash
git clone https://github.com/MikeHorn-git/Hydra.git
cd Hydra/
pip install .
```

### Nix

```bash
git clone https://github.com/MikeHorn-git/Hydra.git
cd Hydra/
devenv shell
```

## Usage

```bash
usage: PsqlHunter.py [-h] [--csv] [--json] [--output OUTPUT] pcap

Hunt sql commands in pcap.

positional arguments:
  pcap             Path to the pcap file or folder containing pcap files

options:
  -h, --help       show this help message and exit
  --csv            Export results to CSV
  --json           Export results to JSON
  --output OUTPUT  Path to the output folder
```
