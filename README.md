# Chrome Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-chrome.png?branch=master)](https://travis-ci.org/boxen/puppet-chrome)

Install [Google Chrome](), an adequate web browser.

## Usage

```puppet
# from the stable channel
include chrome

# from the dev channel
include chrome::dev

# from the nightly channel
include chrome::canary
```

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
