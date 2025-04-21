---
tags:
  - tech/linux/i3
---

# How to Config I3 on Linux

# How to Config I3 on Linux

# i3-tips

font pango:monospace 8

# Use Mouse+$mod to Drag Floating Windows to Their Wanted Position

floating_modifier $mod

# Start a Terminal

bindsym $mod+Return exec i3-sensible-terminal

# Kill Focused Window

bindsym $mod+Shift+q kill

# Start Dmenu (a Program launcher)

bindsym $mod+d exec dmenu_run

# There also is the (new) i3-dmenu-desktop Which only Displays Applications

# Shipping a .desktop File. It is a Wrapper around Dmenu, so You Need that

# Installed

# Bindsym $mod+d Exec –no-startup-id i3-dmenu-desktop

# Change Focus

bindsym $mod+h focus left

bindsym $mod+j focus down

bindsym $mod+k focus up

bindsym $mod+l focus right

# Alternatively, You Can Use the Cursor Keys

bindsym $mod+Left focus left

bindsym $mod+Down focus down

bindsym $mod+Up focus up

bindsym $mod+Right focus right

# Move Focused Window

bindsym $mod+Shift+h move left

bindsym $mod+Shift+j move down

bindsym $mod+Shift+k move up

bindsym $mod+Shift+l move right

# Alternatively, You Can Use the Cursor Keys

bindsym $mod+Shift+Left move left

bindsym $mod+Shift+Down move down

bindsym $mod+Shift+Up move up

bindsym $mod+Shift+Right move right

# Split in Horizontal Orientation

bindsym $mod+Shift+v split h

# Split in Vertical Orientation

bindsym $mod+v split v

# Enter Fullscreen Mode for the Focused Container

bindsym $mod+f fullscreen toggle

# Change Container Layout (stacked, Tabbed, Toggle split)

bindsym $mod+s layout stacking

bindsym $mod+w layout tabbed

bindsym $mod+e layout toggle split

# Toggle Tiling / Floating

bindsym $mod+Shift+space floating toggle

# Change Focus between Tiling / Floating Windows

bindsym $mod+space focus mode_toggle

# Focus the Parent Container

bindsym $mod+a focus parent

# Focus the Child Container

```
[[bindsym]] $mod+d focus child
```

# Define Names for Default Workspaces for Which We Configure Key Bindings Later on

# We Use Variables to Avoid Repeating the Names in Multiple Places

set $ws1 “1”

set $ws2 “2”

set $ws3 “3”

set $ws4 “4”

set $ws5 “5”

set $ws6 “6”

set $ws7 “7”

set $ws8 “8”

set $ws9 “9”

set $ws10 “10”

# Switch to Workspace

bindsym $mod+1 workspace $ws1

bindsym $mod+2 workspace $ws2

bindsym $mod+3 workspace $ws3

bindsym $mod+4 workspace $ws4

bindsym $mod+5 workspace $ws5

bindsym $mod+6 workspace $ws6

bindsym $mod+7 workspace $ws7

bindsym $mod+8 workspace $ws8

bindsym $mod+9 workspace $ws9

bindsym $mod+0 workspace $ws10

# Move Focused Container to Workspace

bindsym $mod+Shift+1 move container to workspace $ws1

bindsym $mod+Shift+2 move container to workspace $ws2

bindsym $mod+Shift+3 move container to workspace $ws3

bindsym $mod+Shift+4 move container to workspace $ws4

bindsym $mod+Shift+5 move container to workspace $ws5

bindsym $mod+Shift+6 move container to workspace $ws6

bindsym $mod+Shift+7 move container to workspace $ws7

bindsym $mod+Shift+8 move container to workspace $ws8

bindsym $mod+Shift+9 move container to workspace $ws9

bindsym $mod+Shift+0 move container to workspace $ws10

# Reload the Configuration File

bindsym $mod+Shift+c reload

# Restart I3 Inplace (preserves Your layout/session, Can Be Used to Upgrade i3)

bindsym $mod+Shift+r restart

# Exit I3 (logs You out of Your X session)

bindsym $mod+Shift+e exec “i3-nagbar -t warning -m ‘You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.’ -B ‘Yes, exit i3’ ‘i3-msg exit’”

# Resize Window (you Can also Use the Mouse for that)

mode “resize” {

# These Bindings Trigger as soon as You Enter the Resize Mode

```
    # Pressing left will shrink the window’s width.
    # Pressing right will grow the window’s width.
    # Pressing up will shrink the window’s height.
    # Pressing down will grow the window’s height.
    bindsym h resize shrink width 10 px or 10 ppt
    bindsym j resize grow height 10 px or 10 ppt
    bindsym k resize shrink height 10 px or 10 ppt
    bindsym l resize grow width 10 px or 10 ppt

    # same bindings, but for the arrow keys
    bindsym Left resize shrink width 10 px or 10 ppt
    bindsym Down resize grow height 10 px or 10 ppt
    bindsym Up resize shrink height 10 px or 10 ppt
    bindsym Right resize grow width 10 px or 10 ppt

    # back to normal: Enter or Escape or $mod+r
    bindsym Return mode "default"
    bindsym Escape mode "default"
    bindsym $mod+r mode "default"

```

}

bindsym $mod+r mode “resize”

# Start i3bar to Display a Workspace bar (plus the System Information i3status

# Finds Out, if available)

bar {

status_command i3status

}

workspace 1 output LVDS1

workspace 2 output HDMI1

exec –no-startup-id nm-applet