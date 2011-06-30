# # author::  spo11
# Version:: 1.1
# License:: GNU GPL
#
# = custom subtle
#
# This file will be installed as default and can also be used as a starter for
# an own custom configuration file. The system wide config usually resides in
# +/etc/xdg/subtle+ and the user config in +HOME/.config/subtle+, both locations
# are dependent on the locations specified by +XDG_CONFIG_DIRS+ and
# +XDG_CONFIG_HOME+.
#

#
# == Options
#
# Following options change behaviour and sizes of the window manager:
#
# Border size in pixel of the windows
#set :border, 1

# Window move/resize steps in pixel per keypress
set :step, 5

# Window screen border snapping
set :snap, 10

# Default starting gravity for windows (0 = gravity of last client)
set :gravity, :center

# Make transient windows urgent
set :urgent, false

# Honor resize size hints globally
set :resize, false

# Screen strut for e.g. other panels (left, right, top, bottom)
#set :strut, [ 0, 0, 0, 0 ]

# Font string either take from e.g. xfontsel or use xft
#set :font, "-*-*-medium-*-*-*-12-*-*-*-*-*-*-*"
set :font, "xft:HeldustryFTVBasic Demi:pixelsize=9"

# Space around windows
#set :gap, 5

# Panel size padding (left, right, top, bottom)
#set :padding, [ 0, 0, 0, 0 ]

# Separator between sublets
set :separator, ":"

# Outline border size in pixel of panel items
#set :outline, 0

# Set the WM_NAME of subtle (Java quirk)
# set _wmname, "LG3D"

#
# == Screen
#
# Generally subtle comes with two panels per screen, one on the top and one at
# the bottom. Each panel can be configured with different panel items and
# sublets screen wise. The default config uses top panel on the first screen
# only, it's up to the user to enable the bottom panel or disable either one
# or both.
#
# Empty panels are hidden.
#
# Following items are available:
#
# [*:views*]     List of views with buttons
# [*:title*]     Title of the current active window
# [*:tray*]      Systray icons (Can be used once)
# [*:sublets*]   Catch-all for installed sublets
# [*:sublet*]    Name of a sublet for direct placement
# [*:spacer*]    Variable spacer (free width / count of spacers)
# [*:center*]    Enclose items with :center to center them on the panel
# [*:separator*] Insert separator
#
# === Link
#
# http://subforge.org/wiki/subtle/Panel
#

screen 1 do
  # Add stipple to panels
  #stipple false

  # Content of the top panel
  #top     [ :title, :spacer, :views ]
  #top      [ :views, :tasks ]
  #top      [ :views, :title, :spacer, :separator, :wifi, :separator, :mpd, :separator, :volume, :separator, :battery, :separator, :clock ]
  #top  [ :views, :spacer, :mpd, :separator, :volume, :battery, :separator, :clock ]

  # Content of the bottom panel
  bottom  [ :views, :tasks, :spacer, :mpd, :separator, :memory, :separator, :wifi, :separator, :battery, :separator, :clock ]
  #bottom     [ :mpd, :spacer, :views, :spacer, :tray, :volume, :battery, :wifi, :clock ]
end

# Example for a second screen:
#screen 2 do
#  # Add stipple to panels
#  stipple false
#
#  # Content of the top panel
#  top     [ :views, :title, :spacer ]
#
#  # Content of the bottom panel
#  bottom  [ ]
#end

#
# == Colors
#
# Colors directly define the look of subtle, valid values are:
#
# [*hexadecimal*] #0000ff
# [*decimal*]     (0, 0, 255)
# [*names*]       blue
#
# Whenever there is no valid value for a color set - subtle will use a default
# one. There is only one exception to this: If no background color is given no
# color will be set. This will ensure a custom background pixmap won't be
# overwritten.
#
# === Link
#
# http://subforge.org/wiki/subtle/Themes

# Styles {{{
# Colors of focus window title
style :title do
  padding     2, 10, 0, 10
  #border_bottom "#303030", 2
  foreground  "#8CD0D3"
  background  "#1b1b1b"
end

style :focus do
  padding     2, 8, 0, 8
  border_bottom "#606060", 2
  #border_bottom "#090909", 1
  #border_right "#090909", 1
  #border "3b3b3b", 1
  #border_top "3b3b3b", 1
  foreground  "#F8F893"
  background  "#3b3b3b"
end

style :urgent do
  padding     2, 8, 0, 8
  #border      "#303030", 0
  foreground  "#ffffff"
  background  "#519f50"
end

style :occupied do
  padding     2, 8, 0, 8
  border_bottom "#424242", 2
  foreground  "#82a282"
  background  "#2E2E2E"
end

style :views do
  padding     2, 8, 0, 8
  foreground  "#3A3A3A"
  background  "#222222"
end

style :sublets do
  padding     2, 10, 0
#  border_bottom "#303030", 2
  foreground  "#b0b0b0"
  background  "#222222"
end

style :separator do
  padding     1, 0, 0
#  border_bottom "#090909", 2
  background  "#222222"
  foreground  "#505050"
end

style :clients do
  active      "#EBEBEB", 2
  inactive    "#A8A8A8", 2
  margin    3  
end

style :subtle do
  padding     1
  panel       "#222222"
  stipple     "#757575"
end
# }}}

#
# == Gravities
#
# Gravities are predefined sizes a window can be set to. There are several ways
# to set a certain gravity, most convenient is to define a gravity via a tag or
# change them during runtime via grab. Subtler and subtlext can also modify
# gravities.
#
# A gravity consists of four values which are a percentage value of the screen
# size. The first two values are x and y starting at the center of the screen
# and he last two values are the width and height.
#
# === Example
#
# Following defines a gravity for a window with 100% width and height:
#
#   gravity :example, [ 0, 0, 100, 100 ]
#
# === Link
#
# http://subforge.org/wiki/subtle/Gravity
#


# Top left
gravity :top_left,       [   0,   0,  50,  50 ]
gravity :top_left66,     [   0,   0,  50,  66 ]
gravity :top_left33,     [   0,   0,  50,  34 ]

# Top
gravity :top,            [   0,   0, 100,  50 ]
gravity :top66,          [   0,   0, 100,  66 ]
gravity :top33,          [   0,   0, 100,  34 ]

# Top right
gravity :top_right,      [  50,   0,  50,  50 ]
gravity :top_right66,    [  50,   0,  50,  66 ]
gravity :top_right33,    [  50,   0,  50,  33 ]

# Left
gravity :left,           [   0,   0,  50, 100 ]
gravity :left66,         [   0,   0,  66, 100 ]
gravity :left33,         [   0,   0,  33, 100 ]

# Center
gravity :center,         [   0,   0, 100, 100 ]
gravity :center66,       [  17,  17,  66,  66 ]
gravity :center33,       [  33,  33,  33,  33 ]

# Right
gravity :right,          [  50,   0,  50, 100 ]
gravity :right66,        [  34,   0,  66, 100 ]
gravity :right33,        [  67,  50,  33, 100 ]

# Bottom left
gravity :bottom_left,    [   0,  50,  50,  50 ]
gravity :bottom_left66,  [   0,  34,  50,  66 ]
gravity :bottom_left33,  [   0,  67,  50,  33 ]

# Bottom
gravity :bottom,         [   0,  50, 100,  50 ]
gravity :bottom66,       [   0,  34, 100,  66 ]
gravity :bottom33,       [   0,  67, 100,  33 ]

# Bottom right
gravity :bottom_right,   [  50,  50,  50,  50 ]
gravity :bottom_right66, [  50,  34,  50,  66 ]
gravity :bottom_right33, [  50,  67,  50,  33 ]

# Gimp
gravity :gimp_image,     [  10,   0,  80, 100 ]
gravity :gimp_toolbox,   [   0,   0,  10, 100 ]
gravity :gimp_dock,      [  90,   0,  10, 100 ]


#
# == Grabs
#
# Grabs are keyboard and mouse actions within subtle, every grab can be
# assigned either to a key and/or to a mouse button combination. A grab
# consists of a chain and an action.
#
# === Finding keys
#
# The best resource for getting the correct key names is
# */usr/include/X11/keysymdef.h*, but to make life easier here are some hints
# about it:
#
# * Numbers and letters keep their names, so *a* is *a* and *0* is *0*
# * Keypad keys need *KP_* as prefix, so *KP_1* is *1* on the keypad
# * Strip the *XK_* from the key names if looked up in
#   /usr/include/X11/keysymdef.h
# * Keys usually have meaningful english names
# * Modifier keys have special meaning (Alt (A), Control (C), Meta (M),
#   Shift (S), Super (W))
#
# === Chaining
#
# Chains are a combination of keys and modifiers to one key and can be used in
# various ways to trigger an action. In subtle there are two ways to define
# chains for grabs:
#
#   1. Default way*: Add modifiers to a key and use it for a grab
#
#      *Example*: grab "W-Return", "urxvt"
#
#   2. *Escape way*: Define an escape grab that needs to be pressed before
#      *any* other grab can be used like in screen/tmux.
#
#      *Example*: grab "C-y", :SubtleEscape
#                 grab "Return", "urxvt"
#
# ==== Mouse buttons
#
# [*B1*] = Button1 (Left mouse button)
# [*B2*] = Button2 (Middle mouse button)
# [*B3*] = Button3 (Right mouse button)
# [*B4*] = Button4 (Mouse wheel up)
# [*B5*] = Button5 (Mouse wheel down)
#
# ==== Modifiers
#
# [*A*] = Alt key
# [*C*] = Control key
# [*M*] = Meta key
# [*S*] = Shift key
# [*W*] = Super (Windows) key
#
# === Action
#
# An action is something that happens when a grab is activated, this can be one
# of the following:
#
# [*symbol*] Run a subtle action
# [*string*] Start a certain program
# [*array*]  Cycle through gravities
# [*lambda*] Run a Ruby proc
#
# === Example
#
# This will create a grab that starts a urxvt when Alt+Enter are pressed:
#
#   grab "A-Return", "urxvt"
#
# === Link
#
# http://subforge.org/wiki/subtle/Grabs
#

# Escape grab
#  grab "C-y", :SubtleEscape

# Jump to view1, view2, ...
grab "W-S-1", :ViewJump1
grab "W-S-2", :ViewJump2
grab "W-S-3", :ViewJump3
grab "W-S-4", :ViewJump4
grab "W-S-5", :ViewJump5
grab "W-S-6", :ViewJump6
grab "W-S-7", :ViewJump7
grab "W-S-8", :ViewJump8
grab "W-S-9", :ViewJump9
# Switch current view
grab "W-1", :ViewSwitch1
grab "W-2", :ViewSwitch2
grab "W-3", :ViewSwitch3
grab "W-4", :ViewSwitch4
grab "W-5", :ViewSwitch5
grab "W-6", :ViewSwitch6
grab "W-7", :ViewSwitch7
grab "W-8", :ViewSwitch8
grab "W-9", :ViewSwitch9

# Select next and prev view */
#grab "W-S-Add",      :ViewNext
#grab "W-S-Subtract", :ViewPrev

# Move mouse to screen1, screen2, ...
grab "W-A-1", :ScreenJump1
grab "W-A-2", :ScreenJump2
grab "W-A-3", :ScreenJump3
grab "W-A-4", :ScreenJump4
grab "W-A-5", :ScreenJump5
grab "W-A-6", :ScreenJump6
grab "W-A-7", :ScreenJump7
grab "W-A-8", :ScreenJump8
grab "W-A-9", :ScreenJump9
# Force reload of config and sublets
grab "W-C-r", :SubtleReload

# Force restart of subtle
grab "W-C-S-r", :SubtleRestart

# Quit subtle
grab "W-C-q", :SubtleQuit

# Move current window
grab "W-B1", :WindowMove

# Resize current window
grab "W-B3", :WindowResize

# Toggle floating mode of window
grab "W-f", :WindowFloat

# Toggle fullscreen mode of window
grab "W-space", :WindowFull

# Toggle sticky mode of window (will be visible on all views)
grab "W-A-s", :WindowStick

# Raise window
grab "W-r", :WindowRaise

# Lower window
grab "W-A-l", :WindowLower

# Select next windows
grab "W-Left",  :WindowLeft
grab "W-h", :WindowLeft
grab "W-Down",  :WindowDown
grab "W-j", :WindowDown
grab "W-Up",    :WindowUp
grab "W-k", :WindowUp
grab "W-Right", :WindowRight
grab "W-l", :WindowRight

# Kill current window
grab "W-S-k", :WindowKill

# Volume Control
#grab "XF86AudioRaiseVolume", "amixer set Master 5%+ unmute"
#grab "XF86AudioLowerVolume", "amixer set Master 5%- unmute"
#grab "XF86AudioMute", "amixer set Master toggle"
grab "XF86AudioRaiseVolume", "vol up"
grab "XF86AudioLowerVolume", "vol down"
grab "XF86AudioMute", "vol mute"

# Cycle between given gravities
#grab "W-KP_7", [ :top_left,     :top_left66,     :top_left33     ]
#grab "W-KP_8", [ :top,          :top66,          :top33          ]
#grab "W-KP_9", [ :top_right,    :top_right66,    :top_right33    ]
#grab "W-KP_4", [ :left,         :left66,         :left33         ]
#grab "W-KP_5", [ :center,       :center66,       :center33       ]
#grab "W-KP_6", [ :right,        :right66,        :right33        ]
#grab "W-KP_1", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
#grab "W-KP_2", [ :bottom,       :bottom66,       :bottom33       ]
#grab "W-KP_3", [ :bottom_right, :bottom_right66, :bottom_right33 ]

# In case no numpad is available e.g. on notebooks
grab "W-q", [ :top_left,     :top_left66,     :top_left33     ]
grab "W-w", [ :top,          :top66,          :top33          ]
grab "W-e", [ :top_right,    :top_right66,    :top_right33    ]
grab "W-a", [ :left,         :left66,         :left33         ]
grab "W-s", [ :center,       :center66,       :center33       ]
grab "W-d", [ :right,        :right66,        :right33        ]
grab "W-z", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
grab "W-x", [ :bottom,       :bottom66,       :bottom33       ]
grab "W-c", [ :bottom_right, :bottom_right66, :bottom_right33 ]

# Exec programs
grab "W-S-Return", "urxvt"
grab "W-Return", "gmrun"

# Shutdown Dialog
grab "W-A-x", "shutdown-dialog.py"

# Run Ruby lambdas
grab "S-F2" do |c|
  puts c.name
end

grab "S-F3" do
  puts Subtlext::VERSION
end

# Control MPD with the Keyboard
grab "XF86AudioPrev", "mpc prev"
grab "XF86AudioNext", "mpc next"
grab "XF86AudioPlay", "mpc toggle"
grab "XF86AudioStop", "mpc stop"

#
# == Tags
#
# Tags are generally used in subtle for placement of windows. This placement is
# strict, that means that - aside from other tiling window managers - windows
# must have a matching tag to be on a certain view. This also includes that
# windows that are started on a certain view will not automatically be placed
# there.
#
# There are to ways to define a tag:
#
# === Simple
#
# The simple way just needs a name and a regular expression to just handle the
# placement:
#
# Example:
#
#  tag "terms", "terms"
#
# === Extended
#
# Additionally tags can do a lot more then just control the placement - they
# also have properties than can define and control some aspects of a window
# like the default gravity or the default screen per view.
#
# Example:
#
#  tag "terms" do
#    match   "xterm|[u]?rxvt"
#    gravity :center
#  end
#
# === Default
#
# Whenever a window has no tag it will get the default tag and be placed on the
# default view. The default view can either be set by the user with adding the
# default tag to a view by choice or otherwise the first defined view will be
# chosen automatically.
#
# === Properties
#
# [*float*]     This property either sets the tagged client floating or prevents
#               it from being floating depending on the value.
#
#               Example: float true
#
# [*full*]      This property either sets the tagged client to fullscreen or
#               prevents it from being set to fullscreen depending on the value.
#
#               Example: full true
#
# [*geometry*]  This property sets a certain geometry as well as floating mode
#               to the tagged client, but only on views that have this tag too.
#               It expects an array with x, y, width and height values whereas
#               width and height must be >0.
#
#               Example: geometry [100, 100, 50, 50]
#
# [*gravity*]   This property sets a certain to gravity to the tagged client,
#               but only on views that have this tag too.
#
#              Example: gravity :center
#
# [*match*]    This property adds matching patterns to a tag, a tag can have
#              more than one. Matching works either via plaintext, regex
#              (see man regex(7)) or window id. Per default tags will only
#              match the WM_NAME and the WM_CLASS portion of a client, this
#              can be changed with following possible values:
#
#              [*:name*]      Match the WM_NAME
#              [*:instance*]  Match the first (instance) part from WM_CLASS
#              [*:class*]     Match the second (class) part from WM_CLASS
#              [*:role*]      Match the window role
#
#              Example: match :instance => "urxvt"
#                       match [:role, :class] => "test"
#                       match "[xa]+term"
#
# [*exclude*]  This property works exactly the same way as *match*, but it
#              excludes clients that match from this tag. That can be helpful
#              with catch-all tags e.g. for console apps.
#
#              Example: exclude :instance => "irssi"
#
# [*resize*]   This property either enables or disables honoring of client
#              resize hints and is independent of the global option.
#
#              Example: resize true
#
# [*stick*]    This property either sets the tagged client to stick or prevents
#              it from being set to stick depending on the value. Stick clients
#              are visible on every view.
#
#              Example: stick true
#
# [*type*]     This property sets the [[Tagging|tagged]] client to be treated
#              as a specific window type though as the window sets the type
#              itself. Following types are possible:
#
#              [*:desktop*]  Treat as desktop window (_NET_WM_WINDOW_TYPE_DESKTOP)
#              [*:dock*]     Treat as dock window (_NET_WM_WINDOW_TYPE_DOCK)
#              [*:toolbar*]  Treat as toolbar windows (_NET_WM_WINDOW_TYPE_TOOLBAR)
#              [*:splash*]   Treat as splash window (_NET_WM_WINDOW_TYPE_SPLASH)
#              [*:dialog*]   Treat as dialog window (_NET_WM_WINDOW_TYPE_DIALOG)
#
#              Example: type :desktop
#
# [*urgent*]   This property either sets the tagged client to be urgent or
#              prevents it from being urgent depending on the value. Urgent
#              clients will get keyboard and mouse focus automatically.
#
#              Example: urgent true
#
# === Link
#
# http://subforge.org/wiki/subtle/Tagging
#

# Simple tags
#tag "terms",   "xterm|[u]?rxvt"
tag "browser", "luakit|jumanji|uzbl|firefox|chromium|navigator"
tag "filemanager", "pcmanfm|nautilus|xarchiver|file-roller|geeqie|viewnior|thunar|nitrogen|qiviewer"
tag "music", "sonata|banshee|pithos"
tag "video", "minitube|vlc|mplayer|gnome-mplayer|umplayer"
tag "text", "emacs|gvim|lyx" 
tag "office", "epdfview|libreoffice|gummi|xpdf|zathura" 
tag "graphics", "mtpaint|gimp|inkscape"
tag "chat" , "skype|pidgin"
tag "mail", "sylpheed|thunderbird|postler|evolution"
tag "ebooks", "calibre"
tag "writing", "focuswriter"
# Terminal
tag "terms" do
   match "xterm|[u]?rxvt"
   #exclude :instance => "mutt|ncmpcpp|pianobar"
end

# Science
tag "science", "avogadro|BKchem|chemtool"

# Launcher, Attention
tag "launcher" do
  match "kupfer|gmrun|synapse|tilda"
  urgent true
  splash true
end

tag "attention" do
  match "obmixer"
  urgent true
  splash true
end

# Placement
tag "editor" do
  match  "medit|geany|gedit|pyroom|gvim|cvim|emacs"
  resize false
end

tag "fixed" do
  geometry [ 10, 10, 100, 100 ]
  stick    true
end

tag "resize" do
  match  "sakura|gvim"
  resize false
end

tag "gravity" do
  gravity :center
end

# Modes
tag "stick" do
  match "gmrun|obmixer|synapse|tilda"
  float true
  stick true
end

tag "float" do
  match "display"
  float true
end

# Gimp
tag "gimp_image" do
  match   :role => "gimp-image-window"
  gravity :gimp_image
end

tag "gimp_toolbox" do
  match   :role => "gimp-toolbox$"
  gravity :gimp_toolbox
end

tag "gimp_dock" do
  match   :role => "gimp-dock"
  gravity :gimp_dock
end

tag "gimp" do
  match   "gimp"
  #gravity :gimp_dock
end

tag "inkscape" do
   match "inkscape"
end

# Shutdown Dialog
tag "" do
   match "shutdown-dialog.py"
   float true
   gravity :center
   urgent true
   stick true
end

# Flash Full Screen
tag "flash" do
   match "<unknown>|exe|operapluginwrapper|npviewer.bin" 
   stick true
end

# Console-Based

tag "mutt" do
   match :instance => "mutt" 
end

tag "ncmpcpp" do
   match :instance => "ncmpcpp" 
end

tag "pianobar" do
   match :instance => "pianobar" 
end

# Exclusions

#tag "terms" do
#   exclude :instance => "mutt|ncmpcpp"
#end

#
# == Views
#
# Views are the virtual desktops in subtle, they show all windows that share a
# tag with them. Windows that have no tag will be visible on the default view
# which is the view with the default tag or the first defined view when this
# tag isn't set.
#
# Like tags views can be defined in two ways:
#
# === Simple
#
# The simple way is exactly the same as for tags:
#
# Example:
#
#   view "terms", "terms"
#
# === Extended
#
# The extended way for views is also similar to the tags, but with fewer
# properties.
#
# Example:
#
#  view "terms" do
#    match "terms"
#    icon  "/usr/share/icons/icon.xbm"
#  end
#
# === Properties
#
# [*match*]      This property adds a matching pattern to a view. Matching
#                works either via plaintext or regex (see man regex(7)) and
#                applies to names of tags.
#
#                Example: match "terms"
#
# [*dynamic*]    This property hides unoccupied views, views that display no
#                windows.
#
#                Example: dynamic true
#
# [*icon*]       This property adds an icon in front of the view name. The
#                icon can either be path to an icon or an instance of
#                Subtlext::Icon.
#
#                Example: icon "/usr/share/icons/icon.xbm"
#                         icon Subtlext::Icon.new("/usr/share/icons/icon.xbm")
#
# [*icon_only*]  This property hides the view name from the view buttons, just
#                the icon will be visible.
#
#                Example: icon_only true
#
#
# === Link
#
# http://subforge.org/wiki/subtle/Tagging
#

#view "term", "terms|default"
#view "www",   "browser"
#view "gimp",  "gimp_.*"
#view "dev",   "editor"
#view "file", "filemanager"

view "" do
	match "filemanager|default"
	icon "~/.icons/xbm2/arch2.xbm"
end

view "" do
	match "writing|ebooks"
	icon "~/.icons/xbm2/screen.xbm"
end

view "" do
	match "browser"
	icon "~/.icons/xbm2/world.xbm"
end

view "" do
	match "terms|text"
	icon "~/.icons/xbm2/terminal.xbm"
end

view "" do
	match "office"
	icon "~/.icons/xbm2/bag.xbm"
end

view "" do
	match "music|video|ncmpcpp"
	icon "~/.icons/xbm2/note1.xbm"
end

view "" do
	match "graphics|gimp_image|gimp_toolbox|gimp_dock"
	icon "~/.icons/xbm2/wand.xbm"
end

view "" do
	match "chat"
	icon "~/.icons/xbm2/balloon.xbm"
end

view "" do
	match "mail"
	icon "~/.icons/xbm2/mail.xbm"
end
#view "mail" do
#   match "mutt"
#   icon  "/home/aj/.icons/xbm2/mail.xbm"
#end


#
# == Sublets
#
# Sublets are Ruby scripts that provide data for the panel and can be managed
# with the sur script that comes with subtle.
#
# === Example
#
#  sur install clock
#  sur uninstall clock
#  sur list
#
# === Configuration
#
# All sublets have a set of configuration values that can be changed directly
# from the config of subtle.
#
# There are three default properties, that can be be changed for every sublet:
#
# [*interval*]    Update interval of the sublet
# [*foreground*]  Default foreground color
# [*background*]  Default background color
#
# sur can also give a brief overview about properties:
#
# === Example
#
#   sur config clock
#
# The syntax of the sublet configuration is similar to other configuration
# options in subtle:
#
# === Example
#
#  sublet :clock do
#    interval      30
#    foreground    "#eeeeee"
#    background    "#000000"
#    format_string "%H:%M:%S"
#  end
#
#  === Link
#
# http://subforge.org/wiki/subtle/Sublets
#

#
# == Hooks
#
# And finally hooks are a way to bind Ruby scripts to a certain event.
#
# Following hooks exist so far:
#
# [*:client_create*]    Called whenever a window is created
# [*:client_configure*] Called whenever a window is configured
# [*:client_focus*]     Called whenever a window gets focus
# [*:client_kill*]      Called whenever a window is killed
#
# [*:tag_create*]       Called whenever a tag is created
# [*:tag_kill*]         Called whenever a tag is killed
#
# [*:view_create*]      Called whenever a view is created
# [*:view_configure*]   Called whenever a view is configured
# [*:view_jump*]        Called whenever the view is switched
# [*:view_kill*]        Called whenever a view is killed
#
# [*:tile*]             Called on whenever tiling would be needed
# [*:reload*]           Called on reload
# [*:start*]            Called on start
# [*:exit*]             Called on exit
#
# === Example
#
# This hook will print the name of the window that gets the focus:
#
#   on :client_focus do |c|
#     puts c.name
#   end
#
# === Link
#
# http://subforge.org/wiki/subtle/Hooks
#

# vim:ts=2:bs=2:sw=2:et:fdm=marker

# hooks
on :start do
   Subtlext::Subtle.spawn "nitrogen --restore" 
end
on :start do
   Subtlext::Subtle.spawn "dropbox start" 
end
on :start do
   Subtlext::Subtle.spawn "tilda" 
end
on :start do
   Subtlext::Subtle.spawn "kupfer --no-splash" 
end
# wifi
sublet :wifi do
  interval      1
  foreground    "#cc7833"
  background    "#151515"
end
# weather
  sublet :weather do
    interval      10
    locale   "en"
    location "60657"
  end
# clock
  sublet :clock do
    interval      30
    foreground    "#dca3a3"
#    background    "#000000"
    format_string "%I:%M %p"
  end
  # mpd
  sublet :mpd do
         # interval      30
     #foreground    "#F0DFAF"
         #    background    "#000000"
     format_string "%note% %title%"
     show_colors   "true"
    # show_icons    "false"
     stop_text     "" 
     not_running_text "mpd is not running"
     pause_text    "music paused"
  end  
  # volume
  sublet :volume do
         # interval      30
             foreground    "#9FAFAF"
         #    background    "#000000"
     #format_string "%note%"
  end
  #             

