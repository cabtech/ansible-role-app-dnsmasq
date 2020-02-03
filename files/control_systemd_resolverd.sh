#!/bin/bash
mode=${1:-'undefined'}
if [[ "$mode" == "absent" ]]; then
	systemctl stop    systemd-resolved.service
	systemctl disable systemd-resolved.service
	systemctl mask    systemd-resolved.service
elif [[ "$mode" == "present" ]]; then
	systemctl unmask systemd-resolved.service
	systemctl enable systemd-resolved.service
	systemctl start  systemd-resolved.service
fi
exit 0
