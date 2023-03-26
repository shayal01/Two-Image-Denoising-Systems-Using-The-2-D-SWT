clc
clear all

[X,map]=imread('lena512noisy.bmp');
figure(1);
imagesc(X)
colormap(map)
title('orginal noisy image')
dft_x=abs(fftshift(fft2(X))); 
figure(2);
imshow(log(1+dft_x), []); title('Mag. spectrum of  noisy image')
[a,h,v,d] = swt2(X,1,'db5');
[ca_a,ch_a,cv_a,cd_a]=swt2(a,1,'db5');%here we are decomposing into 22 sub-bands
[ca_h,ch_h,cv_h,cd_h]=swt2(h,1,'db5');
[ca_v,ch_v,cv_v,cd_v]=swt2(v,1,'db5');
[ca_d,ch_d,cv_d,cd_d]=swt2(d,1,'db5');
[aa,hh,vv,dd]=swt2(ca_a,2,'db5');%two additional levels of decomposition being applied to the lowest-frequency subband)
%setting 3 highest frequency bands to zero
cd_d(:,:)=0; 
ch_d(:,:)=0;
cv_d(:,:)=0;
D=iswt2(ca_d,ch_d,cv_d,cd_d,'db5');
r_1=iswt2(a,h,v,D,'db5');
figure(3);
imagesc(r_1)
colormap(map)
title('Reconstructed image after 3 HF =0 in 22 band modified pyramid');
dft_r1=abs(fftshift(fft2(r_1)));
figure(4);
imshow(log(1+dft_r1), []); title('Mag. spectrum of reconstructed image 3HF=0 in 22 band');
%setting 10 highest freq  bands to zero
ca_d(:,:)=0;
ch_v(:,:)=0;
cv_v(:,:)=0;
cd_v(:,:)=0;
cd_a(:,:)=0;
cd_h(:,:)=0;
cv_h(:,:)=0;
A=iswt2(ca_a,ch_a,cv_a,cd_a,'db5');
H=iswt2(ca_h,ch_h,cv_h,cd_h,'db5');
V=iswt2(ca_v,ch_v,cv_v,cd_v,'db5');
D=iswt2(ca_d,ch_d,cv_d,cd_d,'db5');
r_2=iswt2(A,H,V,D,'db5');
figure(5);
imagesc(r_2)
colormap(map)
title('Reconstructed image after 10 HF =0 in 22 band modified pyramid');
dft_r2=abs(fftshift(fft2(r_2)));
figure(6);
imshow(log(1+dft_r2), []); title('Mag. spectrum of reconstructed image 10HF=0 in 22 band');
%setting 15 highest freq  bands to zero
ca_v(:,:)=0;
cv_a(:,:)=0;
ch_a(:,:)=0;
ca_h(:,:)=0;
ch_h(:,:)=0;
A=iswt2(ca_a,ch_a,cv_a,cd_a,'db5');
H=iswt2(ca_h,ch_h,cv_h,cd_h,'db5');
V=iswt2(ca_v,ch_v,cv_v,cd_v,'db5');
D=iswt2(ca_d,ch_d,cv_d,cd_d,'db5');
r_3=iswt2(A,H,V,D,'db5');
figure(7);
imagesc(r_3)
colormap(map)
title('Reconstructed image after 15 HF =0 in 22 band modified pyramid');
dft_r3=abs(fftshift(fft2(r_3)));
figure(8);
imshow(log(1+dft_r3), []); title('Mag. spectrum of reconstructed image 15HF=0 in 22 band');
%16 band dyadic decomposition 
[a,h,v,d] = swt2(X,5,'db5');
%setting  highest frequency bands to zero
d(:,:,1)=0;
r_4 = iswt2(a,h,v,d,'db5');
figure(9);
imagesc(r_4)
colormap(map)
title('Reconstructed image after 1 HF =0 in 16 band dyadic pyramid');
dft_r4=abs(fftshift(fft2(r_4)));
figure(10);
imshow(log(1+dft_r4), []); title('Mag. spectrum of reconstructed image 1HF=0 in 16 band');
%setting 3 highest frequency bands to zero
h(:,:,1)=0;
v(:,:,1)=0;
r_5 = iswt2(a,h,v,d,'db5');
figure(11);
imagesc(r_5)
colormap(map)
title('Reconstructed image after 3 HF =0 in 16 band dyadic pyramid');
dft_r5=abs(fftshift(fft2(r_5)));
figure(12);
imshow(log(1+dft_r5), []); title('Mag. spectrum of reconstructed image 3HF=0 in 16 band');
%setting 6 highest frequency bands to zero
h(:,:,2)=0;
v(:,:,2)=0;
d(:,:,2)=0;
r_6 = iswt2(a,h,v,d,'db5');
figure(13);
imagesc(r_6)
colormap(map)
title('Reconstructed image after 6 HF =0 in 16 band dyadic pyramid');
dft_r6=abs(fftshift(fft2(r_6)));
figure(14);
imshow(log(1+dft_r6), []); title('Mag. spectrum of reconstructed image 6HF=0 in 16 band');
