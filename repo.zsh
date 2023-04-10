#!/bin/zsh

# 引数を解析する関数
function parse_args() {
    while [[ $# -gt 0 ]]; do
        case $1 in
            -a|--add)
            add_current_directory=1
            shift
            ;;
            *)
            echo "Unknown option: $1"
            exit 1
            ;;
        esac
        shift
    done
}

# 引数を解析
parse_args "$@"

# カレントディレクトリを追加する場合
if [[ $add_current_directory -eq 1 ]]; then
    current_directory=$(pwd)
    echo "Adding current directory to repo_list.txt: $current_directory"
    echo $current_directory >> ~/.zsh_scripts/repo_list.txt
    exit 0
fi

# 登録されたディレクトリ一覧を表示する
if [[ -f ~/.zsh_scripts/repo_list.txt ]]; then
    selected_directory=$(cat ~/.zsh_scripts/repo_list.txt | peco --prompt "Select a directory: ")
    if [[ -n $selected_directory ]]; then
        echo "cd \"$selected_directory\""
    else
        echo "No directory selected."
    fi
else
    echo "No registered directories found. Please add directories to ~/.zsh_scripts/repo_list.txt"
fi