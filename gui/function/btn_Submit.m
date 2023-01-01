function btn_Submit(source, event)

cp=get(gca, 'CameraPosition');

h1=findobj('Tag', 'btn01');
name=h1.UserData.name();

h2=findobj('Tag', 'btn02');
i=h2.UserData.scene_num;

h3=findobj('Tag', 'btn03');
j=h3.UserData.num_v;

h4=findobj('Tag', 'btn07');
h4.String=j;

text_name = ['results\', name, '\', num2str(i), '_', num2str(j), '.txt'];
fileID = fopen(text_name, 'wt');
fprintf(fileID, '%f %f %f', cp);
fclose(fileID);

fig_name2 = ['results\', name, '\', num2str(i), '_', num2str(j)];
print(fig_name2,'-dpng');

j=j+1;
h3.UserData.num_v=j;
end