function btn_Start(source, event)
h=findobj('Tag', 'btn01');
name=h.UserData.name();

folder_name = ['results ', name];
command = ['mkdir ' folder_name];
eval(command);

load('pose_dataset.mat');
i = source.UserData.scene_num;
ShowSkeleton(i);

h3=findobj('Tag', 'btn04');
if i==1; h3.String=pose_dataset{1,1};
end
end