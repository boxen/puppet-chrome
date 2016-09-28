# Public: Install Chromium extension
#
# Examples
#
#   chrome::chromium::extension { 'Reddit Enhancement Suite':
#     id => 'kbmfpngjjgdllneeigpgjifpgocmfgmb',
#   }
define chrome::chromium::extension(
  $id,
  $source = undef,
  $path = "/Users/${::boxen_user}/Library/Application Support/Chromium/External Extensions",
) {
  chrome::extension { "${title}-chromium":
    id      => $id,
    source  => $source,
    path    => $path,
  }
}