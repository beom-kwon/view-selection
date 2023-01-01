function btn_Next(source, event)
load('pose_dataset.mat');
h1=findobj('Tag', 'btn03');
h1.UserData.num_v=1;

h2=findobj('Tag', 'btn02');
i=h2.UserData.scene_num;

h4=findobj('Tag', 'btn07');
if h4.String ~= '0'
    i = i + 1;

    h2.UserData.scene_num=i;

    h3=findobj('Tag', 'btn04');
    if i==2;         h3.String=pose_dataset{2,1};
    elseif i==3;     h3.String=pose_dataset{3,1};
    elseif i==4;     h3.String=pose_dataset{4,1};
    elseif i==5;     h3.String=pose_dataset{5,1};
    elseif i==6;     h3.String=pose_dataset{6,1};
    elseif i==7;     h3.String=pose_dataset{7,1};
    elseif i==8;     h3.String=pose_dataset{8,1};
    elseif i==9;     h3.String=pose_dataset{9,1};
    elseif i==10;    h3.String=pose_dataset{10,1};
    elseif i==11;    h3.String=pose_dataset{11,1};
    elseif i==12;    h3.String=pose_dataset{12,1};
    elseif i==13;    h3.String=pose_dataset{13,1};
    elseif i==14;    h3.String=pose_dataset{14,1};
    elseif i==15;    h3.String=pose_dataset{15,1};
    elseif i==16;    h3.String=pose_dataset{16,1};
    elseif i==17;    h3.String=pose_dataset{17,1};
    elseif i==18;    h3.String=pose_dataset{18,1};
    elseif i==19;    h3.String=pose_dataset{19,1};
    elseif i==20;    h3.String=pose_dataset{20,1};
    elseif i==21;    h3.String=pose_dataset{21,1};
    elseif i==22;    h3.String=pose_dataset{22,1};
    elseif i==23;    h3.String=pose_dataset{23,1};
    elseif i==24;    h3.String=pose_dataset{24,1};
    elseif i==25;    h3.String=pose_dataset{25,1};
    end

    h4.String=0;
    if  i <= size(pose_dataset,1)
        ShowSkeleton(i);
    else
        close(gcf);
    end
end
end