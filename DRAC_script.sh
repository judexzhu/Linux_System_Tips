racadm config -g cfgUserAdmin -o cfgUserAdminPassword -i 2 "$PASSWORD"

racadm config -g cfgUserAdmin -o cfgUserAdminUserName -i 3 tuna
racadm config -g cfgUserAdmin -o cfgUserAdminPassword -i 3 "$PASSWORD"
racadm config -g cfgUserAdmin -o cfgUserAdminPrivilege -i 3 0x000001ff
racadm config -g cfgUserAdmin -o cfgUserAdminEnable -i 3 1

racadm config -g cfgUserAdmin -o cfgUserAdminUserName -i 4 NOCAdmin
racadm config -g cfgUserAdmin -o cfgUserAdminPassword -i 4 "$PASSWORD"
racadm config -g cfgUserAdmin -o cfgUserAdminPrivilege -i 4 0x000000f9
racadm config -g cfgUserAdmin -o cfgUserAdminEnable -i 4 1


racadm config -g cfgLanNetworking -o cfgDNSServer1 172.16.72.1
racadm config -g cfgLanNetworking -o cfgDNSServer2 172.16.72.2

racadm config -g cfgLanNetworking -o cfgDNSDomainName mercury.corp
racadm config -g cfgEmailAlert -o cfgEmailAlertEnable -i 1 1
racadm config -g cfgEmailAlert -o cfgEmailAlertAddress -i 1 alerts-dellus@newegg.com
racadm config -g cfgRemoteHosts -o cfgRhostsSmtpServerIpAddr 10.1.37.42
racadm eventfilters set -c idrac.alert.all -a none -n email
racadm config -g cfgIpmiLan -o cfgIpmiLanAlertEnable 1
racadm set idrac.NTPConfigGroup.NTP1 10.1.37.52
racadm set idrac.NTPConfigGroup.NTP2 10.1.39.80
racadm set idrac.NTPConfigGroup.NTP3 10.1.39.81
racadm set idrac.NTPConfigGroup.NTPEnable Enabled
racadm set idrac.time.timezone US/Pacific
