#!/bin/bash

function main()
{
	dbs="$(get_db_list)";

	for db in $dbs
	do
		create_db_dir_if_not_exists $db
		remove_old_backup_files

		get_table_list

		for table in $tables
		do
			mysqldump -u root $db $table > "$backup_dir/$table.sql"
			echo "dumping $db $table to $backup_dir/$table.sql"
		done

		version_control $backup_dir
		#bitbucket_push

	done
}

get_db_list() { mysql -u root -Bse 'show databases'; }

create_db_dir_if_not_exists() { backup_dir="/backup/data/mysql/$db"; backupFilePath $backup_dir; }

backupFilePath()
{
	if [ ! -d "$1" ]; then
		mkdir -p $1
	fi
}

remove_old_backup_files() { rm $backup_dir/*; }

get_table_list() { tables="$(mysql -u root -Bse "show tables from $db")"; }

version_control()
{
		cd $backup_dir

		if [ ! -d ".hg" ]; then
			hg init
		fi
		hg addremove
		hg ci -q -m "Automated Mysql Dump"
}

bitbucket_push() { echo "bitbucket push"; } 

main
