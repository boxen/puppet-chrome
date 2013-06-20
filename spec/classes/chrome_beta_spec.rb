require 'spec_helper'

describe 'chrome::beta' do
  it do
    should contain_package('Chrome').with({
      :provider => 'appdmg',
      :source   => 'https://dl.google.com/chrome/mac/beta/GoogleChrome.dmg',
    })
  end
end
