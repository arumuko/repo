# repo
# Repo Command

This repository contains a custom Zsh script named `repo.zsh` that allows you to list and change directories from a pre-defined list of directories stored in a `repo_list.txt` file. It also supports adding the current directory to the list of directories.

## Prerequisites

1. Make sure you have Zsh installed and set as your default shell.
2. Install `peco` using the following command:

```bash
brew install peco
```

## Installation

1. Clone this repository to your local machine:

```bash
git clone https://github.com/arumuko/repo.git
```

2. Move the `repo.zsh` file to a directory in your `PATH` environment variable, for example, `~/scripts`:

```bash
mkdir -p ~/scripts
mv path/to/repo.zsh ~/scripts/repo.zsh
chmod +x ~/scripts/repo.zsh
```

3. Add the following line to your `.zshrc` file to include the script directory in the `PATH` environment variable:

```bash
export PATH="$HOME/scripts:$PATH"
```

4. Add the following alias to your `.zshrc` file:

```bash
alias repo='eval $(repo.zsh)'
```

5. Source your `.zshrc` file to apply the changes:

```bash
source ~/.zshrc
```

## Usage

- To list and change directories from the pre-defined list of directories, simply run the `repo` command. This will display the list of directories using `peco`, and you can select a directory to change to:

```bash
repo
```

- To add the current directory to the list of directories, use the `-a` option:

```bash
repo -a
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
