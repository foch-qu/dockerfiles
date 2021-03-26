#!/usr/bin/expect -f
#!/bin/bash
spawn /qnx/tmp/qnx-sdp-6.6-201402230339.bin
expect "PRESS <ENTER> TO CONTINUE:"
send "\n"
expect "   DEFAULT:"
send "\n"
sleep 2
expect "License Key (DEFAULT: ):"
sleep 2
send "*******\n"
sleep 5
for {set i 0} {$i<=92} {incr i} {
        expect "PRESS <ENTER> TO CONTINUE:"
        send "\n"
        sleep 1
}
expect "DO YOU ACCEPT THE TERMS OF THIS LICENSE AGREEMENT? (Y/N):"
send "Y\n"
expect "      :"
send "\n"
expect "      :"
send "\n"
expect "      :"
send "\n"
expect "PRESS <ENTER> TO CONTINUE:"
send "\n"
sleep 60
expect "PRESS <ENTER> TO CONTINUE:"
send "\n"
sleep 10
expect off

