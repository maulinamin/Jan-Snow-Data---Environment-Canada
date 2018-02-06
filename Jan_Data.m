% Clear memory
clear;
folder='C:\Users\Maulin Amin\OneDrive - University of Waterloo\Waterloo\Winter 2018\Environment Canada\Matlab\Git\CSV';
filetype='*.csv';  % or xlsx
f=fullfile(folder,filetype);
d=dir(f);
for k=1:numel(d);
  data{k}=xlsread(fullfile(folder,d(k).name));
end
t1 = data{1,1};
t2 = data{1,2};
t3 = data{1,3};
t4 = data{1,4};
t5 = data{1,5};
t6 = data{1,6};
t7 = data{1,7};
t8 = data{1,8};
s1 = t1(:,11);
s2 = t2(:,11);
s3 = t3(:,11);
s4 = t4(:,11);
s5 = t5(:,11);
s6 = t6(:,11);
s7 = t7(:,11);
s8 = t8(:,11);
Jan2011 = mean(s1,'omitnan');
Jan2012 = mean(s2,'omitnan');
Jan2013 = mean(s3,'omitnan');
Jan2014 = mean(s4,'omitnan');
Jan2015 = mean(s5,'omitnan');
Jan2016 = mean(s6,'omitnan');
Jan2017 = mean(s7,'omitnan');
Jan2018 = mean(s8,'omitnan');
years = {2011;2012;2013;2014;2015;2016;2017;2018};
Mean_Snow = {Jan2011;Jan2012;Jan2013;Jan2014;Jan2015;Jan2016;Jan2017;Jan2018};
figure;
subplot(2,2,1)        % add first plot in 2 x 2 grid
X = cell2table(years);
Y = cell2table(Mean_Snow);
x = X{:,1}; y = Y{:,1};
bar(x,y)
title('Snow in January 2011-2017');
xlabel('Year'); ylabel('Average cm');
subplot(2,2,2)        % add second plot in 2 x 2 grid
numbins = 12;
histogram(y,numbins)
title('Histogram for Snowfall during Jan');
subplot(2,2,[3 4])    % add third plot to span positions 3 and 4
probplot('normal',y);
hold on;
h = probplot(gca,'weibull',y);
set(h,'color','g')
mdl = fitlm(x,y)
%File Directories
% f2011 = 'C:\Users\Maulin Amin\OneDrive - University of Waterloo\Waterloo\Winter 2018\Environment Canada\Matlab\Git\CSV\Jan 2011.csv';
% f2012 = 'C:\Users\Maulin Amin\OneDrive - University of Waterloo\Waterloo\Winter 2018\Environment Canada\Matlab\Git\CSV\Jan 2012.csv';
% f2013 = 'C:\Users\Maulin Amin\OneDrive - University of Waterloo\Waterloo\Winter 2018\Environment Canada\Matlab\Git\CSV\Jan 2013.csv';
% f2014 = 'C:\Users\Maulin Amin\OneDrive - University of Waterloo\Waterloo\Winter 2018\Environment Canada\Matlab\Git\CSV\Jan 2014.csv';
% f2015 = 'C:\Users\Maulin Amin\OneDrive - University of Waterloo\Waterloo\Winter 2018\Environment Canada\Matlab\Git\CSV\Jan 2015.csv';
% f2016 = 'C:\Users\Maulin Amin\OneDrive - University of Waterloo\Waterloo\Winter 2018\Environment Canada\Matlab\Git\CSV\Jan 2016.csv';
% f2017 = 'C:\Users\Maulin Amin\OneDrive - University of Waterloo\Waterloo\Winter 2018\Environment Canada\Matlab\Git\CSV\Jan 2017.csv';
% f2018 = 'C:\Users\Maulin Amin\OneDrive - University of Waterloo\Waterloo\Winter 2018\Environment Canada\Matlab\Git\CSV\Jan 2018.csv';


