----
# ansible-role-app-dnsmasq
Install and config Dnsmasq on Ubuntu

## Required variables
| Name | Purpose | Example |
| -----| ------- | ------- |
| dnsmasq_domains | used to form the search directive in /etc/resolv.conf | ['eu-west-2.compute.internal'] |
| dnsmasq_nameserver | external DNS for none-local requests | on AWS, will be your CIDR 'plus 2' =>  x.y.0.2 |

## Default variables
| Name | Purpose | Value |
| -----| ------- | ----- |
| dnsmasq_resolv_conf | standard location for resolver detail | `/etc/resolv.conf` |
| dnsmasq_etc_dir | where Dnsmasq keeps its config | `/etc/dnsmasq.d` |
| dnsmasq_fallback_conf| where to put details of fallback DNS server | `/etc/fallback_resolv.conf` |
| dnsmasq_listen_ip | address for Dnsmasq to listen on | `127.0.0.1` |
| dnsmasq_ok_to_reboot | safety catch to prevent reboot | false |
| dnsmasq_pkg_name | what to install | dnsmasq |
| dnsmasq_reboot_timeout | how long to wait before checking the host is back | 90 |
| dnsmasq_state | present or absent | present |
| dnsmasq_unit_name | | dnsmasq.service |

## Optional variables
| Name | Purpose | Typical Value |
| ---- | ------- | ------------- |
| dnsmasq_consul_port | if set, then '.consul' queries will be routed to localhost on this port | 8600 |

## To Do
If you're updating cloud servers with variable IP addresses, then post reboot check will fail.

## To Do
* setting dnsmasq_state to absent should reinstall the SystemD Resolver
* support RH based systems

****
