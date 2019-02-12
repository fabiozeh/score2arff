function score2arff (score_filename, arff_filename)

addpath(genpath('musicXML'));

sc = parseMusicXML(score_filename);
[f, info] = noteFeatures(sc);
array2arff(f, arff_filename, info(:,1), info(:,2), info(:,3));
end