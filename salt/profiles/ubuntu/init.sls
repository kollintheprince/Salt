nginx:
  pkg:
    - installed
  service.running:
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://profiles/ubuntu/files/nginx.conf
    - user: root
    - group: root
    - mode: 644
