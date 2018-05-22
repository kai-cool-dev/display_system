# Installs display_system
CURRENTD="$(pwd)"
PROFILE="/etc/profile.d/"
BIN="/usr/bin/"

if [ ! -f "$CURRENTD/display_system" ]
then
  echo "display_system is missing. WTF!?"
  exit 0;
fi

if [ ! -d "$PROFILE" ]
then
  echo "are you even using linux bro?"
  exit 0;
fi

cp "$CURRENTD/display_system" "$BIN/display_system"
ln -s "$CURRENTD/display_system" "$PROFILE/display_system"
