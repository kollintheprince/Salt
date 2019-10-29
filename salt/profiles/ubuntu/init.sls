nginx:
  pkg:
    - installed
  service.running:
    enabled: True
    reload: True
    - watch:
      - pkg: nginx
      - file: /etc/nginx/sites-available/default

/etc/nginx/sites-available/default:
  file.managed:
    - source: salt://profiles/ubuntu/files/default
    - user: root
    - group: root
    - mode: 644

/var/www/html/404.html
  file.managed:
    - source: salt://profiles/ubuntu/files/404.html
    - user: root
    - group: root
    - mode: 644
