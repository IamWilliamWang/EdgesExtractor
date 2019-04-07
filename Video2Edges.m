function Video2Edges(videoName,outputName,dispTime)
    tic; %��������
    if nargin<3
        dispTime='no_display';
    end
    if nargin<2
        outputName = '���';
    end
    if nargin<1
        videoName = '���ع�.mp4';
    end
    outFrames=getEdgesFromVideo(videoName);
    videoOut = VideoWriter(outputName);
    open(videoOut);
    writeVideo(videoOut,outFrames);
    close(videoOut);
    if strcmp(dispTime, 'no_display')
        disp(strcat('Total time: ',num2str(toc),' s'))
    end
end