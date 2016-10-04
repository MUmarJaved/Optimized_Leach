function model=CreateGraph()

i=1:4;
s = [1 1 1 2 2 2 3 3 3 4 4 4  ];
t = [2 3 4 1 3 4 1 2 4 1 2 3];
G = digraph(s,t)
h=plot(G)
CH=1;

for j=[ 2 3 4]
highlight(h,1,j,'EdgeColor','r','LineWidth',1.5);
end
pause(1)
for j=[3 4]
highlight(h,1,j,'EdgeColor','k','LineWidth',1.5);
end
highlight(h,1,'MarkerSize',10);
pause(1)
for j=[1 3 4]
highlight(h,2,j,'EdgeColor','r','LineWidth',1.5);
end
pause(1)
for j=[1 4]
highlight(h,2,j,'EdgeColor','k','LineWidth',1.5);
end
highlight(h,2,'NodeColor','y');
pause(1)
for j=[1 2 4]
highlight(h,3,j,'EdgeColor','r','LineWidth',1.5);
end
pause(1)
for j=[1 2]
highlight(h,3,j,'EdgeColor','k','LineWidth',1.5);
end
highlight(h,3,'NodeColor','y');
pause(1);
highlight(h,4,'NodeColor','y');
  

end