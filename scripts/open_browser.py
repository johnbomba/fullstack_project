#!/usr/bin/env python3

import webbrowser as w

filename = "ip.txt"
with open(filename, 'r') as f:
    read = f.read().strip()


w.open_new('http://'+read)
