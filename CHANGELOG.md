motd CHANGELOG
=====================

This file is used to list changes made in each version of the motd cookbook.

1.0.1
-----
- Fix LWRP usage of `motd` to be `et_motd`, since the cookbook name changed

1.0.0
-----
- Change cookbook name to et_motd to reflect forking nature
- Merge in fix by @greglu for motd::knife-status w/r/t `node['chef_client']['interval']`
- Merge in fix for Chef::Config `cache_path` by @barthv
- Add linting, style, unit & integration tests

0.4.1
-----

- Convert automatically detected interval to minutes

0.4.0
-----

- Use a chef_handler instead of "knife status" to get the last successful chef run
  This is faster than invoking ruby on each login

0.1.0
-----
- [Chris Aumann] - Initial release of motd
