# MacBook Battery Alert

A simple macOS automation script that helps optimize your MacBook battery health by sending notifications when:
- Battery reaches 60% or below (reminder to plug in the charger)
- Battery reaches 80% while charging (reminder to unplug the charger)

This follows the best practices for lithium-ion battery longevity by maintaining the battery level within the optimal 60-80% range.

*Tested and working on macOS Sequoia (15.0).*

## Installation

1. Clone this repository or download the files:
   ```
   git clone https://github.com/blamejen/macbook-battery-alert.git
   cd macbook-battery-alert
   ```

## Features

- Automatic battery level monitoring (checks every 5 minutes)
- Desktop notifications when battery reaches important thresholds
- Logging of all events and battery status for troubleshooting
- Runs in the background with minimal system resource usage
- Starts automatically when you log in

2. Copy the files to their proper locations:
   ```
   cp BatteryAlert.scpt ~/
   mkdir -p ~/Library/LaunchAgents
   cp com.user.BatteryAlert.plist ~/Library/LaunchAgents/
   ```

3. **Important**: Edit the plist file to replace "YourUsername" with your actual macOS username:
   ```
   nano ~/Library/LaunchAgents/com.user.BatteryAlert.plist
   ```
   Find these lines:
   ```
   <string>/usr/bin/osascript</string>
   <string>/Users/YourUsername/BatteryAlert.scpt</string>
   ```
   And replace "YourUsername" with your actual username.

4. Set the proper permissions:
   ```
   chmod 644 ~/Library/LaunchAgents/com.user.BatteryAlert.plist
   chmod 644 ~/BatteryAlert.scpt
   ```

5. Create the logs directory:
   ```
   mkdir -p ~/Library/Logs
   touch ~/Library/Logs/BatteryAlert.log
   ```

6. Start the service:
   ```
   launchctl load ~/Library/LaunchAgents/com.user.BatteryAlert.plist
   launchctl start com.user.BatteryAlert
   ```

## Verification

To verify that the service is running:
```
launchctl list | grep com.user.BatteryAlert
```

To check the logs:
```
cat ~/Library/Logs/BatteryAlert.log
```

## Customization

You can modify the thresholds by editing the BatteryAlert.scpt file:
- Open the script in Script Editor
- Find the conditions that check for 60% and 80% levels
- Change the values to your preferred thresholds
- Save the changes

## Uninstallation

To temporarily disable the service:
```
launchctl unload ~/Library/LaunchAgents/com.user.BatteryAlert.plist
```

To completely remove the service:
```
launchctl unload ~/Library/LaunchAgents/com.user.BatteryAlert.plist
rm ~/BatteryAlert.scpt
rm ~/Library/LaunchAgents/com.user.BatteryAlert.plist
rm ~/Library/Logs/batteryState.txt
```

## Troubleshooting

- If notifications don't appear, make sure notifications are enabled in System Preferences > Notifications
- If the script isn't running, check that you replaced "YourUsername" in the plist file with your actual username
- If you get permission errors, verify that the files have the correct permissions
- Try resetting the background task manager:
  ```
  sfltool resetbtm
  ```
- Check the logs for any errors:
  ```
  cat ~/Library/Logs/BatteryAlert.log
  ```
## Screenshots

![Battery at 60% notification](screenshots/60.png)

*Notification when battery drops to 60% - reminder to plug in*

![Battery at 80% notification](screenshots/80.png)

*Notification when battery reaches 80% while charging - reminder to unplug*

## Why Maintain Battery Between 60-80%?

Lithium-ion batteries (used in MacBooks) last longer when:
- They aren't regularly charged to 100% (causes stress at high voltage)
- They aren't regularly discharged below 20% (causes stress at low voltage)
- They're kept within the 20-80% range for daily use, with 60-80% being optimal

This script helps implement these best practices automatically, potentially extending your MacBook battery's lifespan.

## License

[MIT License](LICENSE)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.