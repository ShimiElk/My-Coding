%%  Simply copy the file to your computer
% select the path you want
% set the files you need before running 


file_types = [".mdl",".slx", ".m", ".mlx"];
fprintf("Searching in:\n%s\n\n",pwd)

% start searching for the files used in the MATLAB path 

utilitbxes = [];
for l=1:length(file_types)
    files_name_temp = "**\*"+file_types(l);
    files_data = dir(files_name_temp);
    [r,~]=size(files_data);
    fprintf("Found %1.0f files at data type %s\n\n",r,file_types(l));
    for ll=1:r
        files_name_current = files_data(ll,1).name;
        utilitbxes_temp = dependencies.toolboxDependencyAnalysis({files_name_current});
        utilitbxes = [utilitbxes,string(utilitbxes_temp)];
    end
end

fprintf("The toolboxes that are qeuiered are:\n")
files = unique(utilitbxes')
clear %utilitbxes l ll files_name_temp file_types