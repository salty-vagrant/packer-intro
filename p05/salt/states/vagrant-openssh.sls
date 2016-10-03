include:
  - openssh

/home/vagrant/.ssh:
  file.directory:
    - user: vagrant
    - groups:
      - vagrant
      - sudo
    - mode: '0700'
    - makedirs: True

/home/vagrant/.ssh/authorized_keys:
  cmd.run:
    - name: wget -O /home/vagrant/.ssh/authorized_keys https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub
    - creates: /home/vagrant/.ssh/authorized_keys
    - user: vagrant
    - group: vagrant
    - cwd: /home/vagrant/.ssh
    - require_in: openssh
