
# SC_based_gaze_prediction

This repository contains the code of the following paper.
- Yujie Li, Atsunori Kanemura, Hideki Asoh, Taiki Miyanishi, and Motoaki Kawanabe, "A sparse coding framework for gaze prediction in egocentric video", _IEEE International Conference on Acoustics, Speech, and Signal Processing (ICASSP)_, pp. 1313–1317, April 2018.

This software is licensed under the Apache License 2.0.


## Information

We run this software on the following envirnment.

* Windows 10.
* MATLAB R2017b.
* 7-Zip
* Git for Windows
* ffmpeg

This software use the following programs and data.

* canoncorr
    * The MathWorks, Inc.
* OMP.m
    * https://github.com/jbhuang0604/FastSC/blob/master/tools/dictionary%20learning/KSVD_Matlab_ToolBox/OMP.m
* A Weighted Sparse Coding Framework for Saliency Detection
    * https://www.researchgate.net/publication/294874666_Code_WSC
* SLIC Superpixels
    * http://ivrl.epfl.ch/research/superpixels


## How to run.

1. Run setup.ps1 with Windows PowerShell.
2. Expand Code_WSC.rar with 7-zip.
3. Copy the following files to current working directory from expanded Code_WSC.rar archive.
    * Code_WSC\\funcs (directory)
    * Code_WSC\\\*.m
    * Code_WSC\\SLICSuperpixelSegmentation.exe
4. Apply Code_WSC.patch with patch.exe command.
    * PS> C:\\Program` Files\\Git\\usr\\bin\\patch.exe -p1 -i Code_WSC.patch
5. Generate test data.
    1. Open Windows PowerShell.
    2. Change directory to expanded GTEA_Gaze_Dataset.
        * PS> cd path\\to\\GTEA_Gaze_Dataset
    3. Make directory.
        * PS> mkdir jpg\\001
    4. Run ffmpeg to generate test data.
        * PS> ffmpeg.exe -i .\\Videos\\001.mpg -r 15 -f image2 .\\jpg\\001\\%010d.jpg
    5. Copy generated images 0000000400.jpg ~ 0000000410.jpg.
        * PS> (ls .\\jpg\\001\\*.jpg)[400..410] | cp -Destination ..\\data\\images\\
6. Open Demo_WSC.m with MATLAB.
7. Run Demo_WSC.

