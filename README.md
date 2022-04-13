# bash-pingsweeper
An IP address range ping sweeper written in Bash.

## Usage
./pingsweep <first three octets of an IP range>
Pingsweep will scan the IP range given in the argument, iteratively filling in the remaining octet with values from 1 to 254 and returning the corresponding IP addresses of those who respond to an ICMP ping, each on a separate line.
