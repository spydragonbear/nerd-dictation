#!/bin/bash

# --- Configuration: Please set these paths correctly ---
# The directory where you compiled xdotool (where libxdo.so.3 is)
XDOTOOL_DIR="/home/zbook/Music/nerd-dictation/xdotool"

# The directory where you put your local xdotool executable
NERD_DICTATION_BIN_DIR="$HOME/.config/nerd-dictation/bin"

# The full path to the Python interpreter in your virtual environment
VENV_PYTHON="/home/zbook/Music/nerd-dictation/venv/bin/python3.10"

# The full path to the nerd-dictation script
NERD_DICTATION_SCRIPT="/home/zbook/Music/nerd-dictation/nerd-dictation"
# --- End of Configuration ---

# Add the local bin directory to the front of the PATH
export PATH="$NERD_DICTATION_BIN_DIR:$PATH"

# Add the directory containing libxdo.so.3 to the library path
export LD_LIBRARY_PATH="$XDOTOOL_DIR:$LD_LIBRARY_PATH"

# Now, execute the main Python script, passing along whatever
# arguments this wrapper script received (like 'begin' or 'end').
$VENV_PYTHON $NERD_DICTATION_SCRIPT "$@"