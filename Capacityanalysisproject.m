clear all
close all
clc

ld = 2 
mu = 3
time = 120
NN = 10000;
nofcust = [];
sertime = [];
nofcust2 = [];
sertime2 = [];
meannofcust1 = [];
meansertime1 = [];
meannofcust2 = [];
meansertime2 = [];

for kk = 1:NN

    [N,T,nbrdeparted] = checkin1(ld, mu, time);
    nofcust = [nofcust, N];
    sertime = [sertime, T];
    meannofcust1 = [meannofcust1, mean(N)];
    meansertime1 = [meansertime1, mean(T)];
    
end

figure,bar(nofcust),title('No of arrivals of customers1')
ma1=mean(meannofcust1),

figure,bar(sertime),title('Service time of travelers1')
ms1=mean(meansertime1),

[bins,p] = acNhist2(nofcust,0)
figure,plot(bins,p,'k','LineWidth',2);
grid minor;
title('No of travelers per checkin counter1')

[bins,p] = acNhist2(sertime,0)
figure,plot(bins,p,'k','LineWidth',2);
grid minor;
title('No of travelers per checkin counter1')


for kk = 1:NN

    [N2,T2] = checkin2(ld, mu, time);
    nofcust2 = [nofcust2, N2];
    sertime2 = [sertime2, T2];
    meannofcust2 = [meannofcust2, mean(N2)];
    meansertime2 = [meansertime2, mean(T2)];
    
end

figure,bar(nofcust2),title('No of arrivals of customers2')
ma2=mean(meannofcust2),

figure,bar(sertime2),title('Service time of travelers2')
ms2=mean(meansertime2),

[bins,p] = acNhist2(nofcust2,0)
figure,plot(bins,p,'k','LineWidth',2);
grid minor;
title('No of travelers per checkin counter2')

[bins,p] = acNhist2(sertime2,0)
figure,plot(bins,p,'k','LineWidth',2);
grid minor;
title('No of travelers per checkin counter2')
