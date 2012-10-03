require 'spec_helper'

describe 'chrome::dev' do
  it do
    should contain_package('Chrome').with({
      :provider => 'appdmg',
      :source   => 'http://dl.google.com/chrome/mac/dev/GoogleChrome.dmg',
    })
  end
end
