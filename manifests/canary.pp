# Public: Install Chrome Canary to /Applications.
#
# Examples
#
#   include chrome::canary
class chrome::canary {
  package { 'chrome-canary':
    provider => 'appdmg',
    source   => 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg',
  }
}
