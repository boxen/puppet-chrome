# Public: Install Chrome developer channel build to /Applications.
#
# Examples
#
#   include chrome::dev
class chrome::canary inherits chrome {
  Package['Chrome'] {
    source => 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg',
  }
}
