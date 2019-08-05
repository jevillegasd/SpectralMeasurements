y = data(:,1,1);

%Manually input the x axis
x=[600 610 620 630 640 650 660 670 680 690 700 750 800 850 900 950 1000 1050 1100 1150 1200 1250 1300]; %Carrier test voltage
x2 = Ix;




 %x = [500 1000 1500 2000 2500 3000 3500 4000];
z = zeros(size(data,1),length(x));
for i=1:length(x),z(:,i)=data(:,2,i); end




%% Plot data and format the plot
    pcolor(x,y,z)
    axes1 = gca;
    shading('interp');
    %h = colorbar;
    
    ylabel('Wavelength [m]');
    xlabel('Voltage [mV]');

    %Set the view
    view(axes1,[0 90]);
    box(axes1,'on');
    % Set the remaining axes properties
    set(axes1,'CLim',[-45 -15],'Colormap',...
        [0.0416666666666667 0 0;0.0833333333333333 0 0;0.125 0 0;0.166666666666667 0 0;0.208333333333333 0 0;0.25 0 0;0.291666666666667 0 0;0.333333333333333 0 0;0.375 0 0;0.416666666666667 0 0;0.458333333333333 0 0;0.5 0 0;0.541666666666667 0 0;0.583333333333333 0 0;0.625 0 0;0.666666666666667 0 0;0.708333333333333 0 0;0.75 0 0;0.791666666666667 0 0;0.833333333333333 0 0;0.875 0 0;0.916666666666667 0 0;0.958333333333333 0 0;1 0 0;1 0.0416666666666667 0;1 0.0833333333333333 0;1 0.125 0;1 0.166666666666667 0;1 0.208333333333333 0;1 0.25 0;1 0.291666666666667 0;1 0.333333333333333 0;1 0.375 0;1 0.416666666666667 0;1 0.458333333333333 0;1 0.5 0;1 0.541666666666667 0;1 0.583333333333333 0;1 0.625 0;1 0.666666666666667 0;1 0.708333333333333 0;1 0.75 0;1 0.791666666666667 0;1 0.833333333333333 0;1 0.875 0;1 0.916666666666667 0;1 0.958333333333333 0;1 1 0;1 1 0.0625;1 1 0.125;1 1 0.1875;1 1 0.25;1 1 0.3125;1 1 0.375;1 1 0.4375;1 1 0.5;1 1 0.5625;1 1 0.625;1 1 0.6875;1 1 0.75;1 1 0.8125;1 1 0.875;1 1 0.9375;1 1 1]);
    % Create colorbar
    h = colorbar(axes1);
    set(get(h,'title'),'string','Intensity [dBm]');
    colormap hot
    
    
    %set(axes1, 'XScale', 'log')
    
    