#!/bin/bash


function main()
{
	for (( i = 0; i < 1000; i++ )); do
		mysql -u root -Bse "insert into acn_site.widgets_content(title) values ('corrupE')";
	done
}

main
