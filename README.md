# ScriptsDWI
Scripts for analyses of DWI

## parsing_method_file.ipython

This script extracts all the useful data from the 'method' file for some DWI analyses.
The script is a Python Notebook.

To run it, edit:
- subjectnames: table with the name of your subject's folders.
- subjectpath: path where the data are stored
- methodfilename: name of the 'method' file

The script is organized in 3 functions:
- getBval(): extracts the bvals and put them as one line in a 'subjectname.bval' file.
- getBvec(): extracts the bvecs and put them as 3 lines (x,y,z) in a 'subjectname.bvec' file.
- getInfo(): extracts the dimensions in voxels, computes the field of view (FOV, dimensions of the image in voxel X dimensions of voxels) and the number of DWIs (including B0s). This is then useful to process the data with ExploreDTI on Matlab (http://www.exploredti.com/).