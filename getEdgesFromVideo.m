function [outFrames] = getEdgesFromVideo(videoName)
    tic; %��������
    if nargin<1
        videoName = '���ع�.mp4';
    end
    %��ȡ��Ƶ
    video = VideoReader(videoName);
    frames=[]; %�������е�֡
    frames=read(video);
    [~,~,~,frameCount]=size(frames);
    grayFrames=[];
    outFrames=[];
    %��������֡
    for i=1:frameCount
        I=rgb2gray(frames(:,:,:,i)); %�Ҷȴ���
        BW=edge(I,'Canny');
        grayFrames(:,:,:,i)=I;
        outFrames(:,:,:,i)=BW;
    end
end