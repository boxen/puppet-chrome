# Public: Install Chrome Canary to /Applications.
#
# Examples
#
#   include chrome::canary
class chrome::canary {
  package { 'chrome-canari':
    provider => 'appdmg',
    source   => 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg',
  }
}
