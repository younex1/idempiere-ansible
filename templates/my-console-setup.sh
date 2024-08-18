#/bin/bash
./console-setup.sh << !
{{ java_home }}
-Xms129M -Xmx1024M
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
#Copy to this locateion new ready DB if needed (overwrite): /opt/idempiere-server/data/seed/Adempiere_pg.dmp
#/usr/bin/scp root@192.168.12.65:/root/idempiere-demo-public /opt/idempiere-server/data/seed/Adempiere_pg.dmp
./RUN_ImportIdempiere.sh << !
!
