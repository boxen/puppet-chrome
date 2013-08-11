require 'spec_helper'

describe 'chrome::chromium' do
  let(:params) do
    { :version => "LATEST" }
  end
  it do
    should contain_package('Chromium').with({
      :provider => 'compressed_app',
      :source   => 'http://commondatastorage.googleapis.com/chromium-browser-continuous/Mac/LATEST/chrome-mac.zip',
    })
  end
end
