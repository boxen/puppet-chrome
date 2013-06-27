# Public: Install Chrome beta channel build to /Applications.
#
# Examples
#
#   include chrome::beta
class chrome::beta inherits chrome {
  Package['Chrome'] {
    source => 'https://dl.google.com/chrome/mac/beta/GoogleChrome.dmg',
  }
}
