!/bin/bash

FSTAB_LINE=".host:/	/mnt/hgfs	fuse.vmhgfs-fuse	auto,allow_other	0	0"
FSTAB_FILE="/etc/fstab"

# Check if the line already exists
if ! grep -Fxq "$FSTAB_LINE" "$FSTAB_FILE"; then
    echo "Adding line to /etc/fstab..."
    echo "$FSTAB_LINE" | sudo tee -a "$FSTAB_FILE" > /dev/null
    echo "Line added successfully."
else
    echo "Line already exists in /etc/fstab."
fi

