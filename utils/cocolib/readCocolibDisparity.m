function [ alphaMap ] = readCocolibDisparity( h5file )
%READCOCOLIBDISPARITY Read disparity HDF5 files generated by Cocolib

h5data = h5read(h5file, '/DISPARITY');
alphaMap = permute(h5data, [4 3 2 1]);
alphaMap = flip(alphaMap, 1);
alphaMap = flip(alphaMap, 2);

end
