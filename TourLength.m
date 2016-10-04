
function L=TourLength(tour,model)

    n=numel(tour);

    tour=[tour tour(1)];
    
    L=0;
    for i=1:n
        L=L+model.D(tour(i),tour(i+1));
    end

end