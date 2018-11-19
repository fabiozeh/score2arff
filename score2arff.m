function score2arff (score_filename, arff_filename)

addpath(genpath('musicXML'));

sc = parseMusicXML(score_filename);
makeArff(arff_filename, sc);

end