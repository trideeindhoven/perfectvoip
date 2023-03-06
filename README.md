```
su -
apt install git sudo ansible
usermod -aG sudo <user>
exit
cd
git clone https://github.com/trideeindhoven/perfectvoip.git
cd perfectvoip/fusionpbx
cp vars.yaml.example vars.yaml
nano vars.yaml
sudo ls
ansible-playbook fusionpbx.yaml
```
