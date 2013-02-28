#!/usr/bin/env ruby

new_task = ARGV.shift

File.open('todo.md', 'a') do |file|
	file.puts "#{new_task}, #{Time.now}"
	puts "Task added"
end
