require './lib/commandline'
require './lib/enigma'

input = ARGV

command_line = CommandLine.new(input)
puts command_line.encrypt_message
