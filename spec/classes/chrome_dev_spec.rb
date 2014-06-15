require 'spec_helper'

describe 'chrome::dev' do
  it do
    should contain_package('Chrome Dev').with({
      :provider => 'appdmg',
      :source   => 'https://dl.google.com/chrome/mac/dev/GoogleChrome.dmg',
    })
  end
end
