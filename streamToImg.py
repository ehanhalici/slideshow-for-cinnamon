import cv2
import numpy as np
import os

# set video name
cap = cv2.VideoCapture('cloud1.mp4')

os.mkdir("img")
os.chdir("./img")

# Check if camera opened successfully
if (cap.isOpened()== False): 
	print("Error opening video stream or file")

i = 0

print("creating img...")
while(cap.isOpened()):
	# Capture frame-by-frame
	ret, frame = cap.read()
	if ret == True:
		name = "img"+str(i)+".jpg"
		cv2.imwrite(name,frame)
		i +=1
		# Press Q on keyboard to	exit
		if cv2.waitKey(25) & 0xFF == ord('q'):
			break
	else: 
		break

cap.release()
cv2.destroyAllWindows()