# Public: Install Chrome developer channel build to /Applications.
#
# Examples
#
#   include chrome::dev
class chrome::dev inherits chrome {
  Package['Chrome'] {
    source => 'https://dl.google.com/chrome/mac/dev/GoogleChrome.dmg',
  }
}
