function Video2Edges(videoName,outputName)
    tic; %��������
    outFrames=getEdgesFromVideo(videoName);
    videoOut = VideoWriter(outputName);
    open(videoOut);
    writeVideo(videoOut,outFrames);
    close(videoOut);
    disp(strcat('Total time: ',num2str(toc),' s'))
end