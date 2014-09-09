require "open-uri"
require "puppet/provider/package"

Puppet::Type.type(:package).provide :chromium,
:parent => Puppet::Provider::Package do
  desc "Installs Chromium"

  APP_PATH = '/Applications/Chromium.app'
  UNZIP_PATH = '/opt/boxen/cache/Chromium'
  CACHED_PATH = "#{UNZIP_PATH}.zip"
  UNZIP_APP_PATH = "#{UNZIP_PATH}/chrome-mac"

  confine  :operatingsystem => :darwin

  commands :curl  => "/usr/bin/curl"
  commands :ditto => "/usr/bin/ditto"
  commands :chown => "/usr/sbin/chown"
  commands :rm    => "/bin/rm"

  def self.instances_by_name
    return [] unless File.exists? APP_PATH
    yield 'Chromium' if block_given?
    ['Chromium']
  end

  def self.instances
    instances_by_name.collect do |name|
      new(:name => name, :provider => :chromium, :ensure => :installed)
    end
  end

  def query
    return nil unless File.exists? APP_PATH
    { :name => @resource[:name], :ensure => :installed }
  end

  def install
    fail("Chromium can only install Chromium") unless @resource[:name] == 'Chromium'
    fail("OS X compressed apps must specify a package name") unless @resource[:name]
    fail("OS X compressed apps must specify a package source") unless @resource[:source]

    FileUtils.mkdir_p '/opt/boxen/cache'
    curl @resource[:source], "-Lqo", CACHED_PATH
    rm "-rf", APP_PATH
    rm "-rf", UNZIP_PATH
    ditto "-xk", CACHED_PATH, UNZIP_PATH
    ditto UNZIP_APP_PATH, "/Applications"
    chown "-R", "#{Facter[:boxen_user].value}:staff", APP_PATH
  end

  def uninstall
    rm "-rf", APP_PATH
  end
end
