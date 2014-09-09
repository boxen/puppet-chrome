require 'spec_helper'

describe 'chrome::extension' do
  let(:facts) {
    { :boxen_user => 'boxen' }
  }

  let(:title)   { 'Some Extension' }
  let(:id)      { 'gdllpgocmfneeigkbmfpngjjpgjifgmb' }
  let(:path)    { '/Users/boxen/Library/Application Support/Google/Chrome/External Extensions' }
  let(:source)  { 'https://clients2.google.com/service/update2/crx' }

  let(:params) {
    { :id => id }
  }

  it do
    should contain_exec("chrome-ext-dir-#{title}").with({
      :command => "/bin/mkdir -p '#{path}'",
      :creates => path,
    })

    should contain_file("chrome-ext-#{title}").with({
      :ensure   => 'present',
      :path     => "#{path}/#{id}.json",
      :mode     => '0644',
      :content  => "{\"external_update_url\": \"#{source}\"}",
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
      should contain_file("chrome-ext-#{title}").with({
        :ensure   => 'present',
        :path     => "#{path}/#{id}.json",
        :mode     => '0644',
        :content  => "{\"external_update_url\": \"#{source}\"}",
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
      should contain_file("chrome-ext-#{title}").with({
        :ensure   => 'present',
        :path     => "#{path}/#{id}.json",
        :mode     => '0644',
        :content  => "{\"external_update_url\": \"#{source}\"}",
      })
    end
  end
end
