module.exports = {
  defaultBrowser: "Firefox",
  handlers: [
    {
      match: /^https?:\/\/localhost.*$/,
      browser: "Chrome"
    },
    {
      match: /^https?:\/\/twitter\.com\/.*$/,
      browser: "Firefox"
    },
    {
      match: /^https?:\/\/youtube\.com\/.*$/,
      browser: "Firefox"
    }
  ]
}
