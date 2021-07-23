# Usage
# python resize_image.py examples/input/goodland.jpg 1024

import os
import sys
import cv2
import imutils

image_path = sys.argv[1]
image_split = image_path.split(".")
new_image_path = image_split[0] + "-{}.{}".format(sys.argv[2], image_split[-1])

if not os.path.exists(image_path):
    print("Image not existsed !")

image = cv2.imread(image_path)
resize_image = imutils.resize(image, width=int(sys.argv[2]))
cv2.imwrite(new_image_path, resize_image)

print("Resized {} successfully !".format(image_path))
print("Saved image to {}.".format(new_image_path))
