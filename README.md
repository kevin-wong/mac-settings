I am paranoid.

My machine may die, backups may not work, and I may not recall my settings.
I wrote this page so I have another storage layer.

I have assumed I will be struck by lightning, my memory failing, my days ahead shortening.
This page is exhaustive, and is intended to be this way so that when I'm bedridden,
confused, and holding on to dear life, I can still follow these instructions.

You, smart user, should use this like a cookbook. Pick what you like, adapt the recipe
to your preferences, and make the dish yours.

<br/>
### System
- [System Preferences](#system-preferences)
- [Launchpad](#launchpad)
- [Finder](#finder)
- [Fliqlo](#fliqlo)
- [Day-O](#day-o)
- [MenuMeters](#menumeters)
- [Skala Color](#skala-color)

### Safari Extensions
- [Omnikey](#omnikey)

### Non-free
- [Witch](#witch)
- [Moom](#moom)

### Developer
- [iTerm](#iterm)
- [Homebrew](#homebrew)
- [Git](#git)
- [less](#less)

### Text Editors
- [vim](#vim)
- [Sublime Text](#sublime)




<br/><br/><br/><br/>
#### System Preferences
<br/>
Configure:
```
General > Appearance: Blue
        > Highlight color > Other > 2nd tab > RGB Sliders:  rgb(233, 221, 180)
        > Sidebar icon size: Large
        > Show scrollbars: Always
        > check Ask to keep changes when closing documents
        > check Close windows when quitting an app
        > Recent items: None
```

<br/>
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

<br/>
Auto hide-and-show dock has an animation, so there's a slight delay.
To make the hidden dock instantly show/hide, run in terminal:
```bash
defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock
```

To revert:
```bash
defaults delete com.apple.dock autohide-time-modifier;killall Dock
```

<br/>
```
Mission Control > uncheck Automatically rearrange Spaces based on most recent use
                > check When switching to an application, switch to a Space with open windows
                > uncheck Group windows by application
                > check Displays have separate Spaces
                > Dashboard: Off
```

<br/>
```
Language & Region > First day of the week: Monday
                  > Time format: 24-hour Time
```

<br/>
```
Notifications > for all apps, uncheck Play sound for notifications
              > Messages > uncheck Show message preview
```

<br/>
```
Displays > uncheck Automatically adjust brightness
         > uncheck Show mirroring options in the menu bar
```

<br/>
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

<br/>
```
Keyboard > Keyboard > Key Repeat > Fastest
                    > Delay Until Repeat > Shortest
                    > uncheck Adjust keyboard brightness in low light
                    > Turn off when computer is not used for: Never
         > Shortcuts > uncheck everything, except:
                     > Keyboard > check Move focus to the window toolbar: OPTION-`
                     > Keyboard > check Move focus to next window: ⌘-`
                     > App Shortcuts > for All Applications, add to the following menu titles
                                       the shortcut ⌘-ESC:
                                       - Toggle Full Screen
                                       - Fullscreen
                                       - Enter Full Screen
                                       - Exit Full Screen
                                       This makes entering and exiting fullscreen consistent.
                                     > for All Applications, add to menu title "Minimize"
                                       the shortcut ⌘-SHIFT-CTRL-OPTION-M.
                                       This is intended to be an impractical shortcut,
                                       to nullify the action so that it is not accidently toggled.
```

<br/>
```
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

<br/>
```
Date & Time > Clock > uncheck Show date and time in menu bar
```

<br/>
```
Accessibility > Display > check Increase contrast
                        > Display contrast: Furthest left
                        > Cursor size: Second bar from left
                        > check Shake mouse pointer to locate
              > Mouse & Trackpad > Double-click speed: two left of Fast
                                 > check Spring loading delay: two right of Short
                                 > uncheck Ignore built-in trackpad when mouse or wireless trackpad is present
                                 > Trackpad Options... > Scrolling speed: Fastest
                                                       > check Scrolling: with inertia
                                                       > check Enable dragging: three finger drag
```




<br/><br/><br/><br/>
#### Launchpad
<br/>
Hide what you don't use. Collapse to 2 columns.

<br/>
![Launchpad](../master/images/Launchpad.gif)

<br/>
Run in terminal:
```bash
$ defaults write com.apple.dock springboard-columns -int 2;
$ defaults write com.apple.dock ResetLaunchPad -bool TRUE;
$ killall Dock
```




<br/><br/><br/><br/>
#### Finder
<br/>
![Finder](../master/images/Finder.gif)

<br/>
Configure from menu bar:
```
Preferences > General > New Finder windows show: Downloads
            > Sidebar > check only the following:
                        - Applications
                        - Documents
                        - Downloads
                        - Music
                        - <Home Folder>
                        - External disks
            > Advanced > Show all filename extensions

Menu bar > View > Show only the following:
                  - Path bar
                  - Status bar
                  - Sidebar
                  - Preview
```




<br/><br/><br/><br/>
#### Fliqlo
<br/>
[Fliqlo](http://fliqlo.com) screensaver. Shows you the time.

<br/>
![Fliqlo](../master/images/Fliqlo.gif)

</br>
Configure:
```
System Preferences > Desktop & Screensaver > Screen Saver Options > 24 hours
```




<br/><br/><br/><br/>
#### Day-O
<br/>
[Day-O](http://shauninman.com/archive/2011/10/20/day_o_mac_menu_bar_clock) calendar dropdown.

<br/>
![Day-O](../master/images/Day-O.gif)

<br/>
Configure from menu bar:
```
Day-O > Preferences > Date & Time Format: "  y/MM/dd   h:mm    EEEE"
                    > uncheck Show Icon
```




<br/><br/><br/><br/>
#### MenuMeters
<br/>
[MenuMeters](http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/)
shows memory, network, and CPU usage in the menu bar.

<br/>
![MenuMeters](../master/images/MenuMeters.gif)


<br/>
Configure:
```
System Preferences > MenuMeters > CPU > Thermometer
                                      > Update interval (seconds): 5.0
                                      > Miscellaneous > check Show average for multiple processors as single display
                                      > Colors > User:   rgb(46, 46, 46)
                                               > System: rgb(46, 46, 46)
                                > Disk > uncheck Display Disk Activity Menu Meter
                                > Memory > Usage Bar
                                         > Update intervals (seconds): 5.0
                                         > Colors > Active:     rgb(46, 46, 46)
                                                  > Wired:      rgb(46, 46, 46)
                                                  > Inactive:   rgb(140, 140, 140)
                                                  > Compressed: rgb(46, 46, 46)
                                > Network > Throughput
                                          > Update interval (seconds): 5.0
                                          > General > Display orientation: Transmit/Receive
                                                    > Display preferes interface: Primary (automatic)
                                          > Throughput Display > check Show throughput labels (Tx/Rx)
                                          > Colors > Transmit: rgb(0, 0, 0)
                                                   > Receive:  rgb(0, 0, 0)
                                                   > Inactive: rgb(0, 0, 0)
```




<br/><br/><br/><br/>
#### Skala Color
<br/>
[Skala Color](https://bjango.com/mac/skalacolor/) is a color picker.

<br/>
![Skala Color](../master/images/Skala-Color.gif)




<br/><br/><br/><br/>
#### Omnikey
<br/>
[Omnikey](http://marioestrada.github.io/safari-omnikey/) puts multiple search engines in your address bar.
It maps a keyword to each search engine, so you just prefix your search with the keyword.

Safari has a similar built-in feature in ```Preferences > Search > Quick Website Search```, but you can't
customize bindings, and the search only comes up in the drop-down menu, so you have to arrow down to it, rather
than Omnikey's direct substitution.

<br/>
![Safari Omnikey](../master/images/Safari-Omnikey.gif)

<br/>
Set mappings:
```
Omnikey icon in safari toolbar:

Key      URL
amazon   https://www.amazon.com/s/?field-keywords={search}                        # Amazon
maps     https://www.google.com/maps/search/{search}                              # Google Maps
wiki     http://en.wikipedia.org/w/index.php?title=Special:Search&search={search} # Wikipedia
youtube  https://www.youtube.com/results?search_query={search}                    # Youtube
google   https://www.google.com/#q={search}                                       # Google


check Use Google.com as the default search for Safari
```

Setting the Google mapping as the default search is to show the search's full URL.
When a search is done directly in the address bar to the default search engine,
Safari hides the URL and displays only the query.
The option at ```Preferences > Advanced > Show full website address``` expands only
non-search addresses, and Safari does not provide a way to expand searches.


<br/>
[Adblock](https://safari-extensions.apple.com/details/?id=com.betafish.adblockforsafari-UAMUU4S2D9).
[Ghostery](https://safari-extensions.apple.com/details/?id=com.betteradvertising.ghostery-HPY23A294X).

For Ghostery, enable blocking all tracking by default:
```
Ghostery icon in safari toolbar > Options > General tab > Blocking Options > Trackers > Select all
```

Hide the extensions you no longer need to worry about (e.g. Ghostery and Omnikey):
```
Right click safari toolbar > Customize Toolbar... > Drag the icons from the toolbar
```




<br/><br/><br/><br/>
#### Witch
<br/>
The problem with ⌘-TAB is that it switches between apps, but skips over windows within those apps. <br/>

[Witch](http://manytricks.com/witch/) makes ⌘-TAB cycle between windows.

NOTE: There's a slight delay when ⌘-TABing quickly.

<br/>
![Witch](../master/images/Witch.gif)

<br/>
Run WitchConf to set customizations:
```bash
./WitchConf
```

<br/>
Register the settings by clicking on Witch:
```
System Preferences > Witch
```




<br/><br/><br/><br/>
#### Moom
<br/>
[Moom](https://manytricks.com/moom/) quickly resizes windows. No more dragging corners.

<br/>
![Moom](../master/images/Moom.gif)

<br/>
Launch Moom and configure:
```
General > uncheck Show preferences on launch
        > Run as: faceless
Mouse > Delay: None
      > check Enable access to custom controls, check Show on hover
      > uncheck Bring moomed windows to the front automatically
Custom > Move & Zoom. Define window sizes using 13x13. Empty 2 columns on both sides.
```




<br/><br/><br/><br/>
#### iTerm
<br/>
Solarized colorscheme. Colors responsive to git. Mac-inspired key bindings.

<br/>
![Solarized iTerm](../master/images/iTerm.gif)

<br/>
The terminal above uses a combination of both iTerm and bash prompt colors.
The two can be configured separately, though for consistency I have set them both
to solarized dark.

<br/>
Download [iTerm](https://www.iterm2.com).

Download [Source Code Pro Light](https://github.com/adobe-fonts/source-code-pro/releases/tag/2.010R-ro/1.030R-it),
and add the OTF fonts to Font Book.

<br/>
Save existing paths. Put config files in home directory. Set the prompt colors:
```
grep "export PATH" ~/.profile ~/.bash_profile ~/.bashrc 2>/dev/null | awk -F ":" '{print $2}' >> .bash_exports
cp .bash_profile .bashrc .bash_prompt .bash_aliases .bash_exports ~/
```

<br/>
Configure iTerm colors. Set key bindings from menu bar:
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

NOTE: SolarizedDark (from this git repo) and Solarized Dark (comes with iTerm)
are not the same. Solarized Dark's highlight color was too similar to the background
color, so SolarizedDark has the highlight color slightly modified to increase the
contrast. This is the only difference.

NOTE: Setting the exact solarized colors in the prompt requires 24-bit colors.
Although `tput` has more readable color selections:
```
tput setaf <number>
```
where `<number>` can be any integer from 0 to 255, but it is limited to 8-bit colors.
The solarized colors don't fall into those 256 colors, so at best `tput` can only
approximate them. The tput values found on the
[solarized site](http://ethanschoonover.com/solarized#The-Values), listed under XTERM,
are these approximations.

I'm using the 24-bit colors, and the only way to access 24-bit colors are through
the ANSI escape codes. They come in this format:
```
\033[${fg-or-bg};${style};${r};${g};${b}m
```

<br/>
`\033`                      bash escape character. `\e` and `\x1b` are also escape characters,
                            though on the Mac `\e` works with
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            `printf` but not `echo`. Linux can use all three.

`[`                         begins color sequence

`${fg-or-bg}`               toggles foreground or background. 38 is foreground. 48 is background

`${style}`                  value between 0 and 4. sets bold, italics, underline. 2 adds no style, but lets the color through

`${r}`, `${g}`, and `${b}`  red, green, and blue values, from 0 to 255

`m`                         signals this is a color sequence

<br/>
So to set solarized yellow: `\033[38;2;147;161;161m`

To strip all formatting and colors: `\033[0m`. This should be appended at the end of
any colorized text.

When using escape codes to colorize the prompt, sandwich the codes between `\[` and `\]`
so the terminal counts the escape codes as output characters. Without them, when
a line gets full, instead of writing to the next line, new characters start
overwriting the existing line.

<br/>
Working examples:

Colorize prompt:
```bash
solarized_yellow="\033[38;2;181;137;0m"
color_reset="\033[0m"
user="\u"
dir="\w"

PS1=""
PS1+="\[$solarized_yellow\]$user\[$color_reset\] "
PS1+="at "
PS1+="\[$solarized_yellow\]$dir\[$color_reset\]$ "
```

Add colors to output using `echo`:
```bash
echo -e "\033[38;2;181;137;0mThis text is colored in solarized yellow.\033[0m"
```




<br/><br/><br/><br/>
#### Homebrew
<br/>
Install [brew](http://brew.sh).




<br/><br/><br/><br/>
#### Git
<br/>
Install git:
```bash
brew install git
```

<br/>
Put `.gitignore` in home directory:
```bash
cp .gitignore ~/
```

<br/>
Configure:
```bash
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




<br/><br/><br/><br/>
#### less
<br/>
Use key bindings so navigation is consistent with the vim's below.

<br/>
Mac has disabled`lesskey`, which allows key binding on less. Use the version that does:
```bash
brew install homebrew/dupes/less
```

<br/>
Put .lesskey in home directory:
```bash
cp .lesskey ~/
```

<br/>
Run lesskey, which will automatically read from .lesskey:
```bash
lesskey
```




<br/><br/><br/><br/>
#### vim
<br/>
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
hold down OPTION and drag.

<br/>
![vim](../master/images/vim.gif)


<br/>
[Download](https://github.com/altercation/vim-colors-solarized/tree/master/colors) Solarized for vim.<br/>

<br/>
Follow the [manual installation](http://ethanschoonover.com/solarized/vim-colors-solarized#installation).

<br/>
Put `.vimrc` in home directory:
```bash
cp .vimrc ~/
```




<br/><br/><br/><br/>
<a name="sublime"></a>
#### Sublime Text
<br/>
Solarized colorscheme. Key bindings.

<br/>
Download [Sublime Text](https://www.sublimetext.com/3).

<br/>
Add `subl` as a terminal command to open sublime:
```bash
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

<br/>
Launch Sublime > Preferences > Settings - User > Paste the following:
```
{
  "_comment": "Find all fields in: Preferences > Settings - Default",

  "color_scheme": "Packages/Color Scheme - Default/Solarized (Dark).tmTheme",

  "tab_completion": false,
  "auto_complete": true,
  "auto_complete_delay": 0,
  "auto_complete_commit_on_tab": true,
  "auto_complete_with_fields": true,
  "auto_complete_cycle": true,

  "bold_folder_labels": true,
  "font_face": "Source Code Pro Light",
  "font_size": 14,
  "highlight_modified_tabs": true,
  "indent_to_bracket": true,
  "open_files_in_new_window": false,

  "highlight_line": true,
  "caret_style": "solid",
  "caret_extra_top": 3,
  "caret_extra_bottom": 3,
  "caret_extra_width": 0,

  "show_full_path": true,
  "show_encoding": true,
  "always_show_minimap_viewport": true,

  "animation_enabled": false,

  "tab_size": 2,
  "translate_tabs_to_spaces": true,

  "trim_trailing_white_space_on_save": true,

  "word_wrap": "false",

  "rulers":
  [
    80
  ]
}
```

<br/>
Launch Sublime > Preferences > Key Bindings - User > Paste the following:
```
[
  {"_comment": "Find all fields in: Preferences > Key Bindings - Default"},

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
    "keys": ["option+shift+up"],
    "command": "swap_line_up",
    "_comment": "move line up"
  },

  {
    "keys": ["option+shift+down"],
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