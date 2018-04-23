# block ip


```
journalctl -r /usr/sbin/sshd | grep 'Invalid user' | cut -d' ' -f 10 | uniq | sort --version-sort | uniq | wc
```
