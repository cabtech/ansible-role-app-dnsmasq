lint: .lintyaml .lintansible

.lintansible: */*.yml .config/ansible-lint.yml
	ansible-lint --config-file=.config/ansible-lint.yml
	@touch $@

.lintyaml: */*.yml .config/yamllint
	yamllint --config-file=.config/yamllint .
	@touch $@

push:
	@mkdir -p /mnt/hgfs/shared/ansible-role-app-dnsmasq
	rsync -a * /mnt/hgfs/shared/ansible-role-app-dnsmasq

clean:
	@/bin/rm -f .lint*
