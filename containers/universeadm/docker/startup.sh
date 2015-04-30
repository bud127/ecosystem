#!/bin/bash
source /etc/ces/functions.sh

# create environment for templates
FQDN=$(get_fqdn)
DOMAIN=$(get_domain)

LDAP_SERVICE=$(get_service ldap 389)
LDAP_HOST=$(echo $LDAP_SERVICE | awk -F':' '{print $1}')
LDAP_PORT=$(echo $LDAP_SERVICE | awk -F':' '{print $2}')
LDAP_BASE_DN="o=${DOMAIN},dc=cloudogu,dc=com"
LDAP_BIND_DN="cn=admin,dc=cloudogu,dc=com"
LDAP_BIND_PASSWORD=$(/opt/apache-tomcat/webapps/universeadm/WEB-INF/cipher.sh encrypt $(get_ces_pass ldap_root) | tail -1)

# copy resources
if [ ! -d "/var/lib/universeadm/conf" ]; then
	mkdir -p /var/lib/universeadm/conf
	cp -rf /resources/* /var/lib/universeadm/conf/
fi

# create log directory
if [ ! -d "/var/lib/universeadm/logs" ]; then
	mkdir -p /var/lib/universeadm/logs
	chown -R tomcat:tomcat /var/lib/universeadm/logs
fi

# render templates
render_template "/var/lib/universeadm/conf/cas.xml.tpl" > "/var/lib/universeadm/conf/cas.xml"
render_template "/var/lib/universeadm/conf/ldap.xml.tpl" > "/var/lib/universeadm/conf/ldap.xml"

# start tomcat as user tomcat
su - tomcat -c "/opt/apache-tomcat/bin/catalina.sh run"