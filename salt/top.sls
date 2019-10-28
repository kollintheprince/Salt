#!jinja|yaml

base:
  #
  # Run package manager states FIRST.
  #
  'os:Ubuntu':
    - match: grain
    - profiles.ubuntu
