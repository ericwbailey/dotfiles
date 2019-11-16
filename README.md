# New System Setup


## Table of Contents

1. [First steps](#first-steps)
    1. [Clone this repo](#clone-this-repo)
    1. [Updates, syncing, and password/license access](#updates-syncing-and-passwordlicense-access)
    1. [Disable SIP](#disable-sip)
    1. [Xcode](#xcode)
    1. [Browsers](#browsers)
1. [Installs](#installs)
    1. [Homebrew](#homebrew)
    1. [mas](#mas)
    1. [Non-app Store](#non-app-store)
    1. [NVM](#nvm)
    1. [NPM](#npm)
    1. [Python](#python)
    1. [Ruby](#ruby)
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
1. `cd ~ && git clone https://github.com/ericwbailey/dotfiles.git`


### Updates, syncing, and password/license access

1. Check for system and app updates, reboot if necessary
1. Show hidden files: `defaults write com.apple.finder AppleShowAllFiles YES && killall -KILL Finder`
1. Install [Dropbox](https://www.dropbox.com/downloading?src=index) and start syncing
1. Install [1Password](https://itunes.apple.com/us/app/1password-password-manager/id443987910?mt=12), and [browser extensions](https://agilebits.com/onepassword/extensions)
1. Sign in to relevant accounts in `System Preferences > Mail, Contacts, & Calendars`

### Disable SIP

1. [Disable SIP](https://ohthehugemanatee.org/blog/2015/10/01/how-i-got-el-capitain-working-with-my-developer-tools/): `csrutil disable`
1. Fix permissions on `/usr/local`: `sudo chflags norestricted /usr/local && sudo chown $(whoami):admin /usr/local && sudo chown -R $(whoami):admin /usr/local`

### Xcode

1. [Install Xcode](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12) and get all and available Downloads in Preferences
1. Install Xcode Command Line Tools: `xcode-select --install`

### Browsers

- [Blisk](https://blisk.io/)
- [Chrome](https://www.google.com/chrome/)
    1. Set as default
    1. Import Humble New Tab Page settings:   `{"column.2.2":"devices","options.weather_units":"f","column.0.0":"top","column.1.0":"closed","options.hide_options":"1","options.width":"1.321","options.theme":"Elegant","column.2.0":"1","options.show_apps":"0","options.weather_location_id":"2367105","options.spacing":"1.086","options.h_pos":"1.465","options.number_closed":"15","options.lock":"1","options.weather_location":"Boston, MA","options.font_size":"18","column.2.1":"recent","options.show_2":"0"}`
- [Chrome Canary](https://www.google.com/chrome/browser/canary.html)
- [Duo](https://itunes.apple.com/us/app/duo/id777886035?mt=12)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
    1. Tweak Firefox config
    1. Sync uBlock settings
    1. Sync Stylus settings
- [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
- [Opera](http://www.opera.com/)
- [Opera Developer](http://www.opera.com/developer)
- [Safari Technology Preview](https://developer.apple.com/safari/technology-preview/)
- [Vivaldi](https://vivaldi.com/)


## Installs

### Homebrew

1. Install [Homebrew](http://brew.sh/): `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
1. Check which git and set the `$PATH`, [see this article](http://sourabhbajaj.com/mac-setup/Homebrew/README.html)
1. Install [`.brew`](https://github.com/ericwbailey/dotfiles/blob/master/.brew): `sh .brew`

### mas

1. Install [`.macos`](https://github.com/ericwbailey/dotfiles/blob/master/.macos): `sh .macos`

### Non-app Store

These apps can't be installed by Homebrew Cask or mas.

- [Gifmock](https://gifmock.com/)
- [Hosts.prefpane](https://github.com/specialunderwear/Hosts.prefpane)
- [Lookback](https://lookback.io/usb)
- [Network Link Conditioner](http://nshipster.com/network-link-conditioner/)
- [Screenotate](https://screenotate.com/)
- [Simple Proxy](https://github.com/dfmcphee/simple-proxy)
- [Tripmode](https://www.tripmode.ch/)

Ensure preferences for **Alfred**, **Hazel**, **iTerm**, and **Mackup** are synced.


### NVM

1. Install via `curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash`
1. Check for local node versions via `nvm ls`
1. Check for remote versions via `nvm ls-remote`
1. Install any remote versions as needed
1. Reinstall any packages installed to non-system versions via `nvm reinstall-packages system`


### NPM

1. Check to see if Homebrew is installed
1. `npm install -g
a11y
autogit
axe-cli
browserify
caniuse-cmd
commandcar
cpy
empty-trash-cli
firebase-tools
fkill
fkill-cli
get-port
git-labelmaker
git-open
git-pending
git-standup
gitjk
glyphhanger
hint
http-server
internal-ip
itunes-remote
is-up
less
mkdirp
nativefier
node-gyp
npm-run-all
ntl
open
pageres
pageres-cli
public-ip
sass
siteaudit
stacks-cli
tldr
trash-cli
vtop
yo`
1. Additionally, you might want to consider installing these packages globally: `npm install -g
axe-core
browser-sync
grunt-cli
gulp-cli
jshint
npm-package-updates`

### Python

1. Check to see if Homebrew is installed
1. `pip3 install
aws-shell
Babel
colout
proselint
Pygments
pytz
setuptools
thefuck
waybackpack
parker
request`

### Ruby

1. Install [rbenv](https://github.com/sstephenson/rbenv)
1. `rbenv install 2.6.5`
1. `rbenv global 2.6.5`
1. Ensure that `.bash_profile` points to the new version of Ruby
1. `gem install
bundler
foreman
haml
jekyll
mustache
pg
rails
rmagick
thin
scss_lint
slim`


## System setup

### System Preferences
1. Review [System Preferences settings](https://github.com/ericwbailey/dotfiles/blob/master/System%20Preferences.md)
1. Ensure that [color is properly set up for Adobe](http://bjango.com/articles/photoshop/) and [Sketch](https://bjango.com/articles/colourmanagementsettings/)
1. Install services
    - [TextFlow](https://github.com/vmdanilov/TextFlow)
    - [foldersstructure](https://www.dropbox.com/sh/7ua9gl8ppmkl7wk/AAA5sW3b1UgaYLH4vbeLpRMIa?dl=0)

### Dock

1. Preview (Assign to None)
1. iTunes (Assign to None)
1. 1Password (Assign to None)
1. FontExplorer X (Assign to All Desktops)
1. Bear (Assign to None)
1. LightPaper (Assign to None)
1. Todoist (Assign to None)
1. Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
1. Trello (Assign to None)
1. Shift (Assign to All Desktops)
1. Slack (Assign to All Desktops)
1. Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
1. iTerm (Assign to None)
1. VS Code (Assign to All Desktops)
1. Tower (Assign to Desktop 2)
1. Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
1. Chrome (Assign to All Desktops)
1. Firefox (Assign to All Desktops)
1. Safari (Assign to All Desktops)
1. Opera (Assign to All Desktops)
1. Duo (Assign to All Desktops)
1. Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
1. Sketch (Assign to None)
1. Figma (Assign to None)
1. Pixelmator pro (Assign to None)
1. Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`

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

### Notification Center

1. World Clock
    1. Boston (Eastern)
    1. Chicago (Central)
    1. San Francisco (Western)
    1. London (Greenwich)
1. Monity
    1. System
    1. Memory
    1. Network
    1. Battery

### Set up spaces and wallpapers

1. Set up spaces
1. Set wallpapers


### Menu Bar

1. Mail Notifr
1. Dropbox
1. Dropzone
1. Time
1. Itsycal
1. Battery
1. Bartender (left to right)
    1. Location Services
    1. Bluetooth
    1. Adobe Creative Cloud
    1. ControlPlane
    1. 1Password Mini
    1. Better Window Manager
    1. AirPlay
    1. Quitter
    1. Username
    1. Bartender Preferences
1. Notification Center

### Fonts

1. Download and set editors to use [FiraCode-Retina](https://github.com/tonsky/FiraCode)
    - LightPaper
1. Migrate FontExplorer X sets and lists


## Wrapup

1. Set general operating system preferences: `sh .macos`
1. Reboot and double check `System Preferences > Users & Groups > Login Items` and set a login picture
1. Reboot, install [Prey](https://www.preyproject.com/), then double-check it and Find My Mac's Location Services access
1. [Re-enable SIP](https://ohthehugemanatee.org/blog/2015/10/01/how-i-got-el-capitain-working-with-my-developer-tools/): `csrutil enable`
1. Set SlowQuitApps quit time: `defaults write com.dteoh.SlowQuitApps delay -int 250`
1. Load [BetterTouchTool preferences](https://github.com/ericwbailey/dotfiles/blob/master/Default.bttpreset)
1. [Sync VS Code](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) settings
1. Log laptop serial number in 1Password
1. Delete setup files (`README.md`, `.osx`, etc.)
1. Turn `LoginLaunch.applescript` into an app and add to Login Items
1. Store window sizes/positions in Stay
1. Add Dropzone shortcuts
1. Set up [Caps Lock as Insert for Windows](https://www.paciellogroup.com/blog/2013/08/insert-key-usage-in-windows-on-a-mac/)
1. Grant [chron jobs](https://blog.bejarano.io/fixing-cron-jobs-in-mojave.html) full disk access


## References

- http://sourabhbajaj.com/mac-setup/
- https://github.com/mathiasbynens/dotfiles
- http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac
- http://jesseatkinson.org/writing/2013/9/8/setting-up-a-new-mac
- https://github.com/herrbischoff/awesome-osx-command-line
- https://blog.bejarano.io/hardening-macos.html


🔒 Requires app-specific password
