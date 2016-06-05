#!/bin/bash

mv iTermSettings.plist com.googlecode.iterm2.plist
cp com.googlecode.iterm2.plist ~/Library/Preferences
defaults read com.googlecode.iterm2 > /dev/null
