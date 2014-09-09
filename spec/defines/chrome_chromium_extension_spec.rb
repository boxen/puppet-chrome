require 'spec_helper'

describe 'chrome::chromium::extension' do
  let(:facts) {
    { :boxen_user => 'boxen' }
  }

  let(:title)   { 'Some Extension' }
  let(:id)      { 'gdllpgocmfneeigkbmfpngjjpgjifgmb' }
  let(:path)    { '/Users/boxen/Library/Application Support/Chromium/External Extensions' }
  let(:source)  { 'https://clients2.google.com/service/update2/crx' }

  let(:params) {
    { :id => id }
  }

  it do
    should contain_chrome__extension("#{title}-chromium").with({
      :id   => id,
      :path => path,
    })
  end

  context 'with source' do
    let(:source) { 'https://example.com/ext.xml' }

    let(:params) {
      { :id     => id,
        :source => source,
      }
    }

    it do
      should contain_chrome__extension("#{title}-chromium").with({
        :id     => id,
        :path   => path,
        :source => source,
      })
    end
  end

  context 'with path' do
    let(:path) { '/some/path' }

    let(:params) {
      { :id   => id,
        :path => path,
      }
    }

    it do
      should contain_chrome__extension("#{title}-chromium").with({
        :id   => id,
        :path => path,
      })
    end
  end
end
