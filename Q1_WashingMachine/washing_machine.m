fis = mamfis('Name','WashingMachineCycle');

fis = addInput(fis,[0 100],'Name','DirtLevel');
fis = addMF(fis,'DirtLevel','trapmf',[0 0 20 40],'Name','Low');
fis = addMF(fis,'DirtLevel','trimf',[30 50 70],'Name','Medium');
fis = addMF(fis,'DirtLevel','trapmf',[60 80 100 100],'Name','High');

fis = addInput(fis,[0 10],'Name','LoadSize');
fis = addMF(fis,'LoadSize','trapmf',[0 0 2 4],'Name','Small');
fis = addMF(fis,'LoadSize','trimf',[3 5 7],'Name','Medium');
fis = addMF(fis,'LoadSize','trapmf',[6 8 10 10],'Name','Large');

fis = addOutput(fis,[0 60],'Name','CycleTime');
fis = addMF(fis,'CycleTime','trapmf',[0 0 15 25],'Name','Short');
fis = addMF(fis,'CycleTime','trimf',[20 35 50],'Name','Medium');
fis = addMF(fis,'CycleTime','trapmf',[45 55 60 60],'Name','Long');

rules = [
1 1 1 1 1
1 2 1 1 1
1 3 2 1 1
2 1 2 1 1
2 2 2 1 1
2 3 3 1 1
3 1 2 1 1
3 2 3 1 1
3 3 3 1 1
];

fis = addRule(fis,rules);

fuzzyLogicDesigner(fis)