function [result] = getStaticFrame(edgesFrame,startFrame,endFrame)
% ��edges��ά������ȡ��ά�ֲ��������ص�
% ����[֡��֡�ߣ�֡���=1]
% ���������[edgesFrame]��άͼ������,[startFrame=1]��ʼ֡,[endFrame=֡��]����֡
    [width,height,depth,frameCount]=size(edgesFrame);
    if nargin<3
       endFrame=frameCount;
    end
    if nargin<2
       startFrame=1; 
    end
    result = ones(width,height,depth); %������ͬ��һ֡��С��ones
    startFrame=floor(startFrame); %���λ�����
    endFrame=floor(endFrame);
    for depth=startFrame:endFrame
        result = result & edgesFrame(:,:,:,depth);
    end
end