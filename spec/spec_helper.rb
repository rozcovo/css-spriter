$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'spittle'
require 'spec'
require 'spec/autorun'

Spec::Runner.configure do |config|
  
end

def chunk(type, data)
  to_check = type + data
  [data.length].pack("N") + to_check + [Zlib.crc32(to_check)].pack("N")
end
