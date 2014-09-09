# Public: Install latest Chromium build to /Applications.
#
# Examples
#
#   include chrome::chromium
class chrome::chromium (
  $version = latest_chromium(),
) {
  # chromium package provider is a custom provider
  package { 'Chromium':
    provider => 'chromium',
    source   => "http://commondatastorage.googleapis.com/chromium-browser-continuous/Mac/${version}/chrome-mac.zip",
  }
}
