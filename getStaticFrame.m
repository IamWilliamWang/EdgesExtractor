function [result] = getStaticFrame(edgesFrame,startFrame,endFrame,step)
% ��edges��ά������ȡ��ά�ֲ��������ص�
% ����[֡��֡�ߣ�ͨ����=1]
% ���������[edgesFrame]��άͼ������,[startFrame=1]��ʼ֡,[endFrame=��֡��]����֡,[step]ѭ������
    [width,height,depth,frameCount]=size(edgesFrame);
    if nargin<4
        step=1;
    end
    if nargin<3
       endFrame=frameCount;
    end
    if nargin<2
       startFrame=1; 
    end
    result = ones(width,height,depth); %������ͬ��һ֡��С��ones
    startFrame=floor(startFrame); %���λ�����
    endFrame=floor(endFrame);
    for depth=startFrame:step:endFrame
        result = result & edgesFrame(:,:,:,depth);
    end
end