# ide.sh
IDE.sh is the BASH script, which creates tmux session with predefined layout to use it as console IDE.  

![IDE.sh example screenshot](./idesh)

## Installation

  - install tmux, for debian:
    ```bash
    sudo apt install tmux
    ```

  - create and go to directory for user's scripts if it doesn't exists:
    ```bash
    mkdir -p ~/scripts && cd ~/scripts
    ```
  - download script:
    ```bash
    curl -O https://raw.githubusercontent.com/serkosal/ide.sh/refs/heads/main/ide.sh
    ```
  - add script directory to the your PATH enviroment variable, example for BASH:
    ```bash
    echo 'export PATH=$PATH:~/scripts/' >> ~/.bashrc
    ```
  - apply changes for BASH:
    ```bash
    source ~/.bashrc
    ```

## Usage
run ide.sh by executing:
```bash
ide
```
