#!/usr/bin/env ruby

databases = {
	:son_site => {
		:database => 'son_site',
		:username => 'root',
		:password => ''
	}
}

end_of_iterator = ARGV.shift

databases.each do |name,config|
	if end_of_iterator.nil?
		backup_file = config[:database] + '_' + Time.now.strftime('%Y%m%d')
	else
		backup_file = config[:database] + '_' + end_of_iterator
	end
	mysqldump = "mysqldump -u#{config[:username]} -p#{config[:password]} " + "#{config[:database]}"

	`#{mysqldump} > #{backup_file}.sql`
	`gzip #{backup_file}.sql`
end
