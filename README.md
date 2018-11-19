Feature extraction from musical scores
--------------------------------------

This is a simple MATLAB script for parsing a musicXML file (of a single part, written "partwise") and computing many derivable features for use with machine-learning algorithms.

All code available has been developed and tested in Mathworks MATLAB r2018a.

When cloning this repository, remember to do so with the "recursive" option (Git 1.6.5 or later) in order to load submodules as well.
```
git clone --recursive https://github.com/fabiozeh/expressiveViolin.git
```

To use the script, simply supply the paths to the input musicXML file and desired output ARFF file.
```
score2arff('path/to/input.xml', 'path/to/output.arff');
```

### Credits

The MATLAB code uses functions of the [Midi Toolbox](https://github.com/miditoolbox/1.1) for computing features of melodic expectation according to Eugene Narmour's Implication/Realization model.

