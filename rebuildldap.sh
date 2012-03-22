#!/bin/bash
main(){
	stopServices
	readBackupDir
	copyToTmp
	removeLdap
	copyNewLdap
	startServices
}

stopServices() { 
	echo "sudo /sbin/service postfix stop" 
	echo "sudo /sbin/service slapd stop" 
	echo "sudo /sbin/service slapcat stop" 
}

readBackupDir() { 
	echo "Please enter backup ldap directory" 
	read backup_ldap 
}

copyToTmp(){ 
	echo "cp $backup_ldap /tmp$backup_ldap" 
}

removeLdap(){ 
	echo "rm -fr /var/lib/ldap/* " 
}

copyNewLdap(){ 
	echo "mv /tmp$backup_ldap/* /var/lib/ldap$backup_ldap" 
}

startServices(){ 
	echo "sudo /sbin/service postfix start" 
	echo "sudo /sbin/service slapd start" 
	echo "sudo /sbin/service slapcat start" 
}

main
