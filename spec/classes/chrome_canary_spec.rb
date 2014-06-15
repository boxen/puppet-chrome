require 'spec_helper'

describe 'chrome::canary' do
  it do
    should contain_package('Chrome Canary').with({
      :provider => 'appdmg',
      :source   => 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg'
    })
  end
end
