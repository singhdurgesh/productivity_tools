#!/bin/bash

# Get a list of all the sound files available in macOS by default
# sound_files=$(find /System/Library/Sounds -name "*.aiff")

# # Loop through each sound file
# for sound_file in $sound_files; do
#   # Print the sound file name
#   echo "Playing sound: $sound_file"

#   # Play the sound file
#   afplay "$sound_file"

#   # Pause for 10 seconds before moving to the next sound file
#   sleep 5
# done

#!/bin/bash

# Get a list of all the sound files available in macOS by default
sound_files=$(find /System/Library/Sounds -name "*.aiff")

# Count the number of sound files
num_sound_files=$(echo "$sound_files" | wc -l)

# Print the number of sound files
echo "Number of sound files: $num_sound_files"

# List the sound files with line numbers
echo "$sound_files" | nl

# Loop through each sound file
for sound_file in $sound_files; do
  # Print the sound file name
  echo "Playing sound: $sound_file"

  # Play the sound file
  afplay "$sound_file"

  # Pause for 10 seconds before
  # Pause for 10 seconds before moving to the next sound file
  sleep 3
done
