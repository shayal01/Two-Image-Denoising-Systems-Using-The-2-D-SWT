# Two-Image-Denoising-Systems-Using-The-2-D-SWT
## Description
This project was done as part of the course for digital image proecessing in ASU.
Input image is a noisy image and noise in the image is the present in the highest spatial frequency band in the image. So, we are decomposing the image into different frequency band using 2 different methods of Sub-band wavelet decomposition and zeroing out the high frequency bands to denoise the image.
## Methodology && Results
 ### 16-band dyadic (pyramid) decomposition:
 •  _Highest frequency band is zeroed out_
When the highest frequency band is made to zero the noise is reduced compared to original image, which results to increase the quality of the reconstructed image. From the 2-D DFT plot of the reconstructed image, we can see that some high frequencies are in black in color, which means some high frequency bands are made to zero.

•  _3 Highest frequency band is zeroed out_
When the 3 highest frequency bands are made to zero more noise is reduced compared to case 1a reconstructed image, which results to increase the quality of the reconstructed image compared to case 1a. From the 2-D DFT plot of the reconstructed image, we can see more highest frequencies are in black in color compared to case1a, which implies some more high frequency bands are made to zero.

•  _6 Highest frequency band is zeroed out_
In this case, more higher frequency bands are made to zero. Even though most of the noise (grains)in the image is filtered out, we obtained a reconstructed image which is not sharp. It is little blurry. This is because we are filtering out some of the highest frequencies which made some edges in the image blurry. We can also observe in the DFT plot that ,most of the high frequencies are filtered out and only small frequency components are pertained in the image.
### 22-band modified pyramid decomposition:
• _3 Highest frequency band is zeroed out_
When the 3 highest frequency bands are made to zero the noise is reduced compared to original image, which results to increase the quality of the reconstructed image. From the 2-D DFT plot of the reconstructed image, we can see that highest frequencies are in black in color, which means some high frequency bands are made to zero.

•_10 Highest frequency band is zeroed out_
When the 10 highest frequency bands are made to zero more noise is reduced compared to case 2a reconstructed image, which results to increase the quality of the reconstructed image compared to case 2a. From the 2-D DFT plot of the reconstructed image, we can see more highest frequencies are in black in color compared to case1, which implies some more high frequency bands are made to zero.

• _15 Highest frequency band is zeroed out_
Coming to the final case where 15 highest frequency bands are made to zero, most of the noise is filtered out from the input noisy image, which results to increase the quality of the reconstructed image a lot (with very less grains). From the 2-D DFT plot of the reconstructed image, we can see more highest frequencies are blacked out, which implies some more high frequency bands are made to zero.
 
The figures of each cases are uploaded in this repository
