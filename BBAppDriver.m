% lookFor is the pattern to load into the BBApp. Examples:
% '*.nii'
% 'Coreged_*.nii'
% 'T1*post.nii' - To get both T1Wpost.nii and T1post.nii
% To all of these you can add a 'BetStripped_' at the start to get only the
% betstripped.
lookFor = 'BetStripped_T1*post.nii';

if exist('BaseP', 'var') == 0
	BaseP = uigetdir;
end

foundFiles = dir([BaseP filesep '**' filesep lookFor]);
fileList = [];

for i=1:size(foundFiles,1)
    toAppend = [foundFiles(i).folder filesep foundFiles(i).name];
    fileList = [fileList string(toAppend)];
end

BBApp(fileList,BaseP)