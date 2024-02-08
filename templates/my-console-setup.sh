#/bin/bash
./console-setup.sh << !
{{ java_home }}
-Xms64M -Xmx512M
{{ idempiere_home }}
{{ ks_pass }}
root
iDempiereUser
root
MyTown
{{ ks_state }}
{{ ks_country }}
{{ app_server }}
{{ app_port }}
{{ app_ssl }}
N
{{ db_type }}
{{ db_host }}
{{ db_port }}
{{ db_name }}
{{ db_user }}
{{ db_pass }}
{{ db_system }}
{{ mail_server }}
{{ mail_login }}
{{ mail_pass }}
{{ mail_admin }}
Y
!
cd utils
./RUN_ImportIdempiere.sh << !
!
