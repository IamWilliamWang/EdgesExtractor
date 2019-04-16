# EdgesExtractor
可以提取出图片中所有线段，并将彩色图像转换为黑白线条的图像。

**Video2Edges**使用Canny算子提取视频中的所有Edges，并输出到文件。

使用方法：Video2Edges(输入视频名，输出视频名，是否输出计时)。第三参数传入任意值代表“是”，没有传代表“否”

**OuputStatic**将视频的四位数组中提取静态的物体，并显示。分别输出从1/2、2/3、3/4、4/5处开始提取的结果

**HoughEdges**将得到的静态物体帧使用Hough检测所有线条

**getEdgesFromVideo**(videoName)：从视频文件中读取所有edges(Canny)并返回四维数组结果，该四位数组大小为[帧宽,帧高,帧深度=1,总帧数]

使用方法：getEdgesFromVideo(视频文件名)

**getStaticFrame**(edgesFrame,startFrame,endFrame,step)：由edges四维数组提取出维持不动的像素点，并返回[帧宽，帧高，通道数=1]

使用方法：getStaticFrame(四维图像数组, 开始帧=1, 结束帧=总帧数, 循环步伐=1)