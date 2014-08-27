# Public: Install Chrome Canary to /Applications.
#
# Examples
#
#   include chrome::canary
class chrome::canary {
  package { 'Chrome Canary':
    provider => 'appdmg',
    source   => 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg',
  }
}
