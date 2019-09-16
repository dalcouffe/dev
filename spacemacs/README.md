# How to use the OSX clipboard

On the host there needs to be a plist file that allows `pbcopy` to be run remotely. Copy the `files/pbcopy.plist` file to `~/Library/LaunchAgents/pbcopy.plist` and then execute `launchctl load ~/Library/LaunchAgents/pbcopy.plist`.
