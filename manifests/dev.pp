# Public: Install Chrome developer channel build to /Applications.
#
# Examples
#
#   include chrome::dev
class chrome::dev {
  package { 'Chrome Dev':
    provider => 'appdmg',
    source   => 'https://dl.google.com/chrome/mac/dev/GoogleChrome.dmg',
  }
}
