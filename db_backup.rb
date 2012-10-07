#!/usr/bin/env ruby

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
