# Public: Install Chrome to /Applications.
#
# Examples
#
#   include chrome
class chrome {
  package { 'Chrome':
    provider => 'appdmg',
    source   => 'https://dl.google.com/chrome/mac/stable/GoogleChrome.dmg',
  }
}
