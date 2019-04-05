function Video2Edges(videoName,outputName,showDetail)
    tic;
    if nargin<3
        showDetail = '1';
    end
    if nargin<2
        outputName = 'Êä³ö';
    end
    if nargin<1
        videoName = '¿ª¹Ø¹ñ.mp4';
    end

    video = VideoReader(videoName);
    frames=[];
    % for currTime=0:video.FrameRate
    %     if hasFrame(video) == false
    %         break;
    %     end
    %     %video.CurrentTime=currTime;
    %     frame = readFrame(video);
    %     frames(:,:,:,currTime+1)=frame;
    % end
    frames=read(video);
    [~,~,~,frameCount]=size(frames);
    grayFrames=[];
    outFrames=[];
    for i=1:frameCount
        I=rgb2gray(frames(:,:,:,i));
        BW=edge(I,'Canny');
        grayFrames(:,:,:,i)=I;
        outFrames(:,:,:,i)=BW;
    %     imwrite(I,strcat(mat2str(i),'.png'));
    %     imwrite(BW,strcat('0',mat2str(i),'.png'));
    end
    % implay(outFrames)
    % videoOut = VideoWriter('gray.mp4');
    % open(videoOut);
    % writeVideo(videoOut,grayFrames);
    % close(videoOut);
    videoOut = VideoWriter(outputName);
    open(videoOut);
    writeVideo(videoOut,outFrames);
    close(videoOut);
    if showDetail ~= '0'
        disp(strcat('Total time: ',num2str(toc),' s'))
    end
end