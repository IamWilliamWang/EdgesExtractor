function [result] = getStaticFrame(edgesFrame,startFrame,endFrame)
% 由edges四维数组提取出维持不动的像素点
% 返回[帧宽，帧高，帧深度=1]
% 输入参数：[edgesFrame]四维图像数组,[startFrame=1]开始帧,[endFrame=帧数]结束帧
    [width,height,depth,frameCount]=size(edgesFrame);
    if nargin<3
       endFrame=frameCount;
    end
    if nargin<2
       startFrame=1; 
    end
    result = ones(width,height,depth); %创建等同第一帧大小的ones
    startFrame=floor(startFrame); %整形化参数
    endFrame=floor(endFrame);
    for depth=startFrame:endFrame
        result = result & edgesFrame(:,:,:,depth);
    end
end