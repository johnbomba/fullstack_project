#!/usr/bin/env/ python3

import os
import webbrowser as w
import time

os.system("killall -9 'firefox'")

start_time = time.time()

time.sleep(300)

from ip import ip
site = 'http://' + ip + '/blog/index.php/2020/07/15/hello-world'

while True:
    counter = 0
    countdown = time.time()
    if contdown % 60 = 0:
        w.open_new_tab(site)
        counter += 1
    if counter >= 10:
        time.sleep(45)
        os.system("killall -9 'firefox'")
