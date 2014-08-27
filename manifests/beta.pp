# Public: Install Chrome beta channel build to /Applications.
#
# Examples
#
#   include chrome::beta
class chrome::beta {
  package { 'Chrome Beta':
    provider => 'appdmg',
    source   => 'https://dl.google.com/chrome/mac/beta/GoogleChrome.dmg',
  }
}
