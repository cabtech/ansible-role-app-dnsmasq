----
# ansible-role-app-dnsmasq
Install and config Dnsmasq on Ubuntu

## Required variables
| Name | Type | Purpose | Example |
| ---- | ---- | ------- | ------- |
| dnsmasq_domains | list(string) | used to form the search directive in /etc/resolv.conf | ['eu-west-2.compute.internal'] |
| dnsmasq_nameserver | IpV4 | external DNS for none-local requests | on AWS, will be your CIDR 'plus 2' =>  x.y.0.2 |

## Default variables
| Name | Type | Purpose | Value |
| -----| ---- |------- | ----- |
| dnsmasq_resolv_conf | UnixPath | standard location for resolver detail | `/etc/resolv.conf` |
| dnsmasq_etc_dir | UnixPath | where Dnsmasq keeps its config | `/etc/dnsmasq.d` |
| dnsmasq_fallback_conf| UnixPath | where to put details of fallback DNS server | `/etc/fallback_resolv.conf` |
| dnsmasq_listen_ip | IpV4 | address for Dnsmasq to listen on | `127.0.0.1` |
| dnsmasq_ok_to_reboot | Boolean | safety catch to prevent reboot | false |
| dnsmasq_pkg_name | list(string) | what to install | dnsmasq |
| dnsmasq_reboot_timeout | integer | how long to wait before checking the host is back | 90 |
| dnsmasq_state | string | oneOf(present, absent) | present |
| dnsmasq_svc_name | string | dnsmasq.service |

## Optional variables
| Name | Type | Purpose | Typical Value |
| ---- | ---- | ------- | ------------- |
| dnsmasq_consul_port | integer | if set, then '.consul' queries will be routed to localhost on this port | 8600 |

## To Do
If you're updating cloud servers with variable IP addresses, then post reboot check will fail.

## To Do
* setting dnsmasq_state to absent should reinstall the SystemD Resolver
* support RH based systems

****
