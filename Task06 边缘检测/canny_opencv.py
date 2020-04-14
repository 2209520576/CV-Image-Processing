# -*- coding: utf-8 -*-

"""
cv2.Canny(image,            # 输入原图（必须为单通道图）
          threshold1, 
          threshold2,       # 较大的阈值2用于检测图像中明显的边缘
          [, edges[, 
          apertureSize[,    # apertureSize：Sobel算子的大小
          L2gradient ]]])   # 参数(布尔值)：
                              true： 使用更精确的L2范数进行计算（即两个方向的倒数的平方和再开放），
                              false：使用L1范数（直接将两个方向导数的绝对值相加）。
"""

import cv2
import numpy as np  
import matplotlib.pyplot as plt
 
original_img = cv2.imread("IMG/test.jpg", 0)

# canny(): 边缘检测
img1 = cv2.GaussianBlur(original_img,(3,3),0)
canny = cv2.Canny(img1, 50, 150)

plt.subplot(1,2,1),plt.imshow(original_img,cmap = 'gray')
plt.title('Original'), plt.xticks([]), plt.yticks([])

plt.subplot(1,2,2),plt.imshow(canny,cmap = 'gray')
plt.title('Canny'), plt.xticks([]), plt.yticks([])
plt.show()
