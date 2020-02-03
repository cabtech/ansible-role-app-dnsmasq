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
| dnsmasq_listen_ip | address for Dnsmasq to listen on | `127.0.0.1` |
| dnsmasq_state | present or absent | present |

## Optional variables
| Name | Purpose | Typical Value |
| ---- | ------- | ------------- |
| dnsmasq_consul_port | if set, then '.consul' queries will be routed to localhost on this port | 8600 |

## To Do
* setting dnsmasq_state to absent should reinstall the SystemD Resolver
* support RH based systems

****
