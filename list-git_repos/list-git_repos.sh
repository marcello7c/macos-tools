SEARCH_DIR="/Users/marcello.macnack/1-idey/2-GIT-COR/"

for dir in $(find "$SEARCH_DIR" -mindepth 1 -maxdepth 4 -type d ! -name ".git" ! -path "*/.git/*"); do
    if [ -d "$dir/.git" ]; then
      echo "✓ GIT  $dir"
    else
      echo "  NO   $dir"
    fi
  done