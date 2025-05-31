export default {
  defaultBrowser: "Firefox",
  handlers: [
    {
      match: /^https?:\/\/localhost.*$/,
      browser: "Google Chrome"
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
