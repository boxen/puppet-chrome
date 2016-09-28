# Public: Install Chrome Canary extension
#
# Examples
#
#   chrome::canary::extension { 'Reddit Enhancement Suite':
#     id => 'kbmfpngjjgdllneeigpgjifpgocmfgmb',
#   }
define chrome::canary::extension(
  $id,
  $source = undef,
  $path = "/Users/${::boxen_user}/Library/Application Support/Google/Chrome Canary/External Extensions",
) {
  chrome::extension { "${title}-canary":
    id      => $id,
    source  => $source,
    path    => $path,
  }
}