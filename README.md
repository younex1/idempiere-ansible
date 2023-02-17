iDempiere Ansible Role
======================

This role installs the iDempiere and necessary software, including Java and PostgreSQL.

Role Variables
--------------

| Variable Name       | Default Value               | Description
|---------------------|-----------------------------|--------------------------------|
| idempiere_home      | /opt/idempiere-server.      | iDempiere installation folder  |
| java_home           | /opt/jdk11                  | Java installation folder
| java_version        | zulu@1.11.0-10              | Java provider and version, e.g. amazon-corretto@1.11.0-4.11.1, adopt@1.11.0-11. Check Jabba for more information: https://github.com/shyiko/jabba
| postgres_version    | 15                          | PostgreSQL version
| postgres_install    | true                        | By default, postgres is installed
| app_port            | 8080                        | Application standard port
| app_server          | 0.0.0.0                     | Application bind address
| app_ssl             | 8443                        | SSL port
| db_host             | localhost                   | DB hostname or IP
| db_name             | idempiere                   | Database name
| db_pass             | MyWeak_Pa55w0rd             | Database password
| db_port             | 5432                        | Database port
| db_system           | MyWeak_Pa55w0rd             | Postgres database user password
| db_type             | 2                           | 1=Oracle (not supported), 2=PostgreSQL
| db_user             | adempiere                   | Database user
| ks_country          | BR                          | Keystore country
| ks_locale           | Sao Paulo                   | Keystore locale
| ks_organization_unit| Systems                     | Keystore unit
| ks_organization     | iDempiere Community         | Keystore organization
| ks_pass             | MyWeak_Pa55w0rd             | Keystore password
| ks_state            | SP                          | Keystore state/region
| mail_admin          | superuser @ gardenworld.com | Admin e-mail
| mail_login          | none                        | Admin SMTP user/login
| mail_pass           | none                        | Admin SMTP password
| mail_server         | localhost                   | Admin SMTP server



Example Playbook
----------------

This role include a folder called "example_playbook", you can find docker files to launch an empty Ubuntu for testing.

    - hosts: all
      roles:
         - idempiere

Author Information
------------------

Ricardo Santana
www.kenos.com.br