#!/bin/bash

mv iTermSettings.plist com.googlecode.iterm2.plist
cp com.googlecode.iterm2.plist ~/Library/Preferences
defaults read com.googlecode.iterm2 > /dev/null

mv ~/.bash_profile ~/.bash_profile.bak 2>/dev/null
cp .bash_profile ~/

