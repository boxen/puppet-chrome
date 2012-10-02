class chrome::dev {
  package { 'Chrome':
    provider => 'appdmg',
    source   => 'http://dl.google.com/chrome/mac/dev/GoogleChrome.dmg';
  }
}
