# encoding: UTF-8
require_relative 'attributes/attributes'

base = Pathname(__FILE__).dirname.expand_path
Dir.glob(base + '*.rb').each do |file|
  require file
end