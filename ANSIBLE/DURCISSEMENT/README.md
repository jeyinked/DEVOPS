
---
- name: Durcissement de serveur Linux
  hosts: all
  become: true
  vars:
    ssh_port: 22
    allowed_users:
      - user1
      - user2
    firewall_rules:
      - { port: 22, proto: tcp, state: present }
      - { port: 80, proto: tcp, state: present }
      - { port: 443, proto: tcp, state: present }
  tasks:
    - name: Mettre à jour les paquets
      apt:
        update_cache: yes
        upgrade: dist
      register: update_result
      changed_when: update_result.stdout.find('packages can be updated') != -1

    - name: Installer les paquets de base
      apt:
        name:
          - sudo
          - fail2ban
          - logrotate
      state: present

    - name: Configurer SSH
      lineinfile:
        path: /etc/ssh/sshd_config
        regexp: '^Port.*'
        line: 'Port {{ ssh_port }}'
        state: present
      notify: restart sshd

    - name: Autoriser les utilisateurs SSH
      lineinfile:
        path: /etc/ssh/sshd_config
        regexp: '^AllowUsers.*'
        line: 'AllowUsers {{ allowed_users | join(" ") }}'
        state: present
      notify: restart sshd

    - name: Redémarrer le service SSH
      service:
        name: sshd
        state: restarted
      when: ssh_port != 22

    - name: Configurer le pare-feu
      ufw:
        rule: "{{ item.state }}"
        port: "{{ item.port }}"
        proto: "{{ item.proto }}"
      loop: "{{ firewall_rules }}"

    - name: Installer les paquets de sécurité
      apt:
        name:
          - apparmor
          - clamav
          - rkhunter
      state: present

    - name: Configurer rkhunter
      lineinfile:
        path: /etc/rkhunter.conf
        regexp: '^UPDATE_MIRRORS.*'
        line: 'UPDATE_MIRRORS=1'
        state: present
      notify: update rkhunter

    - name: Mise à jour de la base de données rkhunter
      shell: rkhunter --update
      async: 3600
      poll: 0
      become: yes
      changed_when: False
      notify: check rkhunter

  handlers:
    - name: Redémarrer le service SSH
      service:
        name: sshd
        state: restarted

    - name: Mettre à jour la base de données rkhunter
      shell: rkhunter --propupd
      async: 3600
      poll: 0
      become: yes
      changed_when: False

    - name: Vérifier l'état de sécurité avec rkhunter
      shell: rkhunter --check
      async: 3600
      poll: 0
      become: yes
      changed_when: False

