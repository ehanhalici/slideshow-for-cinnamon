# slideshow for cinnamon desktop

This app converts video to picture and implements slideshow using bash script

### usage

open streamToImg.py

set your video name, current is 'cloud1.mp4'
cap = cv2.VideoCapture('cloud1.mp4')

and create img
python streamToImg.py

than
open s.sh

Set 
DIR, set your Directory Containing Background, current is my path 
SLEEPTIME, set sleeping time you want, current is 0.09
MAx, set maximum img count, current is 1572

and start 
bash s.sh