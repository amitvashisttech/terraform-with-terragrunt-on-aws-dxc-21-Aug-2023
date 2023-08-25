
Terraform -> 02-Deployment -> EC2 with SSH Key - > ALL SSH Portocal via SG.  ( Remote Machine ) 

Test 1 : SSH Contectvity btw Jumpbox to Remote Server 

```
ssh -i .terraform/.ssh/admin_rsa ec2-user@3.145.118.210
```

Test 2: Ansible Ping Test. 
```
cat inventory
```

```
ansible all -i inventory -m ping -u ec2-user --key-file=.ssh/admin_rsa
```

Test 3: Check what all modules are avalibale with ansible. 
```
ansible-doc  -l
```

Test 4: How to use ansible modules 

ansible all -i inventory -m command -a 'uname -a'  -u ec2-user --key-file=.ssh/admin_rsa
ansible all -i inventory -m command -a 'df -h'  -u ec2-user --key-file=.ssh/admin_rsa
 
ansible all -i inventory -m yum -a 'name=ntp state=present'  -u ec2-user --key-file=.ssh/admin_rsa -b 
ansible all -i inventory -m yum -a 'name=ntp state=absent'  -u ec2-user --key-file=.ssh/admin_rsa -b 

Test 5: IAC Complince -> Playbook -> Collection of Plays

```
ansible-playbook -i inventory playbook.yaml -u ec2-user --key-file=.ssh/admin_rsa
```

[amitvashist@ip-172-31-41-220 ansible]$ ansible-playbook -i inventory playbook.yaml -u ec2-user --key-file=.ssh/admin_rsa

PLAY [WebServer Deployment Play] ****************************************************************************************************

TASK [Gathering Facts] **************************************************************************************************************
fatal: [localhost]: UNREACHABLE! => {"changed": false, "msg": "Failed to connect to the host via ssh: ec2-user@localhost: Permission denied (publickey,gssapi-keyex,gssapi-with-mic,password).", "unreachable": true}
[WARNING]: Platform linux on host 3.145.118.210 is using the discovered Python interpreter at /usr/bin/python3.7, but future
installation of another Python interpreter could change the meaning of that path. See https://docs.ansible.com/ansible-
core/2.15/reference_appendices/interpreter_discovery.html for more information.
ok: [3.145.118.210]

TASK [Install Required Web Packages] ************************************************************************************************
changed: [3.145.118.210]

TASK [Start the HTTPD Service] ******************************************************************************************************
changed: [3.145.118.210]

PLAY [NTP Server Deployment Play] ***************************************************************************************************

TASK [Gathering Facts] **************************************************************************************************************
ok: [3.145.118.210]

TASK [Install Required NTP Packages] ************************************************************************************************
changed: [3.145.118.210]

TASK [Start the NTPD Service] *******************************************************************************************************
changed: [3.145.118.210]

PLAY RECAP **************************************************************************************************************************
3.145.118.210              : ok=6    changed=4    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
localhost                  : ok=0    changed=0    unreachable=1    failed=0    skipped=0    rescued=0    ignored=0   

[amitvashist@ip-172-31-41-220 ansible]$
