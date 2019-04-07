function [edgeFrames] = getEdgesFromVideo(videoName)
% ����Ƶ�ļ��ж�ȡ����edges(Canny)��������ά������
% ����λ����Ĵ�СΪ[֡��,֡��,ͨ����=1,��֡��]
% ���������[videoName]�ļ���
    video = VideoReader(videoName);%��ȡ��Ƶ
    frames=[]; %�������е�֡
    frames=read(video);
    [~,~,~,frameCount]=size(frames);
    %grayFrames=[];
    edgeFrames=[];
    %��������֡
    for i=1:frameCount
        I=rgb2gray(frames(:,:,:,i)); %�Ҷȴ���
        BW=edge(I,'Canny');
        %grayFrames(:,:,:,i)=I;
        edgeFrames(:,:,:,i)=BW;
    end
end