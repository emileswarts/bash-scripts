#!/usr/bin/env ruby

# Bring the option parser into the namespace
require 'optparse'

options = {}
option_parser = OptionParser.new do |opts|
	# Create a switch
	opts.on(" -i", "--iteration") do
		options[:iteration] = true
	end

	#Create a flag
	opts.on("-u USER") do |user|
		unless user =~ /^.+\..+$/
			raise ArgumentError, "User must ben in 'first.last' format"
		end
		options[:user] = user
	end

	opts.on("-p PASSWORD") do |password|
		options[:password] = password
	end
end

option_parser.parse!
puts options.inspect

database = ARGV.shift
username = ARGV.shift
password = ARGV.shift
end_of_iterator = ARGV.shift

if end_of_iterator.nil?
	backup_file = database + '_' + Time.now.strftime('%Y%m%d')
else
	backup_file = database + '_' + end_of_iterator
end

mysqldump = "mysqldump -u#{username} -p#{password} " + "#{database}"

`#{mysqldump} > #{backup_file}.sql`
`gzip #{backup_file}.sql`
