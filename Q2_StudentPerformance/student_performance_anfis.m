data = [
95 90 92 90
80 75 78 75
60 55 58 55
40 50 45 40
30 25 35 20
70 80 85 80
85 60 75 72
50 45 40 38
90 95 98 95
65 70 68 65
];

fis = genfis1(data,3,'trimf');

[trainedFis,error] = anfis(data,fis,50);

plot(error)
xlabel('Epoch')
ylabel('Training Error')
title('ANFIS Training Error')