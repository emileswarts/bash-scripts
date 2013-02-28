import subprocess
import sys
 
def sendkeys(*keys):
	subprocess.call(['xdotool', 'search', '--name', 'Spotify Premium - Linux Preview', 'key'] + list(keys))
	return "ok\n"
 
if sys.argv[1] == 'n':
	sendkeys('ctrl+Right')
elif sys.argv[1] == 'p':
	sendkeys('ctrl+Left')

 
def prev(): return sendkeys('ctrl+Left')
