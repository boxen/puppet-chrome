# Chrome Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-chrome.png?branch=master)](https://travis-ci.org/boxen/puppet-chrome)

Install [Google Chrome](https://www.google.com/intl/en/chrome/browser/), an adequate web browser.

## Usage

```puppet
# from the stable channel
include chrome

# from the beta channel
include chrome::beta

# from the dev channel
include chrome::dev

# from the nightly channel
include chrome::canary

# from the chromium continuous build system
include chrome::chromium
```

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
