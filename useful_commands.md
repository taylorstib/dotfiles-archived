# Useful Terminal Commands
### Randomly Useful

```bash
# Useful Stopwatch. Stops on most key press
time read -sn1

# Replaces first argument with the second if typo in first command
^foo^bar

# Run the last command as sudo if forget the first time
sudo !!

# Dont remember the command in history
<space>command

# Which commands do I run most often??
history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

# Show hidden files in Mac Finder window
defaults write com.apple.finder AppleShowAllFiles YES
# Hide them again
defaults write com.apple.finder AppleShowAllFiles NO
```
---

### Local Web Servers
Python (python < version 3)

`python -m SimpleHTTPServer 8888`

Ruby port 9090

`ruby -run -e httpd . -p 9090`

---

### XAMMP Server

Start the XAMPP server

`sudo /opt/lampp/lampp start`


Shut it down

`sudo /opt/lampp/lampp stop`


Restart

`sudo /opt/lampp/lampp restart`

If another web server already running, stop it.

`sudo /etc/init.d/apache2 stop`
