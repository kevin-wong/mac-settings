## Settings for mac.

- [System Preferences](#system-preferences)
- [Launchpad](#launchpad)
- [Finder](#finder)
- [Downloads](#downloads)
  - [Witch](#witch)
  - [Moom](#moom)
  - [Fliqlo](#fliqlo)
  - [Day-O](#day-o)
  - [Brew](#brew)
  - [Git](#git)
  - [iTerm](#iterm)
  - [vim](#vim)
  - [Sublime Text](#sublime)

#### System Preferences
```
General > Appearance: Blue
        > Highlight color > Other > 2nd tab > RGB Sliders. R: 233 G: 219 B: 184
        > Sidebar icon size: Large
        > Show scrollbars: Always
        > check Ask to keep changes when closing documents
        > check Close windows when quitting an app
        > Recent items: None
```

```
Dock > Size: Max
     > uncheck Magnification
     > Minimize windows using: Scale effect
     > uncheck Double-click a window's title bar
     > uncheck Minimize windows into application icon
     > uncheck Animate opening applications
     > check Automatically hide and show the Dock
     > check indicators for open applications
```

```
Mission Control > uncheck Automatically rearrange Spaces based on most recent use
                > check When switching to an application, switch to a Space with open windows
                > uncheck Group windows by application
                > check Displays have separate Spaces
                > Display have separate Spaces
                > Dashboard: Off
```

```
Language & Region > First day of the week: Monday
       		  > Time format: 24-hour Time
```

```
Notifications > for all apps, uncheck Play sound for notifications
     	      > Messages > uncheck Show message preview
```

```
Displays > uncheck Automatically adjust brightness
         > uncheck Show mirroring options in the menu bar
```

```
Energy Saver > Battery Power > Turn display off after: Never
             > uncheck Put hard disks to sleep when possible
       	     > uncheck dim the display while on battery power
             > uncheck Power Nap
             > Power Adapter > Turn display off after: Never
             > check Prevent computer from sleeping automatically
             > uncheck Put hard disks to sleep when possible
             > check wake for Wi-Fi network access
             > check Enable Power Nap while plugged into power adapter
```

```
Keyboard > Keyboard > Key Repeat > Fastest
	 	    > Delay Until Repeat > Shortest
	 	    > uncheck Adjust keyboard brightness in low light
	 	    > Turn off when computer is not used for: Never

         > Shortcuts > uncheck everything, except Keyboard > move focus to next window
                     > App Shortcuts > add shortcut ⌘-ESC to all following menu titles: Toggle Full Screen
											Fullscreen
											Enter Full Screen
											Exit Full Screen
```

``` bash
Trackpad > Point & Click > check Look up & data detectors
         		 > check Secondary click (two fingers)
                         > check Tap to click
                         > Click: Lightest
                         > Tracking speed: Fastest
                         > check Silent clicking
                         > uncheck Force Click and haptic feedback
         > Scroll & Zoom > uncheck Scroll direction: natural
                         > check Zoom in or out
                         > uncheck Smart zoom
                         > check Rotate
         > More Gestures > check Swipe between pages (two fingers)
                         > check Swipe between full-screen apps (four fingers)
                         > check Notification Center
                         > check Mission Control (four fingers)
                         > check App Exposè (four fingers)
                         > uncheck Launchpad
                         > uncheck Show Desktop
```

```
Date & Time > Clock > uncheck Show date and time in menu bar
```

```
Accessibility > Display > check Increase contrast
	                > Display contrast: Normal
                        > Cursor size: one right of Normal
                        > check Shake mouse pointer to locate
              > Mouse & Trackpad > Double-click speed: two left of Fast
                                 > check Spring loading delay: two right of Short
                                 > uncheck Ignore built-in trackpad when mouse or wireless trackpad is present
                                 > Trackpad Options... > Scrolling speed: one left of Fast
                                                       > check Scrolling: with inertia
                                                       > check Enable dragging: three finger drag
```

<a name="launchpad"></a>
#### Launchpad - Change to use only 2 columns:
[![Screen](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Launchpad.tiff)](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Launchpad.tiff)

```
$ defaults write com.apple.dock springboard-columns -int 2;
$ defaults write com.apple.dock ResetLaunchPad -bool TRUE;
$ killall Dock
```

#### Finder
[![Screen](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Finder.tiff)](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Finder.tiff)
Preferences > General > New Finder windows show: Downloads
	    > Sidebar > check only the following: Applications
						  Documents
						  Downloads
						  Music
						  <Home Folder>
						  External disks
	    > Advanced > Show all filename extensions

Menu bar > View > Show only the following: Path bar
					   Status bar
					   Sidebar
					   Preview

#### Downloads

##### Witch
[![Screen](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Witch.tiff)](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Witch.tiff)

The conventional ⌘-TAB switches between apps, but skips over windows within those apps. <br/>
To go to a window, I can ⌘-TAB to the app, then launch Exposè by hitting F3 or swiping down on the trackpad with four fingers (System Preferences > Trackpad > More Gestures). <br />
Or I can preview Exposè while still in ⌘-TAB, by holding ⌘ and hitting 1 on an app.
I can avoid Exposè by hitting ⌘-~ (System Preferences > Keyboard > Shortcuts > Move focus to next window) to quickly loop through all the windows in an app. But I can't see all the windows at once, so if I have more than 3 windows, this quickly becomes cumbersome.

<a href="http://manytricks.com/witch/">Witch</a> lets me use ⌘-TAB to cycle between windows.

Run WitchConfigure.sh <br />
System Preferences > Click on Witch to register .plist

##### Moom
[![Screen](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Moom.tiff)](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Moom.tiff)

<a href="https://manytricks.com/moom/">Moom</a> allows quick window resizing. No more dragging corners.


##### Fliqlo
[![Screen](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Fliqlo.tiff)](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Fliqlo.tiff)

<a href="http://fliqlo.com">Fliqlo</a> screensaver.

System Preferences > Desktop & Screensaver > Screen Saver Options > 24 hours


##### Day-O
[![Screen](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Day-O.tiff)](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/Day-O.tiff)

<a href="http://shauninman.com/archive/2011/10/20/day_o_mac_menu_bar_clock">Day-O</a> calendar dropdown.

Click on menu bar icon > Preferences > Date & Time Format: " h:mm a  E"

#### Brew
Install <a href="http://brew.sh">brew</a>.

#### Git
Install git:

`brew install git`

Put `.gitignore` in home directory.

Configure git with the following commands:

```
$ git config --global user.name <name>
$ git config --global user.email <email>
$ git config --global core.editor vim
$ git config --global core.excludesfile ~/.gitignore_global
$ git config --global credential.helper osxkeychain
$ git config --global push.default simple
$ git config --global color.ui auto
$ git config --global color.branch.current yellow reverse
$ git config --global color.branch.local yellow
$ git config --global color.branch.remote green
$ git config --global color.diff.meta yellow bold
$ git config --global color.diff.frag magenta bold
$ git config --global color.diff.old red bold
$ git config --global color.diff.new green bold
$ git config --global color.status.added yellow
$ git config --global color.status.changed red
$ git config --global color.status.untracked red
```

##### iTerm
[![Screen](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/iTerm.tiff)](https://raw.githubusercontent.com/kevin-wong/mac-settings/master/images/iTerm.tiff)

Download <a href="https://www.iterm2.com">iTerm</a>. <br />
Download <a href="https://github.com/adobe-fonts/source-code-pro/releases/tag/2.010R-ro/1.030R-it">Source Code Pro Light</a>.

Put `.bash_profile`, `.bash_prompt`, `.bash_aliases`, and `.bash_exports` in home directory.

```
Preferences > Appearance > check Dimming affects only text, not background
                         > Dimming amount: ~90%
                         > check Dim inactive split panes
                         > check Dim background windows
                         > uncheck Show tab close buttons
            > Profiles > Colors > Color Presets... > Import > SolarizedDark.itermcolors
                                                            > Click SolarizedDark
                       > Text > Cursor: Underline
                              > uncheck Blinking cursor
                       > Font > 14pt Source Code Pro Light
                       > Window > Transparency: ~5%
                                > Columns: 135
                                > Rows: 33
                       > Keys > Add the following with action Send Hex Code:
                                ⌘ - DELETE: 0x15         # delete all characters to left of cursor
                                ⌥ - DELETE: 0x1b 0x08    # delete one word to left of cursor
                                ⌘ - ←     : 0x01         # go to line start
                                ⌘ - →     : 0x05         # go to line end
                                ⌥ - ←     : 0x1b 0x62    # move one word forward
                                ⌥ - →     : 0x1b 0x66    # move one word back
                                ⌘ - z     : 0x1f         # undo
```

#### vim
Follow <a href="http://ethanschoonover.com/solarized/vim-colors-solarized">these</a> directions.

Put `.vimrc` in home directory.


<a name="sublime"></a>
#### Sublime Text
Download <a href="https://www.sublimetext.com/3">Sublime Text</a>.

Add `subl` as a terminal command to open sublime:

```
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/ /usr/local/bin/subl
```

Preferences > Settings - User > Paste the following:

```
{
  "_comment": "Find all fields in: Preferences > Settings - Default",

  "color_scheme": "Packages/Color Scheme - Default/Solarized (Dark).tmTheme",

  "font_face": "Source Code Pro Light",
  "font_size": 14,

  "bold_folder_labels": true,
  "highlight_modified_tabs": true,
  "indent_to_bracket": true,

  "tab_size": 2,
  "trim_trailing_white_space_on_save": true,
  "word_wrap": false,

  "rulers":
  [
    80
  ],
}
```

Preferences > Key Bindings - User > Paste the following:
```
[
  {"_comment": "Find all fields in: Preferences > Key Bindings - Default"},

  {
    "keys": ["super+n"],
    "command": "new_file",
    "_comment": "open a new file in another tab within the same window"
  },

  {
    "keys": ["ctrl+tab"],
    "command": "next_view",
    "_comment": "move forward one tab. same as Safari."
  },

  {
    "keys": ["ctrl+shift+tab"],
    "command": "prev_view",
    "_comment": "move backward one tab. same as Safari."
  },

  {
    "keys": ["super+shift+forward_slash"],
    "command": "toggle_comment",
    "args": {
      "block": true
    },
    "_comment": "block comment"
  }
]
```