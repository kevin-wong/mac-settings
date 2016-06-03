Personal setup settings for mac.


LaunchPad has 2 columns:

defaults write com.apple.dock springboard-columns -int 2;\
defaults write com.apple.dock ResetLaunchPad -bool TRUE;\
killall Dock


System Preferences
General -> Appearance: Blue
				-> Highlight color -> Other -> 2nd tab -> RGB Sliders. R: 233 G: 219 B: 184
				-> Sidebar icon size: Large
				-> Show scrollbars: Always
				-> check Ask to keep changes when closing documents
				-> check Close windows when quitting an app
				-> Recent items: None

Dock -> Size: Max
		 -> uncheck Magnification
		 -> Minimize windows using: Scale effect
		 -> uncheck Double-click a window's title bar
		 -> uncheck Minimize windows into application icon
		 -> uncheck Animate opening applications
		 -> check Automatically hide and show the Dock
		 -> check indicators for open applications

Mission Control -> uncheck Automatically rearrange Spaces based on most recent use
								-> check When switching to an application, switch to a Space with open windows
								-> uncheck Group windows by application 
								-> check Displays have separate Spaces
								-> Display have separate Spaces
								-> Dashboard: Off



Language & Region -> First day of the week: Monday
									-> Time format: 24-hour Time

Notifications -> for all apps, uncheck Play sound for notifications 
							-> Messages -> uncheck Show message preview

Displays -> uncheck Automatically adjust brightness
				 -> uncheck Show mirroring options in the menu bar

Energy Saver -> Battery Power -> Turn display off after: Never
						 									-> uncheck Put hard disks to sleep when possible
						 									-> uncheck dim the display while on battery power
						 									-> uncheck Power Nap
						 -> Power Adapter -> Turn display off after: Never
						 									-> check Prevent computer from sleeping automatically
						 									-> uncheck Put hard disks to sleep when possible
						 									-> check wake for Wi-Fi network access
						 									-> check Enable Power Nap while plugged into power adapter									

Keyboard -> 

Downloads

Witch
The conventional ⌘-TAB switches between apps, but skips over windows within those apps.
To go to a window, I can ⌘-TAB to the app, then launch Exposè by hitting F3 or swiping down on the trackpad with four fingers (System Preferences -> Trackpad -> More Gestures). Or I can preview Exposè while still in ⌘-TAB, by holding ⌘ and hitting 1 on an app. But needing 2 steps may be too cumbersome. I may need to pause for a second to recall the exact shortcut, when something as simple as switching windows should be done without thought.
I can avoid Exposè by hitting ⌘-~ (System Preferences -> Keyboard -> Shortcuts -> Move focus to next window) to quickly loop through all the windows in an app. But I don't have a bird's eye view, so if I have more than 3 windows, this quickly becomes cumbersome.
<a href="http://manytricks.com/witch/">Witch</a> lets me use ⌘-TAB to cycle between windows.

System Preferences -> Witch -> Triggers -> Cycle Windows -> Forward  -> All Applications: CMD-TAB
																												 -> Backward -> All Applications: CMD-SHIFT-TAB
															 Behaviors -> Windows List -> Show list: after a 0.1 second delay
															 													 -> check Show: an "Activate" item (<-)
															 													 -> uncheck Show a "Cancel" item
															 													 -> Application response time: Minimum
															 					 -> Exceptions	 -> Ignore applications with names: Moom
															 					 -> Selection		 -> uncheck Selection wraps around when scrolling via scrollwheel
															 Appearance -> Item Size: 35pt
															 						-> Witch panel width: medium
															 						-> uncheck Witch panel casts shadow
															 						-> uncheck Application names cast shadows
															 						-> uncheck Window titles cast shadows
															 						-> uncheck Show application names when cycling through all applications' windows
															 						-> Show: application icons
															 						-> uncheck Pop up a preview
Moom
<a href="https://manytricks.com/moom/">Moom</a> improves window resizing.


Fliqlo
<a href="http://fliqlo.com">Fliqlo</a> screensaver.


Day-O
<a href="http://shauninman.com/archive/2011/10/20/day_o_mac_menu_bar_clock">Day-O</a>calendar dropdown.
Click on menu bar icon -> Preferences -> Date & Time Format: " h:mm a  E"


iTerm

Preferences	->	General		->	Window  ->	check Smart Window Placement
					   			    								->  uncheck Adjust window when changing font size
						->  Appearance ->  Tabs   ->  uncheck Show tab bar even when there is only one tab
																			->  check Show tab numbers
																			->  uncheck Show tab close buttons
													->  Panes		->  uncheck Show per-pane title bar with split panes
													-> 	Screen	->	check Auto-hide menu bar in non-native fullscreen
													->  Dimming ->  check Dimming only affects text, not background
																			->  Dimming amount: ~90%
																			->  check Dim inactive split panes
																			->  check Dim background windows
													->  Window  ->  uncheck Show border around window
																			->  uncheck Hide scrollbars
																			->  uncheck Disable transparency for fullscreen windows by default
						->  Profiles   ->  Colors ->  Color Presets	-> Solarized Dark
					  							 ->  Text 	->  Cursor  ->  Underline
								  			   						->  uncheck Blinking Cursor
					    						 						->  Font   ->  Change Font  ->  14 pt <a href="https://github.com/adobe-fonts/source-code-pro/releases/tag/2.010R-ro/1.030R-it">Source Code Pro Light</a>
					  							 ->  Window ->  Window Appearance	-> Transparency	-> Adjust accordingly
								    																				-> uncheck Blur
								  				 -> Settings for New Windows -> Columns: 135
								  				 			  										 -> Rows: 33
								  				 			  										 -> Style: Normal

