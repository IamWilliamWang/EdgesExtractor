edgesFrame = getEdgesFromVideo('¿ª¹Ø¹ñ_±ßÔµÊä³ö.avi');
[~,~,~,frameCount] = size(edgesFrame);
for loop=1:4
    startFrame=frameCount*loop/(loop+1);
    result=getStaticFrame(edgesFrame,startFrame);
    subplot(2,2,loop)
    imshow(result)
    title(strcat(mat2str(loop), '/', mat2str(loop+1) ) )
end