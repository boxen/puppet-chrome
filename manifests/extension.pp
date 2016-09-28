# Public: Install Chrome extension
#
# Examples
#
#   chrome::extension { 'Reddit Enhancement Suite':
#     id => 'kbmfpngjjgdllneeigpgjifpgocmfgmb',
#   }
define chrome::extension(
  $id,
  $source = 'https://clients2.google.com/service/update2/crx',
  $path = "/Users/${::boxen_user}/Library/Application Support/Google/Chrome/External Extensions",
) {
  exec { "chrome-ext-dir-${title}":
    command => "/bin/mkdir -p '${path}'",
    creates => $path,
  }
  ->
  file { "chrome-ext-${title}":
    ensure  => present,
    path    => "${path}/${id}.json",
    mode    => '0644',
    content => "{\"external_update_url\": \"${source}\"}",
  }
}