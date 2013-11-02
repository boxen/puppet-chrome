require 'net/http'

Puppet::Parser::Functions.newfunction(:latest_chromium, :type => :rvalue) do |args|
  begin
    Net::HTTP.get(
      'commondatastorage.googleapis.com',
      '/chromium-browser-continuous/Mac/LAST_CHANGE'
    )
  rescue => e
    function_fail('Unable to retreive latest Chromium version')
  end
end
