require 'erb'
require 'dotenv'

Dotenv.load

erb = File.open('docker-compose.yml.erb') { |f| ERB.new(f.read) }
File.write('docker-compose.yml', erb.result(binding))
