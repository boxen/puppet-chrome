require 'spec_helper'

describe 'chrome' do
  it do
    should contain_package('Chrome').with({
      :provider => 'appdmg',
      :source   => 'https://dl.google.com/chrome/mac/stable/GoogleChrome.dmg',
    })
  end
end
