```
su -
apt install git sudo ansible
usermod -aG <user>
exit
cd
git clone https://github.com/trideeindhoven/perfectvoip.git
cd perfectvoip/fusionpbx
ansible-playbook fusionpbx.yaml
```
