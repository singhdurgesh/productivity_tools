#!/bin/bash
# [1] 58697
# Set the start time
start_time=$(date +%s)

# Set the notification intervals (45 minutes and 20 minutes)
notification_interval_1=45*60 # 45 minutes
notification_interval_2=25*60 # 25 minutes

# Create variables to track the time when each notification was last shown
last_notification_1=$start_time
last_notification_2=$start_time

# Create a loop that will run indefinitely
while true; do
  # Calculate the current time
  current_time=$(date +%s)

  # Skip the Loop if the current time is less than 10 AM and after 7 PM
  if [[ $(date +%H) -lt 10 ]] || [[ $(date +%H) -gt 19 ]]; then
    # Pause the loop for 5 seconds
    sleep 5
    continue
  fi

  # Check if the first notification interval has passed
  if [[ $(($current_time - $last_notification_1)) -ge $notification_interval_1 ]]; then
    # Show the first notification
    osascript -e 'display notification "Get up and walk around!" with title "Get Up" sound name "Glass"'

    # Update the time when the first notification was last shown
    last_notification_1=$current_time
  fi

  # Check if the second notification interval has passed
  if [[ $(($current_time - $last_notification_2)) -ge $notification_interval_2 ]]; then
    # Show the second notification
    osascript -e 'display notification "Look away from the screen!" with title "Look Away" sound name "Ping"'

    # Update the time when the second notification was last shown
    last_notification_2=$current_time
  fi

  # Pause the loop for 5 seconds
  sleep 5
done
