# check linux system

### Check the BIOS version

```		
demidecode -t bios
```	

### check the model
```
demidecode -t 1
```

### check the OS version

```
cat /etc/redhat-release
```

### check the raid adpter

```
megacli -adpallinfo -a0
raidstatus
```

### check the drac

```
racadm
```		

### Get NIC Info

```
lspci | egrep -i --color 'network|ethernet'
```

### Check the Disk

```
cat /proc/scsi/scsi
```

### Check Network Vlan

```
tcpdump -nn -v -i eth0 -s 1500 -c 1 'ether[20:2] == 0x2000'
```

```
echo "# network interface name/MAC persistence is intentionally disabled" >/etc/udev/rules.d/75-persistent-net-generator.rules

mv /lib/udev/rules.d/75-persistent-net-generator.rules /lib/udev/rules.d/75-persistent-net-generator.rules.bak
```


### check what process take the most cpu and mem

```
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
```

### check folder size

```
du -h --max-depth=1 /
```

```
udevadm control --reload-rules
udevadm trigger --attr-match=subsystem=net
```

### Linux: how to monitor the nproc limit

```
 ps h -Led -o user | sort | uniq -c | sort -n
```

### Script  for logon in docker with docker ID

```
 #!/bin/bash
 PID=$(docker inspect --format "{{.State.Pid}}" $1)
 nsenter -t $PID -u -i -n -p
```
