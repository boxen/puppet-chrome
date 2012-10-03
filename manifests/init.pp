class chrome {
  package { 'Chrome':
    provider => 'appdmg',
    source   => 'http://dl.google.com/chrome/mac/stable/GoogleChrome.dmg',
  }
}
