
# BBApp

## Bounding Box Application
- Designed for the purpose of labeling boxes in 3D MR images.
- Outputs a database file for further analysis of marked areas.

## BBApp Driver
- A helper code designed to locate all files matching a pattern.
- Scans all subdirectories 
- Activates the BBApp with suitable input formats.

## Installation
- An app built on top of matlab app designer (Designed in matlab version 2018a).

## Run
BBAppDriver.m : Provide the .nii file names:
BetStripped_T1post.nii 
Can be mod can be modified to any given name at:
lookFor = 'BetStripped_T1*post.nii'; [line 7]

## UI
The program includes UI for 3D image visualization and Bounding Box selection

![BBApp interface](https://drive.google.com/uc?export=view&id=0BzANjYEFuIdjS1Jpbmp6UHg1enVmZ3hxZElkcnBvOEdncS1Z)

## Output
BetStripped_{file name}_Mid_Slices > Extracted_1
 - BetStripped_<file name>_Crop_Locs.mat - Coordinates of the extracted box
 - Extracted_box. mat – Images of the extracted box
 - Extracted_Slices.mat – Images of the center ±1 slices within the extracted box
