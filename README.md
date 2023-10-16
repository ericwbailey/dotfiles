# New System Setup


## Table of Contents

1. [First steps](#first-steps)
    1. [Clone this repo](#clone-this-repo)
    1. [Disable SIP](#disable-sip)
    1. [NVM](#nvm)
    1. [Xcode](#xcode)
    1. [Updates, syncing, and password/license access](#updates-syncing-and-passwordlicense-access)
    1. [Browsers](#browsers)
1. [Installs](#installs)
    1. [Homebrew](#homebrew)
    1. [mas](#mas)
    1. [NPM](#npm)
    1. [Python](#python)
    1. [Ruby](#ruby)
    1. [Non-app Store](#non-app-store)
1. [System setup](#system-setup)
    1. [System Preferences](#system-preferences)
    1. [Dock](#dock)
    1. [Finder view preferences](#finder-view-preferences)
    1. [Finder toolbar](#finder-toolbar)
    1. [Finder sidebar](#finder-sidebar)
    1. [Notification Center](#notification-center)
    1. [Set up spaces and wallpapers](#set-up-spaces-and-wallpapers)
    1. [Menu Bar](#menu-bar)
    1. [Fonts](#fonts)
1. [Wrapup](#wrapup)
1. [References](#references)


## First steps

### Clone this repo
1. Show hidden files: `defaults write com.apple.finder AppleShowAllFiles YES && killall -KILL Finder`
1. `cd ~ && git clone https://github.com/ericwbailey/dotfiles.git`
1. Move files to appropriate locations
1. [Install Antigen](https://github.com/zsh-users/antigen#installation) to `~/.zsh`

### Disable SIP

1. [Disable SIP](https://ohthehugemanatee.org/blog/2015/10/01/how-i-got-el-capitain-working-with-my-developer-tools/): `csrutil disable`
1. Fix permissions on `/usr/local`: `sudo chflags norestricted /usr/local && sudo chown $(whoami):admin /usr/local && sudo chown -R $(whoami):admin /usr/local`

### NVM

1. [Install the latest version](https://github.com/nvm-sh/nvm#installing-and-updating)
1. Check for local node versions via `nvm ls`
1. Check for remote versions via `nvm ls-remote`
1. Install any remote versions as needed
1. Reinstall any packages installed to non-system versions via `nvm reinstall-packages system`

### Xcode

1. [Install Xcode](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12) and get all and available Downloads in Preferences
1. Install Xcode Command Line Tools: `xcode-select --install`

### Updates, syncing, and password/license access

1. Check for system and app updates, reboot if necessary
1. Sign in to relevant accounts in `System Preferences > Internet Accounts`
1. Install [Dropbox](https://www.dropbox.com/downloading?src=index) and start syncing
1. Install [1Password](https://itunes.apple.com/us/app/1password-password-manager/id443987910?mt=12), and [browser extensions](https://agilebits.com/onepassword/extensions)

### Browsers

- [Chrome](https://www.google.com/chrome/)
    1. Set as default
    1. Import Humble New Tab Page settings:   `{"column.2.2":"devices","options.weather_units":"f","column.0.0":"top","column.1.0":"closed","options.hide_options":"1","options.width":"1.321","options.theme":"Elegant","column.2.0":"1","options.show_apps":"0","options.weather_location_id":"2367105","options.spacing":"1.086","options.h_pos":"1.465","options.number_closed":"15","options.lock":"1","options.weather_location":"Boston, MA","options.font_size":"18","column.2.1":"recent","options.show_2":"0"}`
- [Chrome Canary](https://www.google.com/chrome/browser/canary.html)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
    1. Tweak Firefox config
    1. Sync uBlock settings
    1. Sync Stylus settings
- [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
- [Safari Technology Preview](https://developer.apple.com/safari/technology-preview/)
- [Edge](https://www.microsoft.com/en-us/edge)
- [Polypane](https://polypane.app/download/)


## Installs

### Homebrew

1. Install [Homebrew](http://brew.sh/): `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
1. Check to make sure everything is working: `brew doctor`
1. Check which git and set the `$PATH`, [see this article](http://sourabhbajaj.com/mac-setup/Homebrew/README.html)
1. Install [`.brew`](https://github.com/ericwbailey/dotfiles/blob/main/.brew): `sh .brew`
1. Rerun `brew doctor`

### mas

1. Install [`.macos`](https://github.com/ericwbailey/dotfiles/blob/main/.macos): `sh .macos`

### NPM

1. `npm install -g
alfred-dark-mode
autogit 
caniuse-cmd 
cpy 
empty-trash-cli 
fkill 
fkill-cli 
get-port 
git-labelmaker 
git-open 
git-user-switch
gitjk 
glyphhanger 
http-server 
internal-ip 
is-up 
mkdirp 
ntl 
open 
public-ip 
stacks-cli 
tldr 
trash-cli 
vtop`

### Python

1. `python3 -m pip install
Babel
proselint
Pygments
setuptools
waybackpack`

### Ruby

1. Install [rbenv](https://github.com/sstephenson/rbenv): `brew install rbenv`
1. [Install the latest version](https://www.ruby-lang.org/en/downloads/)
1. Set the latest version globally: `rbenv global x.x.x`
1. Ensure that `.zshenv` points to the new version of Ruby
1. `gem install
bundler
foreman
haml
mustache
pg
rails
rmagick
thin
scss_lint
slim`

### Non-app Store

These apps can't be installed by Homebrew Cask or mas.

- [Creative Cloud](https://www.adobe.com/creativecloud/desktop-app.html)
- [Gifmock](https://gifmock.com/)
- [Hosts.prefpane](https://github.com/specialunderwear/Hosts.prefpane)
- [JPEG Mini](https://www.jpegmini.com/)
- [Local](https://localwp.com/)
- [Network Link Conditioner](http://nshipster.com/network-link-conditioner/)
- [Screenotate](https://screenotate.com/)
- [Simple Proxy](https://github.com/dfmcphee/simple-proxy)
- [Webponize](https://webponize.org)

Ensure preferences for **Alfred**, **Hazel**, **iTerm**, and **Mackup** are synced.


## System setup

### System Preferences
1. Review [System Preferences settings](https://github.com/ericwbailey/dotfiles/blob/main/System%20Preferences.md)
1. Ensure that [color is properly set up for Adobe](http://bjango.com/articles/photoshop/) and [Sketch](https://bjango.com/articles/colourmanagementsettings/)
1. Install services
    - [TextFlow](https://github.com/vmdanilov/TextFlow)

### Dock

1. Preview
1. Music
1. 1Password
1. RightFont
1. Obsidian
1. Todoist
1. Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
1. Zoom
1. Shift
1. Discord
1. Slack
1. Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
1. iTerm
1. VS Code
1. Tower
1. Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
1. Chrome
1. Firefox
1. Safari
1. Edge
1. Polypane
1. Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
1. Pixelmator Pro
1. Figma
1. Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`

### Desktop view preferences

- Show Hard Drives in Finder preferences
- Stack by none
- Sort by Snap to Grid
- Icon size: 48x48
- Grid spacing: Largest
- Text size: 12
- Label position: Right
- ☑️ Show item info
- ☑️ Show icon position


### Finder view preferences

Be sure to set from system root level so preferences propagate up to all user directories).

- Always open in column view
- Browse in column view
- Arrange by Kind
- Sort by Kind
    - Text Size: 12
    - Show icons
    - Show icon preview
    - Show preview column

### Finder toolbar

1. Back/Forward
1. Path
1. Connect
1. Share
1. Search

### Finder sidebar
1. Favorites
    1. Desktop
    1. home
    1. AirDrop
    1. Applications
    1. Documents
    1. Sites
    1. Dropbox
1. Devices
1. Shared


### Set up spaces and wallpapers

1. Set up spaces
1. Set wallpapers


### Menu Bar

#### Shown

1. MeetingBar
1. Mail Notifr
1. Dropzone
1. Dropbox
1. Dato
1. Bartender (left to right)
1. Battery
1. Notification Center

#### Hidden
 
1. Rectangle
1. 1Password
1. Stay
1. Creative Cloud
1. BetterTouchTool
1. Quitter
1. Bluetooth
1. Backblaze


## Wrapup

1. Set general operating system preferences: `sh .macos`
1. Reboot and double check `System Preferences > Users & Groups > Login Items` and set a login picture
1. Reboot, install [Prey](https://www.preyproject.com/), then double-check it and Find My Mac's Location Services access
1. [Re-enable SIP](https://ohthehugemanatee.org/blog/2015/10/01/how-i-got-el-capitain-working-with-my-developer-tools/): `csrutil enable`
1. Set SlowQuitApps quit time: `defaults write com.dteoh.SlowQuitApps delay -int 250`
1. Load BetterTouchTool preferences
1. Sync VS Code settings
1. Log laptop serial number in 1Password
1. Delete setup files (`README.md`, `.osx`, etc.)
1. Turn `LoginLaunch.applescript` into an app and grant acccess permissions
1. Store window sizes/positions in Stay
1. Add Dropzone shortcuts
1. Sync CiderTV with Apple TV
1. Migrate FontExplorer X sets and lists
1. Use [TouchID for `sudo`](https://davidwalsh.name/touch-sudo)
1. Set up [Caps Lock as Insert for Windows](https://www.paciellogroup.com/blog/2013/08/insert-key-usage-in-windows-on-a-mac/)
1. Grant [cron jobs](https://www.bejarano.io/fixing-cron-jobs-in-mojave/) full disk access
1. Set up [GitHub personal access tokens](https://github.com/settings/tokens)
    1. Laptop [`.gitconfig`](https://github.com/ericwbailey/dotfiles/blob/main/.gitconfig#L9)
    1. Refined GitHub, Chrome
    1. Refined GitHub, Firefox
    1. Tower


## References

- http://sourabhbajaj.com/mac-setup/
- https://github.com/mathiasbynens/dotfiles
- http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac
- http://jesseatkinson.org/writing/2013/9/8/setting-up-a-new-mac
- https://github.com/herrbischoff/awesome-osx-command-line
- https://blog.bejarano.io/hardening-macos.html

🔒 Requires app-specific password
