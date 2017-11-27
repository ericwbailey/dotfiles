# New System Setup


## Table of Contents

1. [First steps](#first-steps)
    1. [Updates, syncing, and password/licenses access](#updates-syncing-and-passwordlicenses-access)
    - [Browsers](#browsers)
    - [Disable SIP](#disable-sip)
    - [Xcode](#xcode)
- [Installs](#installs)
    1. [App Store](#app-store)
    - [Homebrew](#homebrew)
    - [Non-app Store](#non-app-store)
    - [Plugins](#plugins)
    - [NVM](#nvm)
    - [NPM](#npm)
    - [Python](#python)
    - [Ruby](#ruby)
- [System setup](#system-setup)
    1. [System Preferences](#system-preferences)
    - [Dock](#dock)
    - [Finder view preferences](#finder-view-preferences)
    - [Finder Toolbar](#finder-toolbar)
    - [Finder Sidebar](#finder-sidebar)
    - [Notification Center](#notification-center)
    - [Set up spaces, wallpapers, and custom app icons](#set-up-spaces-wallpapers-and-custom-app-icons)
    - [Menu Bar](#menu-bar)
    - [Fonts](#fonts)
- [Wrapup](#wrapup)
- [References](#references)


## First steps

### Clone this repo
1. [ ] `cd ~ && git clone https://github.com/ericwbailey/dotfiles.git`


### Updates, syncing, and password/license access
1. [ ] Check for system and app updates, reboot if necessary
- [ ] Show hidden files: `defaults write com.apple.finder AppleShowAllFiles YES` 
- [ ] Install [Dropbox](https://www.dropbox.com/downloading?src=index) and start syncing
- [ ] Install [1Password](https://itunes.apple.com/us/app/1password-password-manager/id443987910?mt=12), and [browser extensions](https://agilebits.com/onepassword/extensions)
- [ ] Sign in to relevant accounts in `System Preferences > Mail, Contacts, & Calendars`

### Browsers
- [ ] [Blisk](https://blisk.io/)
- [ ] [Chrome](https://www.google.com/chrome/)
    1. [ ] Set as default
- [ ] [Chrome Canary](https://www.google.com/chrome/browser/canary.html)
- [ ] [Duo](https://itunes.apple.com/us/app/duo/id777886035?mt=12)
- [ ] [Firefox](https://www.mozilla.org/en-US/firefox/new/)
    1. [ ] Tweak Firefox config
    - [ ] Sync uBlock settings
- [ ] [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
- [ ] [Opera](http://www.opera.com/)
- [ ] [Opera Developer](http://www.opera.com/developer)
- [ ] [Safari Technology Preview](https://developer.apple.com/safari/technology-preview/)
- [ ] [Vivaldi](https://vivaldi.com/)

### Disable SIP
1. [ ] [Disable SIP](https://ohthehugemanatee.org/blog/2015/10/01/how-i-got-el-capitain-working-with-my-developer-tools/): `csrutil disable`
- [ ] Fix permissions on `/usr/local`: `sudo chflags norestricted /usr/local && sudo chown $(whoami):admin /usr/local && sudo chown -R $(whoami):admin /usr/local`

### Xcode
1. [ ] [Install Xcode](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12) and get all and available Downloads in Preferences
- [ ] Install Xcode Command Line Tools: `xcode-select --install`


## Installs

### Homebrew
1. [ ] Install [Homebrew](http://brew.sh/): `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- [ ] Check which git and set the `$PATH`, [see this article](http://sourabhbajaj.com/mac-setup/Homebrew/README.html)
- [ ] Install [`.brew`](https://github.com/ericwbailey/dotfiles/blob/master/.brew): `sh .brew`

### mas
- [ ] Install [`.macos`](https://github.com/ericwbailey/dotfiles/blob/master/.macos): `sh .macos`

### App Store
- [ ] [Blind](https://itunes.apple.com/us/app/blind-1x-browser/id687450044) `687450044`
- [ ] [DaisyDisk](https://itunes.apple.com/us/app/daisydisk/id411643860) `411643860`
- [ ] [Contrast](https://itunes.apple.com/app/contrast/id1254981365) `1254981365`
- [ ] [GIF Brewery 3](https://itunes.apple.com/us/app/gif-brewery-3-video-to-gif/id1081413713) `1081413713`
- [ ] [GIPHY CAPTURE](https://itunes.apple.com/us/app/giphy-capture.-the-gif-maker/id668208984) `668208984 `
- [ ] [Glyphs](https://itunes.apple.com/us/app/glyphs-mini/id469036911) `416987633`
- [ ] [HyperDock](https://itunes.apple.com/us/app/hyperdock/id449830122) `449830122`
- [ ] [Icon Slate](https://itunes.apple.com/us/app/icon-slate/id439697913) `439697913`
- [ ] [Integrity](https://itunes.apple.com/us/app/integrity/id513610341) `513610341`
- [ ] [JPEGmini](https://itunes.apple.com/us/app/jpegmini/id498944723) `498944723`
- [ ] [Mail Notifr](https://itunes.apple.com/us/app/mail-notifr/id808154494) `808154494` 🔒
- [ ] [MindNode](https://itunes.apple.com/us/app/mindnode-2-delightful-mind/) `992076693`
- [ ] [Monity](https://itunes.apple.com/us/app/monity/id915542151?mt=12) `915542151 `
- [ ] [Monotony](https://itunes.apple.com/us/app/monotony/id533978766?mt=12) `533978766`
- [ ] [Page Layers](https://itunes.apple.com/us/app/page-layers-website-screenshots/id437835477)
- [ ] [PicGIF](https://itunes.apple.com/us/app/picgif/id784260229)
- [ ] [Pixelmator](https://itunes.apple.com/us/app/pixelmator/id407963104) `407963104`
- [ ] [Raster](https://itunes.apple.com/us/app/raster/id946873079) `946873079`
- [ ] [Screens VNC](https://itunes.apple.com/us/app/screens-vnc-remote-access/id446107677) `446107677`
- [ ] [SiteSucker](https://itunes.apple.com/us/app/sitesucker/id442168834) `442168834`
- [ ] [Soulver](https://itunes.apple.com/us/app/soulver/id413965349) `413965349`
- [ ] [Sim Daltonism](https://itunes.apple.com/us/app/sim-daltonism/id693112260) `693112260`
- [ ] [Slack](https://itunes.apple.com/us/app/slack/id803453959?mt=12)
- [ ] [SSH Tunnel](https://itunes.apple.com/us/app/ssh-tunnel/id734418810) `734418810`
- [ ] [TermHere](https://itunes.apple.com/us/app/termhere/id1114363220) `1114363220`
- [ ] [Textual](https://itunes.apple.com/us/app/textual-5/id896450579) `896450579`
- [ ] [Todoist](https://itunes.apple.com/us/app/todoist-to-do-list-task-list/id585829637) `585829637`
- [ ] [Transloader](https://itunes.apple.com/us/app/transloader/id572281534)
- [ ] [Ulysses](https://itunes.apple.com/us/app/ulysses/id623795237) `623795237 `
- [ ] [The Unarchiver](https://itunes.apple.com/us/app/the-unarchiver/id425424353)
- [ ] [World Clock](https://itunes.apple.com/us/app/world-clock/id858446756) `858446756 `
- [ ] [UnPlugged](https://itunes.apple.com/us/app/unplugged/id423123087) `423123087 `

### Non-app Store
These apps can't be installed by [Homebrew Cask](https://github.com/ericwbailey/dotfiles/blob/master/.brew).

- [ ] [CSS Grid Builder](https://cssgrid.cc/)
- [ ] [FontExplorer X Pro](https://www.fontexplorerx.com/)
- [ ] [Gifmock](https://gifmock.com/)
- [ ] [Hosts.prefpane](https://github.com/specialunderwear/Hosts.prefpane)
- [ ] [Lookback](https://lookback.io/usb)
- [ ] [Network Link Conditioner](http://nshipster.com/network-link-conditioner/)
- [ ] [Origami](http://facebook.github.io/origami/download/)
- [ ] [Screenotate](https://screenotate.com/)
- [ ] [Sketch](http://www.sketchapp.com/)
- [ ] [SleepDisplay](http://www.macupdate.com/app/mac/26234/sleepdisplay)
- [ ] [Switch](http://www.nch.com.au/switch/index.html)
- [ ] [Tripmode](https://www.tripmode.ch/)

Ensure preferences for Alfred, Hazel, iTerm, and Mackup are synced. 

### Plugins
- [ ] [Adium](https://adium.im/) 🔒
    - [ ] Service Icons: Aqua
    - [ ] Status Icons: [iPhone](http://www.adiumxtras.com/index.php?a=xtras&xtra_id=4011)
    - [ ] Menu Bar Icons: [Marten-nu](http://www.adiumxtras.com/index.php?a=xtras&xtra_id=7801)
    - [ ] Emoticons: None
    - [ ] Dock Icon: [septi v2.2](http://www.adiumxtras.com/index.php?a=xtras&xtra_id=5403)
- [ ] **Atom**
    - [ ] Install starred packages `apm stars --install`
- [ ] **Sketch**
    - [ ] Toolbar Order
        - [ ] Artboard
        - [ ] Insert
        - [ ] Shape
        - [ ] Make Grid
        - Space
        - [ ] Create Symbol
        - [ ] Symbol
        - [ ] Styled Text
        - Space
        - [ ] Edit
        - [ ] Transform
        - [ ] Rotate
        - [ ] Rotate Copies
        - [ ] Scale
        - Space
        - [ ] Show Grid
        - [ ] Show Layout
        - [ ] Show Pixels
        - [ ] View
        - Space
        - [ ] Scissiors
        - [ ] Mask
        - [ ] Union
        - [ ] Subtract
        - [ ] Intersect
        - [ ] Difference
        - [ ] Flatten
        - Flexible Space
        - [ ] Mirror
        - [ ] Share
    - [ ] [alssndro/sandros-sketch-plugins](https://github.com/alssndro/sandros-sketch-plugins)
    - [ ] [InVision Craft](http://labs.invisionapp.com/craft)
    - [ ] [MagicSketch/MagicPresenter](https://github.com/MagicSketch/MagicPresenter)
    - [ ] [Sketch Runner](http://sketchrunner.com/)
    - [ ] [State Machine](https://evilmartians.com/chronicles/state-machine-the-state-switcher)
    - [ ] [svgo-compressor](https://github.com/BohemianCoding/svgo-compressor)
    - [ ] Artboards
        - [ ] [Auto Layout](https://animaapp.github.io/Auto-Layout/)
        - [ ] [frankko/Artboard-Tools](https://github.com/frankko/Artboard-Tools)
    - [ ] Colors
        - [ ] [andrewfiorillo/sketch-palettes](https://github.com/andrewfiorillo/sketch-palettes)
    - [ ] Generators
        - [ ] [abynim/UserFlows](https://github.com/abynim/UserFlows)
        - [ ] [danielguillan/sketch-syntax-highlighter](https://github.com/danielguillan/sketch-syntax-highlighter/)
        - [ ] [tadija/AEFlowchart](https://github.com/tadija/aeflowchart)
        - [ ] [Looper](http://www.sureskumar.com/looper/)
        - [ ] [preciousforever/sketch-data-populator](https://github.com/preciousforever/sketch-data-populator)
        - [ ] [utom/sketch-measure](https://github.com/utom/sketch-measure)
    - [ ] Layers
        - [ ] [hrescak/Sketch-Layer-Tools](https://github.com/hrescak/Sketch-Layer-Tools)
        - [ ] [https://github.com/rodi01/RenameIt)(rodi01/RenameIt)
    - [ ] Pages
    - [ ] Selection
        - [ ] [sebj/Select-By-Name](https://github.com/sebj/Select-By-Name)
        - [ ] [thierryc/Sketch-Find-And-Replace](https://github.com/thierryc/Sketch-Find-And-Replace)
    - [ ] Sorting, Moving and Placing
        - [ ] [ozzik/push-and-shove](https://github.com/ozzik/push-and-shove)
        - [ ] [romashamin/compo-sketch](https://github.com/romashamin/compo-sketch)
        - [ ] [ScottSavarie/Clipboard-Fill](https://github.com/ScottSavarie/Clipboard-Fill)
    - [ ] Styles
    - [ ] Text and Typography
        - [ ] [nolastan/sync.sketchplugin](https://github.com/nolastan/sync.sketchplugin)

### NVM
1. [ ] Install via `curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash`
- [ ] Check for local node versions via `nvm ls`
- [ ] Check for remote versions via `nvm ls-remote`
- [ ] Install any remote versions as needed
- [ ] Reinstall any packages installed to non-system versions via `nvm reinstall-packages system`


### NPM
1. [ ] Check to see if Homebrew is installed
- [ ] `npm install -g 
axe-cli
bower
browserify
caniuse-cmd
commandcar
cpy
empty-trash-cli
firebase-tools
get-port
git-labelmaker
git-open
git-standup
gitjk
http-server
internal-ip
itunes-remote
is-up
less
mkdirp
nativefier
node-gyp
npm-run-all
opn
pageres
pageres-cli
public-ip
stacks-cli
tldr
trash-cli
vtop
yo`

- [ ] Additionally, you might want to consider installing these packages globally: `npm install -g 
axe-core
browser-sync
grunt-cli
gulp
jshint
npm-package-updates`

### Python
1. [ ] Check to see if Homebrew is installed
- [ ] `pip install 
aws-shell
Babel
colout
eg
proselint
Pygments
pytz
setuptools
thefuck
vboxapi
waybackpack
parker
request
stylelint`

### Ruby
1. [ ] Install [rbenv](https://github.com/sstephenson/rbenv)
- [ ] `rbenv install 2.4.0`
- [ ] `rbenv global 2.4.0`
- [ ] Ensure that `.bash_profile` points to the new version of Ruby
- [ ] `gem install
bundler
foreman
haml
jekyll
mustache
pg
rails
rmagick
thin
sass
scss_lint
slim`


## System setup

### System Preferences
1. [ ] Review [System Preferences settings](https://github.com/ericwbailey/dotfiles/blob/master/System%20Preferences.md)
- [ ] Ensure that [color is properly set up for Adobe](http://bjango.com/articles/photoshop/)
- [ ] Install services
    - [ ] [TextFlow](https://github.com/vmdanilov/TextFlow)
    - [ ] [foldersstructure](https://www.dropbox.com/sh/7ua9gl8ppmkl7wk/AAA5sW3b1UgaYLH4vbeLpRMIa?dl=0)

### Dock
1. [ ] Preview (Assign to None)
- [ ] 1Password (Assign to None)
- [ ] LightPaper (Assign to None)
- [ ] FontExplorer X (Assign to All Desktops)
- [ ] Todoist (Assign to None)
- [ ] Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
- [ ] Slack (Assign to All Desktops)
- [ ] Adium (Assign to None)
- [ ] Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
- [ ] iTerm (Assign to None)
- [ ] Atom (Assign to All Desktops)
- [ ] Tower (Assign to Desktop 2)
- [ ] Kaleidoscope (Assign to None)
- [ ] Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
- [ ] Chrome (Assign to All Desktops)
- [ ] Firefox (Assign to All Desktops)
- [ ] Safari (Assign to All Desktops)
- [ ] Opera (Assign to All Desktops)
- [ ] Duo (Assign to All Desktops)
- [ ] Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`
- [ ] Sketch (Assign to None)
- [ ] Pixelmator (Assign to None)
- [ ] Spacer: `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock`

### Finder view preferences
Be sure to set from system root level so preferences propagate up to all user directories)

- [ ] Always open in column view
- [ ] Browse in column view
- [ ] Arrange by Kind
- [ ] Sort by Kind
    - [ ] Text Size: 12
    - [ ] Show icons
    - [ ] Show icon preview
    - [ ] Show preview column

### Finder toolbar
- [ ] Back/Forward
- [ ] Path
- [ ] Connect
- [ ] Share
- Flexible Space
- [ ] Search

### Finder sidebar
1. Favorites
    1. [ ] Desktop
    - [ ] home
    - [ ] AirDrop
    - [ ] Applications
    - [ ] Documents
    - [ ] Dropbox
- Devices
- Shared

### Notification Center
1. [ ] World Clock
    1. [ ] Boston (Eastern)
    - [ ] Chicago (Central)
    - [ ] San Francisco (Western)
- [ ] Monity
    1. [ ] System
    - [ ] Memory
    - [ ] Network
    - [ ] Battery

### Set up spaces, wallpapers, and custom app icons
1. [ ] Set up spaces
- [ ] Set wallpapers
- [ ] Set custom icons
    - [ ] Preview

### Menu Bar
1. [ ] Mail Notifr 
- [ ] Dropbox
- [ ] Dropzone
- [ ] Time
- [ ] Itsycal
- [ ] Battery
- [ ] Bartender (left to right)
    1. [ ] Location Services
    - [ ] Bluetooth
    - [ ] Adobe Creative Cloud
    - [ ] ControlPlane
    - [ ] 1Password Mini
    - [ ] Better Window Manager
    - [ ] AirPlay
    - [ ] Quitter
    - [ ] Username
    - [ ] Bartender Preferences
- [ ] Notification Center

### Fonts
1. [ ] Download and set editors to use [FiraCode-Retina](https://github.com/tonsky/FiraCode)
    - [ ] LightPaper
    - [ ] iTerm
- [ ] Migrate FontExplorer X sets and lists


## Wrapup
- [ ] Set general operating system preferences: `sh .macos`
- [ ] Reboot and double check `System Preferences > Users & Groups > Login Items` and set a login picture
- [ ] Reboot, install [Undercover](http://orbicule.com/undercover/mac/), then double-check it and Find My Mac's Location Services access
- [ ] [Re-enable SIP](https://ohthehugemanatee.org/blog/2015/10/01/how-i-got-el-capitain-working-with-my-developer-tools/): `csrutil enable`
- [ ] Log laptop serial number in 1Password
- [ ] Delete setup files (`README.md`, `.osx`, etc.)
- [ ] Turn `LoginLaunch.applescript` into an app and add to Login Items
- [ ] Set up Control Plane contexts for system automation
- [ ] Set up [Caps Lock as Insert for Windows](https://www.paciellogroup.com/blog/2013/08/insert-key-usage-in-windows-on-a-mac/)


## References
- http://sourabhbajaj.com/mac-setup/
- https://github.com/mathiasbynens/dotfiles
- http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac
- http://jesseatkinson.org/writing/2013/9/8/setting-up-a-new-mac
- https://github.com/herrbischoff/awesome-osx-command-line


🔒 Requires app-specific password
