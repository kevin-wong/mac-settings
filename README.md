I am paranoid.

My machine may die, backups may not work, and I may not recall my settings.
I wrote this page so I have another storage layer.

I have assumed I will be struck by lightning, my memory failing, my days ahead shortening.
This page is exhaustive, and is intended to be this way so that when I'm bedridden,
confused, and holding on to dear life, I can still follow these instructions.

You, smart user, should use this like a cookbook. Pick what you like, adapt the recipe
to your preferences, and make the dish yours.

OS: Catalina, 10.15.2 <br/>
Laptop is with touchbar.

## Table of Contents
### Developer
- [iTerm](#iTerm)
- [Homebrew](#Homebrew)
- [bash](#bash)
- [git](#git)
- [less](#less)
- [vim](#vim)
- [Sublime Text](#Sublime-Text)

### System
- [System Preferences](#System-Preferences)
- [Launchpad](#Launchpad)
- [Finder](#Finder)
- [Day-O](#Day-O)
- [MenuMeters](#MenuMeters)
- [Witch](#Witch)
- [Moom](#Moom)

<br/>

#### iTerm
Solarized colorscheme. Colors responsive to git. Mac-inspired key bindings.

![Solarized iTerm](../master/images/iTerm.gif)

The terminal above uses a combination of both iTerm and bash prompt colors.
The two can be configured separately, though for consistency I have set them both
to solarized dark.

These colors are [true colors](https://en.wikipedia.org/wiki/Color_depth#True_color_(24-bit)).
If you're not using iTerm, check that your terminal supports true colors by running
the [command at the end of this section](#check-true-colors). If the output is not
colored, then your terminal does not support true colors.

1. Download [iTerm](https://www.iterm2.com).
2. Download [Source Code Pro Light](https://github.com/adobe-fonts/source-code-pro/releases/tag/2.010R-ro/1.030R-it),
and add the OTF fonts to Font Book.
3. Set the prompt colors. Save existing paths, backup config files which will be overwritten,
put new config files in home directory:

```bash
grep "export PATH" ~/.bash_profile ~/.bashrc 2>/dev/null | awk -F ":" '{print $2}' >> .bash_exports
for config in ~/.{bash_profile,bashrc,inputrc}; do
  if [ -f $config ]; then
    mv $config ${config}_bak
  fi
done;
cp .bash_profile .bashrc .bash_prompt .bash_aliases .bash_functions .bash_exports .bash_readline_colors .inputrc ~/
```

4. Configure iTerm colors and key bindings from menu bar:

```
Preferences > General > check Confirm closing multiple sessions
            > Appearance > check Dimming affects only text, not background
                         > Dimming amount: ~10%
                         > check Dim inactive split panes
                         > check Dim background windows
                         > uncheck Show tab close buttons
            > Profiles > Colors > Color Presets... > Import > SolarizedDark.itermcolors
                                                            > Click SolarizedDark
                       > Terminal > check Unlimited Scrollback
                       > Text > Cursor: Vertical Bar
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
            > Pointer > check ⌥ - Click moves cursor
                      > check Focus follows mouse
                      > check Triple-click selects entire wrapped line
            > Advanced > Disable the Tip of the Day?: Yes
                       > Supress offer to silence bell when it rings to much: Yes
                       > Indicate the number of bells rung while inactive: No
```

<br/><br/>
NOTE: SolarizedDark (from this git repo) and Solarized Dark (comes with iTerm)
are not the same. Solarized Dark's highlight color was too similar to the background
color, so SolarizedDark has the highlight color slightly modified to increase the
contrast. This is the only difference.

NOTE: A word about how the bash prompt was colored. Setting the exact solarized
colors in the prompt requires 24-bit colors. Although `tput` has more readable color
selections:

```bash
tput setaf <number>
```

where `<number>` can be any integer from 0 to 255, but it is limited to 8-bit colors.
The solarized colors don't fall into those 256 colors, so at best `tput` can only
approximate them. The tput values found on the
[solarized site](http://ethanschoonover.com/solarized#The-Values), listed under XTERM,
are these approximations.

I'm using the 24-bit colors, and the only way to access 24-bit colors are through
the ANSI escape codes. They come in this format:

```bash
\033[<fg-or-bg>;<style>;<r>;<g>;<b>m
```

```
\033               escape character. \e and \x1b are also escape characters,
                   though if you're using bash 3 (the default on Mac),
                   \e doesn't work with `echo`. It still works with `printf` and
                   setting prompt colors.
                   I recommend updating bash (further down this page)
                   to fix this issue, because \e is the most readable
                   of the three.
                   I'm using \033 on this page so the reader doesn't have this
                   dependency, but my configuration files use \e.

[                  begins color sequence

<fg-or-bg>         toggles foreground or background. 38 is foreground. 48 is background

<style>            value between 0 and 4. sets bold, italics, underline.
                   2 adds no style, but lets the color through.
                   I recommend avoiding featuritis. Always use 2.

<r>, <g>, and <b>  red, green, and blue values, from 0 to 255

m                  signals this is a color sequence
```

So to set solarized yellow: 

```
\033[38;2;147;161;161m
```

To strip all formatting and colors: `\033[0m`. This should be appended at the end of
any colorized text.

When using escape codes to colorize the prompt, sandwich the codes between `\[` and `\]`
so the terminal counts the escape codes as output characters. Without them, when
a line gets full, instead of writing to the next line, new characters start
overwriting the existing line.

##### Working examples

Colorize prompt:

```bash
solarized_yellow="\033[38;2;181;137;0m"
color_reset="\033[0m"
user="\u"
dir="\w"

PS1="\[$solarized_yellow\]$user\[$color_reset\] "
PS1+="at "
PS1+="\[$solarized_yellow\]$dir\[$color_reset\] $ "
```

![check-true-colors-prompt](../master/images/check-true-colors-prompt.gif)

<a name="check-true-colors"></a>
Add colors to output using `echo`:

```bash
echo -e "\033[38;2;181;137;0mThis text is colored in solarized yellow.\033[0m"
```

![check-true-colors-echo](../master/images/check-true-colors-echo.gif)

<br/> 

#### Homebrew
Install [brew](http://brew.sh).

<br/>

#### bash
<br/>
Mac runs bash 3. Bash 5 is licensed under GPLv3, which Apple can't use.

Run `echo $BASH_VERSION`. You'll find a decade-old bash:
```
GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin15)
Copyright (C) 2007 Free Software Foundation, Inc.
```

Install bash 5. Add path to shell file. Change shell:
```bash
brew install bash
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash
```

Commands executed directly on the command line will run with bash 4, but scripts
may still specify bash 3 in the shebang `#!/bin/bash`. Make sure to use
`#!/usr/bin/env bash` instead, which runs the shell identified by `$SHELL`.

<br/>

#### git
Install git:

```bash
brew install git
```

Put `.gitignore` in home directory:

```bash
cp .gitignore ~/
```

Configure:

```bash
git config --global user.name <name>
git config --global user.email <email>
git config --global core.editor vim
git config --global core.excludesfile ~/.gitignore_global
git config --global credential.helper osxkeychain
git config --global push.default simple
git config --global color.ui auto
git config --global color.branch.current yellow reverse
git config --global color.branch.local yellow
git config --global color.branch.remote green
git config --global color.diff.meta yellow bold
git config --global color.diff.frag magenta bold
git config --global color.diff.old red bold
git config --global color.diff.new green bold
git config --global color.status.added yellow
git config --global color.status.changed red
git config --global color.status.untracked red
```

<br/>

#### less
Use key bindings so navigation is consistent with the vim's below.

Mac has disabled`lesskey`, which allows key binding on less. Use the version that does:

```bash
brew install less
```

Put .lesskey in home directory:

```bash
cp .lesskey ~/
```

Run lesskey, which will automatically read from .lesskey:

```bash
lesskey
```

<br/>

#### vim
Solarized colorscheme. Detailed status bar. Mouse click and scroll.
Sensible key bindings, such as:

```
w                  up one paragraph
shift-w            beginning of file
s                  down one paragraph
shift-s            end of file
shift-u            re-do to match undo (u)
```

NOTE: Mouse is enabled, so dragging to copy toggles visual mode. To copy,
hold down OPTION and drag over desired text.

![vim](../master/images/vim.gif)

[Download](https://github.com/altercation/vim-colors-solarized/tree/master/colors) Solarized for vim.

Follow the [manual installation](http://ethanschoonover.com/solarized/vim-colors-solarized#installation).

Put `.vimrc` in home directory:

```bash
cp .vimrc ~/
```

<br/>

#### Sublime Text
Solarized colorscheme. Key bindings.

1. Download [Sublime Text](https://www.sublimetext.com/3). <br/>
2. Add `subl` as a terminal command to open sublime:

```bash
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

3. Launch Sublime > Preferences > Settings > Paste the following in User settings:

```
{
  "_comment": "These fields override the defaults",
  "always_show_minimap_viewport": true,
  "animation_enabled": false,
  "auto_complete": true,
  "auto_complete_commit_on_tab": true,
  "auto_complete_cycle": true,
  "auto_complete_delay": 0,
  "auto_complete_with_fields": true,
  "bold_folder_labels": true,
  "caret_extra_bottom": 3,
  "caret_extra_top": 3,
  "caret_extra_width": 0,
  "caret_style": "solid",
  "color_scheme": "Packages/Color Scheme - Default/Solarized (Dark).tmTheme",
  "font_face": "Source Code Pro Light",
  "font_size": 15,
  "highlight_line": true,
  "highlight_modified_tabs": true,
  "indent_to_bracket": true,
  "open_files_in_new_window": false,
  "rulers":
  [
    80
  ],
  "show_encoding": true,
  "show_full_path": true,
  "tab_completion": false,
  "tab_size": 2,
  "theme": "Default.sublime-theme",
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true,
  "word_wrap": "false"
}

```

4. Launch Sublime > Preferences > Key Bindings > Paste the following in User settings:

```
[
  {"_comment": "These fields override the defaults"},

  {
    "keys": ["super+t"],
    "command": "new_file",
    "_comment": "open a new tab"
  },

  {
    "keys": ["super+n"],
    "command": "new_window",
    "_comment": "open a new window"
  },

  {
    "keys": ["ctrl+tab"],
    "command": "next_view",
    "_comment": "move forward one tab"
  },

  {
    "keys": ["ctrl+shift+tab"],
    "command": "prev_view",
    "_comment": "move backward one tab"
  },

  {
    "keys": ["super+shift+forward_slash"],
    "command": "toggle_comment",
    "args": {
      "block": true
    },
    "_comment": "block comment"
  },

  {
    "keys": ["super+r"],
    "command": "show_panel",
    "args": {
      "panel": "replace",
      "reverse": false
    },
    "_comment": "replace"
  },

  {
    "keys": ["super+option+up"],
    "command": "swap_line_up",
    "_comment": "move line up"
  },

  {
    "keys": ["super+option+down"],
    "command": "swap_line_down",
    "_comment": "move line down"
  },

  {
    "keys": ["super+shift+w"],
    "command": "wrap_lines",
    "_comment": "wrap lines to fit ruler"
  },

  {
    "keys": ["super+d"],
    "command": "run_macro_file",
    "args": {
      "file": "res://Packages/Default/Delete Line.sublime-macro"
    },
    "_comment": "delete selection, or line if no selection"
  },

  {
    "keys": ["super+shift+,"],
    "command": "open_file",
    "args": {"file": "${packages}/User/Default (OSX).sublime-keymap"},
    "_comment": "opens key bindings. matches super + , to open settings."
  },

  {
    "keys": ["super+k"],
    "command": "toggle_side_bar",
    "_comment": "overrides other default ⌘-k shortcuts"
  }
]
```

<br/>

#### System Preferences
Configure:

```
General > Appearance: Light
        > Accent color: Red
        > Highlight color > Red
        > Sidebar icon size: Medium
        > uncheck Automatically hide and show the menu bar
        > Show scrollbars: Always
        > Click in the scroll bar to: Jump to the spot that's clicked
        > check Ask to keep changes when closing documents
        > check Close windows when quitting an app
        > Recent items: None

Desktop & Screensaver > Desktop > Apple > Colors > Space Gray Pro
                      > Screen Saver > Start after: Never
                                     > Hot Corners > Set all 4 to null

Dock > Size: ~20%
     > uncheck Magnification
     > Position on screen: Bottom
     > Minimize windows using: Scale effect
     > Prefer tabs when opening documents: In Full Screen Only
     > uncheck Double-click a window's title bar
     > uncheck Minimize windows into application icon
     > uncheck Animate opening applications
     > check Automatically hide and show the Dock
     > check Show indicators for open applications
     > uncheck Show recent applications in Dock

---------------------------------------------------
NOTE: As indicated above, the dock auto-hides.
The default hide-and-show transition has an animation, so there's a slight delay.

To remove the animation, run in terminal:
defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock

To revert:
defaults delete com.apple.dock autohide-time-modifier;killall Dock
---------------------------------------------------

Mission Control > uncheck Automatically rearrange Spaces based on most recent use
                > check When switching to an application, switch to a Space with open windows
                > check Group windows by application
                > check Displays have separate Spaces

                > Keyboard and Mouse Shortcuts > Set all 4 to null

Language & Region > First day of the week: Monday

Notifications > for all apps, uncheck Play sound for notifications
              > Messages > uncheck Show message preview

Accessibility > Display > check Increase contrast
                        > Display contrast: Furthest left
              > Cursor > check Shake mouse pointer to locate
                       > Cursor size: Second bar from left
                        
              > Pointer Control > Double-click speed: third bar from right of Fast
                                > check Spring loading delay: fifth from left of Short
                                > uncheck Ignore built-in trackpad when mouse or wireless trackpad is present
                                > Trackpad Options... > Scrolling speed: Fastest
                                                       > check Scrolling: with inertia
                                                       > check Enable dragging: three finger drag
                                > Mouse Options... > Scrolling speed: Fastest

Keyboard > Keyboard > Key Repeat > Fastest
                    > Delay Until Repeat > Shortest
                    > uncheck Adjust keyboard brightness in low light
                    > uncheck Turn keyboard backlight off after inactivity
                    > Touch bar shows: Expanded Control Strip
                    > Press Fn key to Show F1, F2, etc. Keys
         > Shortcuts > uncheck everything, except:
                     > Keyboard > check Move focus to the window toolbar: OPTION-`
                     > Keyboard > check Move focus to next window: ⌘-`
                     > Spotlight > Show Splitlight search: ⌘-Space
                     > App Shortcuts > for All Applications, add to the following menu titles
                                       the shortcut ⌘-ESC:
                                       - Toggle Full Screen
                                       - Fullscreen
                                       - Enter Full Screen
                                       - Exit Full Screen
                                       This makes entering and exiting fullscreen consistent.

Trackpad > Point & Click > check Look up & data detectors
                         > check Secondary click (two fingers)
                         > check Tap to click
                         > Click: Lightest
                         > Tracking speed: Fastest
                         > check Force Click and haptic feedback
         > Scroll & Zoom > uncheck Scroll direction: natural
                         > check Zoom in or out
                         > check Smart zoom
                         > check Rotate
         > More Gestures > check Swipe between pages (two fingers)
                         > check Swipe between full-screen apps (four fingers)
                         > check Notification Center
                         > check Mission Control (four fingers)
                         > check App Exposè (four fingers)
                         > uncheck Launchpad
                         > uncheck Show Desktop
                         
Displays > Display > uncheck Automatically adjust brightness
                   > check True Tone
                   > uncheck Show mirroring options in the menu bar
         > Night Shift > check Turn On Until Sunrise

Energy Saver > Battery Power > Turn display off after: Never
             > uncheck Put hard disks to sleep when possible
             > uncheck dim the display while on battery power
             > uncheck Power Nap
             > Power Adapter > Turn display off after: Never
             > check Prevent computer from sleeping automatically
             > uncheck Put hard disks to sleep when possible
             > check wake for Wi-Fi network access
             > check Enable Power Nap while plugged into power adapter

Date & Time > Clock > uncheck Show date and time in menu bar

---------------------------------------------------
This will be displayed by Day-O, further down this page.
Day-O allows customization. I'm using the computing-friendly format.

Default:  Wed Jan 5 11:29 PM
Day-O:    2000-01-05 11:29 PM Wednesday
---------------------------------------------------
```

<br/>

#### Launchpad
Hide what you don't use. Collapse to 2 columns.

![Launchpad](../master/images/Launchpad.gif)

Run in terminal:

```bash
$ defaults write com.apple.dock springboard-columns -int 2;
$ defaults write com.apple.dock ResetLaunchPad -bool TRUE;
$ killall Dock
```

<br/>

#### Finder
![Finder](../master/images/Finder.png)

Configure from menu bar:

```
Finder > Preferences > General > New Finder windows show: Downloads
                     > Sidebar > check only the following:
                                 - Airdrop
                                 - Applications
                                 - Desktop
                                 - Documents
                                 - Downloads
                                 - Music
                                 - <Current user's home folder>
                     > Advanced > check only the following:
                                  - check Show all filename extensions
                                  - check Show warning before changing an extension
                                  - check Show warning before removing fro iCloud Drive
                                  - check Show warning before emptying the Trash
                                
                                > When performing a search: Search the Current Folder

View > as List
     > Show only the following:
       - Sidebar
       - Toolbar
       - Path bar
       - Status bar
```

<br/>

#### Day-O
[Day-O](https://shauninman.com/archive/2016/10/20/day_o_2_mac_menu_bar_clock) as date
and time replacement for the default. It also has a calendar dropdown.

![Day-O](../master/images/Day-O.gif)

Configure from menu bar:

```
Day-O > Preferences > Date & Time Format: "  y-MM-dd   h:mm    EEEE"
                    > uncheck Show Icon
                    > check Launch Day-O at login
```

<br/>

#### MenuMeters
[MenuMeters](http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/)
shows memory, network, and CPU usage in the menu bar. This useful as a heads-up display of system utilization.

![MenuMeters](../master/images/MenuMeters.gif)

Configure:

```
System Preferences > MenuMeters > CPU > Thermometer
                                      > Update interval (seconds): 5.0
                                      > Miscellaneous > check Show average for multiple processors as single display
                                      For colors, the numbers are brightness values.
                                      To set them, click the color swatch, then
                                      go to the second tab in the new window and select 
                                      Grayscale slider.       
                                      > Colors > User:   30
                                               > System: 30
                                > Disk > uncheck Display Disk Activity Menu Meter
                                > Memory > Usage Bar
                                         > Update intervals (seconds): 5.0
                                         > uncheck Show paging activity indicator
                                         > Colors > Active:     23
                                                  > Wired:      23
                                                  > Inactive:   100
                                                  > Compressed: 23
                                > Network > Throughput
                                          > Update interval (seconds): 5.0
                                          > General > Display orientation: Transmit/Receive
                                                    > Display preferes interface: Primary (automatic)
                                          > Throughput Display > uncheck Ignore values below 1KB/s
                                                               > check Show throughput labels (Tx/Rx)
                                          > Colors > Transmit: 0
                                                   > Receive:  0
                                                   > Inactive: 33
```

<br/>

#### Witch
The problem with ⌘-TAB is that it switches between apps but skips over windows within those apps. <br/>
[Witch](http://manytricks.com/witch/) makes ⌘-TAB cycle between windows. This is essential.

![Witch](../master/images/Witch.gif)

Set configurations:
```
System Preferences > Witch > Actions > Cycle Windows
                                     > Sort by > Window Activity — Orientation: Down
                                     > check List windows from all spaces
                                     > uncheck List tabs
                                     > check List apps without windows: Bring to Front
                                     
                                     > Keyboard > ⌘-TAB and ⇧⌘-TAB
                                                > uncheck Show in menu bar 
                           > Appearance > List item size: 80 pt/ 30 pt
                                        > Vertical list width: 39%
                                        > uncheck Witch panel casts shadow
                                        > uncheck App names cast shadows
                                        > uncheck Window titles cast shadows
                                        
                                        The settings below set the color theme.
                                        To set the RGB value, click the color swatch, then
                                        go to the second tab in the new window and select 
                                        Grayscale slider. The numbers below are Brightness values,
                                        which are equivalent to RGB values with the same number
                                        across red, green, and blue.
                                        
                                        > check Background color: 87
                                        > App name color: 100
                                        > Window title color: 34
                                        > Selection background color: 81
                                        > Selection border color: 81
                                        > Selection window title color: 34
                                        > Preview border color: 100
                                        > check Outline minimized windows with color: 0
                                        > uncheck Outline off-space windows with color
                                        > check Show keyboard shortcuts with color: 100
                                        
                                        > uncheck Show vertical window lists for horizontal
                                        > uncheck Show app names in vertical lists when cycling
                                        > uncheck Show unread count for Mail app
                                        > Show: app icons
                           > Advanced > Show list on: main display — Delay: None
                                      > check Cycle through search for all lists
                                      > uncheck Add a "Cancel"
                                      > check Initial selection skips currently active item
                                      > uncheck Selection wraps around
                                      > uncheck Spring-load apps
                                      > check Releasing all modifier keys dismisses list
                                      > uncheck Activating a window raises all of the app's windows
                                      > check Activate off-space windows via AppleScript if necessary
                                      > Do not list apps: Finder
                                      > App response timeout: 0.1s
```

<br/>

#### Moom
[Moom](https://manytricks.com/moom/) quickly moves and resizes windows. I use the keyboard shortcuts
to quickly arrange windows side-by-side or resize to fullscreen. This is another essential.

![Moom](../master/images/Moom.gif)

Launch Moom and configure:

```
General > The only line that should be checked is "Launch automatically on login" 
        > Grid/keyboard control highlight: 80% on scrollbar
        > Run as: faceless application
Mouse > uncheck Pop up controls when hovering over a Zoom button
Keyboard > Trigger keyboard control with hot key: CTRL-`
         > uncheck Show logo
         > uncheck Show cheat sheet
         > uncheck Repeat to toggle grid

         > Arrow keys:         Move & Zoom to Half Screen
         > Arrow with Command: -
         > Arrow with Option:  -
         > Arrow with Control: Move to Other Display
         > Return:             -
         > Space:              Center
         > Tab:                Move & Zoom to Full Screen
         > Escape:             Return to Original Dimensions

         > Auto-dismiss keyboard control after: check all
Custom > Delete all
```
