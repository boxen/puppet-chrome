# Public: Install latest Chromium build to /Applications.
#
# Examples
#
#   include chrome::chromium
class chrome::chromium (
  $version = latest_chromium(),
) {
  # compressed_app package provider is a custom puppet-boxen provider
  package { 'Chromium':
    provider => 'compressed_app',
    source   => "http://commondatastorage.googleapis.com/chromium-browser-continuous/Mac/${version}/chrome-mac.zip",
  }
}
