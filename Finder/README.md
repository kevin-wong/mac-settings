Finder -> Preferences -> Sidebar -> Check/uncheck to get sidebar in FolderView

Download <a href="http://shauninman.com/archive/2011/10/20/day_o_mac_menu_bar_clock">
Day-O</a>. Set preference date and time format: " h:mm a  E"


Use 2 columns in LaunchPad:

defaults write com.apple.dock springboard-columns -int 2;\
defaults write com.apple.dock ResetLaunchPad -bool TRUE;\
killall Dock