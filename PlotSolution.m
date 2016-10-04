function PlotSolution(tour,model)

    tour=[tour tour(1)];
    
    plot(model.x(tour),model.y(tour),'k-o',...
        'MarkerSize',10,...
        'MarkerFaceColor','y',...
        'LineWidth',1.5);
    hold on;
       plot(70,50,'k-o',...
        'MarkerSize',10,...
        'MarkerFaceColor','r',...
        'LineWidth',1.5);
    voronoi(model.x,model.y);
   hold off;
    
    xlabel('x');
    ylabel('y');
    
    axis equal;
    grid on;
    
	alpha = 0.1;
	
    xmin = min(model.x);
    xmax = max(model.x);
    dx = xmax - xmin;
    xmin = floor((xmin - alpha*dx)/10)*10;
    xmax = ceil((xmax + alpha*dx)/10)*10;
    xlim([xmin xmax]);
    
    ymin = min(model.y);
    ymax = max(model.y);
    dy = ymax - ymin;
    ymin = floor((ymin - alpha*dy)/10)*10;
    ymax = ceil((ymax + alpha*dy)/10)*10;
    ylim([ymin ymax]);
    
    
end