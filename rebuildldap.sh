#!/bin/bash
main(){
	stopServices
	readBackupDir
	copyNewLdap
	startServices
}

stopServices() { 
	echo "/sbin/service postfix stop" 
	echo "/sbin/service slapd stop" 
}

readBackupDir() { 
	echo "Please enter backup ldap directory" 
	read backup_ldap 
}

copyNewLdap(){ 
	echo "rm -f /var/lib/ldap/*" 
	echo "slapadd $backup_ldap" 
	echo "slapindex" 
	echo "chown ldap.ldap /var/lib/ldap/*" 
}

startServices(){ 
	echo "/sbin/service postfix start" 
	echo "/sbin/service slapd start" 
}

main
