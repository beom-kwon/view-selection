function btn_Refresh(source, event)
h=findobj('Tag', 'btn02');
i=h.UserData.scene_num;
ShowSkeleton(i);
end