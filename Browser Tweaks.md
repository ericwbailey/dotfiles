# Browser Tweaks

Most settings *should* sync, but just in case:


## Table of Contents

- [Search](#search)
- [Edge](#edge)
  - [Flags](#flags)
- [Chrome](#chrome)
  - [Developer Tools Experiments](#developer-tools-experiments)
  - [DevTools Settings](#devtools-settings)
    - [Preferences](#preferences)
      - [Appearance](#appearance)
      - [Elements](#elements)
      - [Sources](#sources)
      - [Network](#network)
      - [Profiles](#profiles)
      - [Console](#console)
      - [Extensions](#extensions)
      - [DevTools](#devtools)
- [Firefox](#firefox)
  - [about:config](about-config)
  - [Search bar operators](#search-bar-operators)
  - [about:config](#aboutconfig)
  - [userChrome.css](#userchromecss)
  - [Adblocking](#adblocking)
    - [Filters](#filters)
    - [Custom rules](#custom-rules)
  - [Developer Tools](#developer-tools)
    - [Default Firefox Developer Tools](#default-firefox-developer-tools)
    - [Developer Tools installed by add-ons](#developer-tools-installed-by-add-ons)
    - [Available Toolbox Buttons](#available-toolbox-buttons)
    - [Themes](#themes)
    - [Common Preferences](#common-preferences)
    - [Inspector](#inspector)
    - [Web Console](#web-console)
    - [Style Editor](#style-editor)
    - [Editor Preferences](#editor-preferences)
    - [Advanced settings](#advanced-settings)

## Search

[Turn off AI Overview in Google
Set "Web" as default](https://tenbluelinks.org/)


## Edge

### Flags

`edge://flags/`

- "Experimental Web Platform Features"

## Chrome
- 🔽 Right click on the Address Bar to always show full URLs
- Disable ad tracking:
  - chrome://settings/adPrivacy
  - https://rud.is/sandbox-check/

### Developer Tools Experiments
- chrome://flags/#omnibox-ui-hide-steady-state-url-path-query-and-ref-on-interaction
- chrome://flags/#read-later `Disabled`
- chrome://flags/#side-panel_name `Disabled`

### DevTools Settings

#### Preferences
- ⬜ Disable Javascript

##### Appearance
- ⬜ Disabled paused state overlay
- 🔽 Theme: Dark
- 🔽 Panel layout: Vertical
- ☑️ Enable Cmd + 1-9 shortcut to switch panels
- ⬜ Don't show Chrome Data Saver warning

##### Elements
- 🔽 Color format: As authored
- ☑️ Show user agent shadow DOM
- ☑️ Word wrap
- ☑️ Reveal DOM node on hover.
- ☑️ Show rulers

##### Sources
- ☑️ Enable JavaScript source maps
- ☑️ Detect indentation
- ☑️ Autocompletion
- ☑️ Bracket matching
- 🔽Show whitespace characters: All
- ☑️ Display variable values inline while debugging
- ☑️ Enable CSS source maps
- 🔽 Default indentation: 4 spaces
- ⬜ Search in content scripts

##### Network
- ☑️ Color-code resource types
- ☑️ Disable cache (while DevTools is open)

##### Profiles
- ⬜ Show native functions in JS Profile
- ☑️ High resolution CPU profiling
- ⬜ Record heap allocation stack traces
- ⬜ Show advanced heap snapshot properties
- ⬜ Hide chrome frame in Layers View

##### Console
- ⬜ Hide network messages
- ⬜ Log XMLHttpRequests
- ⬜ Preserve log upon navigation
- ⬜ Show timestamps
- ☑️ Autocomplete from history
- ⬜ Enable custom formatters
- ☑️ Report input events blocked for too long

##### Extensions
- 🔽 Link handling auto (disabled)

##### DevTools
- ⬜ Auto-open DevTools for popups


## Firefox

### Search bar operators
- `#` Page title (`browser.urlbar.match.title`)
- `@` Page URL (`browser.urlbar.match.url`)
- `*` Bookmarked pages (`browser.urlbar.restrict.bookmark`)
- `^` History (`browser.urlbar.restrict.history`)
- `%` Currently-open pages (`browser.urlbar.restrict.openpage`)
- `$` Keyword Searches (`browser.urlbar.restrict.searches`)
- `+` Tags (`browser.urlbar.restrict.tag`)
- `~` Pages you've typed(?) (`browser.urlbar.restrict.typed`)

### about:config

#### [Adjust scrolling speed](http://ccm.net/faq/11032-firefox-define-a-custom-scrolling-speed)
In Preferences, disable Advanced > General > Use Smooth Scrolling

- `mousewheel.acceleration.factor` `10`
- `mousewheel.acceleration.start` `-1`

### Disable scroll zooming
- `mousewheel.with_meta.action` `0`

### Disable Pocket
- `extensions.pocket.enabled` `false`

### [Prevent blocking copy/pasting](https://smcleod.net/software/2022/05/16/firefox-addons-2022/#aboutconfig)
- `dom.event.clipboardevents.enabled` `false`

#### [Alt+Tab-esque Tab Previews](https://support.mozilla.org/en-US/questions/955292)
- `browser.ctrlTab.previews` `true`

#### Disable download complete notification
- `browser.download.manager.showAlertOnComplete` `false`

#### [Disable HTTP Referers](https://www.eff.org/deeplinks/2012/04/4-simple-changes-protect-your-privacy-online)
- `network.http.sendRefererHeader` `0`

#### Disable installing new extensions delay
- `security.dialog_enable_delay` `0`

#### Enable click to play
- `plugins.click_to_play` `boolean` `true`

#### [Enable HTTP cache](http://lifehacker.com/speed-up-firefox-by-enabling-its-new-http-cache-1570488335)
- `browser.cache.use_new_backend` `1`

#### Enable spellchecking in single-line input boxes
- `layout.spellcheckDefault` `2`

#### Disable [Anonym](https://blog.mozilla.org/en/mozilla/privacy-preserving-attribution-for-advertising/)
- `dom.private-attribution.submission.enabled` `false`


#### [Enable faster tab opening](http://www.askvg.com/how-to-disable-animation-while-opening-new-tab-in-mozilla-firefox-4-0/)
- `browser.tabs.animate` `false`

#### [Open new tabs at the end of the tab bar](http://www.mydigitallife.info/change-firefox-to-open-new-tab-at-far-right-end-of-tabbar-disable-insert-next-to-current-active-tab/)
- `browser.tabs.insertRelatedAfterCurrent` `false`

#### Remove Awesome Bar search prompt
- `browser.urlbar.unifiedcomplete` `false`

#### Remove "Search or enter address" from the navbar until focused
- `dom.placeholder.show_on_focus` `false`

#### [Remove swipe back/forward gestures](https://support.mozilla.org/en-US/questions/1003526)
- `browser.gesture.swipe.left` `""`
- `browser.gesture.swipe.right` `""`

#### [Show HTTP(S) in address bar](http://techdows.com/2011/09/show-http-in-firefox-7-address-bar.html)
- `browser.urlbar.trimURLs` `false`

#### Remove "Recently Bookmarked" from the Bookmarks menu
- `browser.bookmarks.showRecentlyBookmarked` `false`

#### Number of entries in the Awesome Bar
- `browser.urlbar.maxRichResults` `15`

### Remove Awesome Bar search prompt
- `browser.urlbar.unifiedcomplete` `false`

### Remove "Search or enter address" from the navbar until focused
- `dom.placeholder.show_on_focus` `false`

### Disable one-click Search Engines
- `browser.urlbar.oneOffSearches` `false`

#### Show common sites on the Awesome Bar on click
- `browser.urlbar.update1.intervention` `false`


### userChrome.css
```css
/* Show keyword input box when adding a bookmark */
#keywordRow {
  display: -moz-grid-line !important;
}
```

### Adblocking

#### Filters
http://prebake.eu/

#### Custom rules

### Developer Tools

#### Default Firefox Developer Tools
- ⬜ Shader Editor
- ⬜ Canvas
- ☑️ Performance
- ⬜ Memory
- ☑️ Network
- ⬜ Storage
- ⬜ Web Audio
- ⬜ Scratchpad
- ☑️ DOM

#### Developer Tools installed by add-ons
- ☑️ Accessibility

#### Available Toolbox Buttons
- ☑️ Pick an element from the page
- ☑️ Select an iframe as the currently targeted document
- ☑️ Toggle split console
- ☑️ Responsive Design Mode
- ⬜ Highlight painted area
- ⬜ Scratchpad
- ⬜ Grab a color from the page
- ☑️ Take a fullpage screenshot
- ☑️ Toggle rulers for the page
- ☑️ Measure a portion of the page

#### Themes
- 🔘 Dark

#### Common Preferences
- ⬜ Enable persistent logs

#### Inspector
- ⬜ Show Browser Styles
- ☑️ Truncate DOM attributes
- 🔽 Default color unit: As Authored

#### Web Console
- ⬜ Enable timestamps

#### Style Editor
- ☑️ Show original sources
- ☑️ Autocomplete CSS

#### Editor Preferences
- ☑️ Detect indentation
- ☑️ Autoclose brackets
- ☑️ Indent using spaces
- 🔽 Tab size: 4
- 🔽 Keybindings: Sublime Text

#### Advanced settings
- ⬜ Show Gecko platform data
- ☑️ Disable Cache (when toolbox is open)
- ⬜ Disable JavaScript
- ⬜ Enable Service Workers over HTTP (when toolbox is open)
- ⬜ Enable browser chrome and add-on debugging toolboxes
- ⬜ Enable remote debugging
- ⬜ Enable worker debugging
