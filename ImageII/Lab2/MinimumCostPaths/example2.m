im=imread('Portrait.png');
tic;
bms=BMS_stochastic(im, 10000);
toc
seeds=GetBorderSeeds(im);
labels=seeds;
labels(:)=0; 
tic;
bms_Dijkstra=BMS_Dijkstra(im,seeds,labels);
toc
bms-bms_Dijkstra