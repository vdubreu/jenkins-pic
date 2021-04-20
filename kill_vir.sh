#! /bin/bash
sudo su
find / -iname kdevtmpfsi* -exec rm -fv {} \;
find / -iname kinsing* -exec rm -fv {} \;
touch /tmp/kdevtmpfsi && touch /tmp/kinsing
echo "kdevtmpfsi is fine now" > /tmp/kdevtmpfsi
echo "kinsing is fine now" > /tmp/kinsing
chmod 0444 /tmp/kdevtmpfsi
chmod 0444 /tmp/kinsing
kill -9 `pgrep kinsing`
kill -9 `pgrep kdevtmpfsi`