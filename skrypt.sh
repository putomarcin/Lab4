elif [[ "$1" == "--init" ]]; then
    REPO_URL="https://github.com/putomarcin/Lab4.git"
    git clone "$REPO_URL"
    REPO_NAME=$(basename "$REPO_URL" .git)
    export PATH="$PWD/$REPO_NAME:$PATH"
    echo "Dodano $PWD/$REPO_NAME do PATH"


