#!/bin/bash
./gost -D -L socks5://127.0.0.1:30000 &
./gost -D -L rtcp://:22200/127.0.0.1:30000 -F "relay+ws://v6.li0102.site:80?path=/14787566-8da7-46d8-aaad-2c25852eb863&host=v6.li0102.site"
