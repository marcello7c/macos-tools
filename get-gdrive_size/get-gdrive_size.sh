GD="$HOME/Library/CloudStorage/GoogleDrive-user@gmail.com/My Drive"
find "$GD/CHANGE-THIS-TO-FOLDER_NAME" -type f -print0 \
  | xargs -0 stat -f '%z' \
  | awk '{s+=$1} END {printf "%.2f GB (%d bytes)\n", s/1000000000, s}'