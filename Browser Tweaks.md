# Browser Tweaks

Most settings *should* sync, but just in case:


## Table of Contents

1. Chrome
- Firefox
    1. Search bar operators
    - about:config
    - userChrome.css
    - Adblocking


## Chrome

### Inspector

#### Preferences

- ◻ Disable Javascript

##### Appearance

- ◻ Disabled paused state overlay
- 🔽 Theme: Dark
- 🔽 Panel layout: Vertical
- ☑ Enable Cmd + 1-9 shortcut to switch panels
- ◻ Don't show Chrome Data Saver warning

##### Elements

- 🔽 Color format: As authored
- ☑ Show user agent shadow DOM
- ☑ Word wrap
- ☑ Reveal DOM node on hover.
- ☑ Show rulers

##### Sources

- ☑ Enable JavaScript source maps
- ☑ Detect indentation
- ☑ Autocompletion
- ☑ Bracket matching
- 🔽Show whitespace characters: All
- ☑ Display variable values inline while debugging
- ☑ Enable CSS source maps
- 🔽 Default indentation: 4 spaces
- ◻ Search in content scripts

##### Network

- ☑ Color-code resource types
- ☑ Disable cache (while DevTools is open)

##### Profiles

- ◻ Show native functions in JS Profile
- ☑ High resolution CPU profiling
- ◻ Record heap allocation stack traces
- ◻ Show advanced heap snapshot properties
- ◻ Hide chrome frame in Layers View

##### Console

- ◻ Hide network messages
- ◻ Log XMLHttpRequests
- ◻ Preserve log upon navigation
- ◻ Show timestamps
- ☑ Autocomplete from history
- ◻ Enable custom formatters
- ☑ Report input events blocked for too long

##### Extensions

- 🔽 Link handling auto (disabled)

##### DevTools

- ◻ Auto-open DevTools for popups

### Inspector

- ☑ Accessibility Inspection
- ☑ Allow custom UI themes
- ◻ Continue to first invocation
vCPU throttling
- ◻ Empty sourcemap auto-stepping
- ☑ Layers panel
- ◻ Private script inspection
- ◻ Source diff
- ◻ Timeline recording perspectives UI


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

- [ ] `mousewheel.acceleration.factor` `10`
- [ ] `mousewheel.acceleration.start` `-1`

#### [Alt+Tab-esque Tab Previews](https://support.mozilla.org/en-US/questions/955292)
- [ ] `browser.ctrlTab.previews` `true`

#### Disable download complete notification
- [ ] `browser.download.manager.showAlertOnComplete` `false`

#### [Disable HTTP Referers](https://www.eff.org/deeplinks/2012/04/4-simple-changes-protect-your-privacy-online)
- [ ] `network.http.sendRefererHeader` `0`

#### Disable installing new extensions delay
- [ ] `security.dialog_enable_delay` `0`

#### Enable click to play
- [ ] `plugins.click_to_play` `boolean` `true`

#### [Enable HTTP cache](http://lifehacker.com/speed-up-firefox-by-enabling-its-new-http-cache-1570488335)
- [ ] `browser.cache.use_new_backend` `1`

#### Enable spellchecking in single-line input boxes
- [ ] `layout.spellcheckDefault` `2`

#### [Enable faster tab opening](http://www.askvg.com/how-to-disable-animation-while-opening-new-tab-in-mozilla-firefox-4-0/)
- [ ] `browser.tabs.animate` `false`

#### [Open new tabs at the end of the tab bar](http://www.mydigitallife.info/change-firefox-to-open-new-tab-at-far-right-end-of-tabbar-disable-insert-next-to-current-active-tab/)
- [ ] `browser.tabs.insertRelatedAfterCurrent` `false`

#### Remove Awesome Bar search prompt
- [ ] `browser.urlbar.unifiedcomplete` `false`

#### Remove "Search or enter address" from the navbar until focused
- [ ] `dom.placeholder.show_on_focus` `false`

#### [Remove swipe back/forward gestures](https://support.mozilla.org/en-US/questions/1003526)
- [ ] `browser.gesture.swipe.left` `""`
- [ ] `browser.gesture.swipe.right` `""`

#### [Show HTTP(S) in address bar](http://techdows.com/2011/09/show-http-in-firefox-7-address-bar.html)
- [ ] `browser.urlbar.trimURLs` `false`

#### Remove tab group animation
- [ ] `browser.panorama.animate_zoom` `False`
- [ ] `browser.fullscreen.animateUp` `0`

#### Tracking protection
- [ ] `privacy.trackingprotection.enabled` `true`

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
