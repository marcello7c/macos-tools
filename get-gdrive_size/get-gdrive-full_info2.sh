GOOGLE_USER="user@gmail.com"    # CHANGE TO YOUR USERNAME
FOLDER_PATH="root-folder/sub-folder"    # LEAVE My Drive/ AND EVERYTHING BEFORE OUT

GD="$HOME/Library/CloudStorage/GoogleDrive-${GOOGLE_USER}/My Drive"
TARGET="$GD/$FOLDER_PATH"

find "$TARGET" -type f -print0 \
  | xargs -0 stat -f '%z' \
  | awk '{s+=$1} END {printf "%.2f GB (%d bytes)\n", s/1073741824, s}'

echo "Files:   $(find "$TARGET" -type f | wc -l | tr -d ' ')"
echo "Folders: $(find "$TARGET" -type d | wc -l | tr -d ' ')"