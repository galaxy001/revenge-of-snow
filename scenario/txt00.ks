*txt00
[eval exp="f.place='序章 解境开始'"]
[snowuninit]
[freeimage layer=1 page=fore visible=false]
[freeimage layer=2 page=fore visible=false]
[freeimage layer=3 page=fore visible=false]
[freeimage layer=4 page=fore visible=false]
[freeimage layer=5 page=fore visible=false]
[eval exp="f.hgd=0"]
[eval exp="f.guihai=0"]
[eval exp="f.tuili=0"]
[position layer=message0 page=fore visible=false opacity=0 top=0 height=720 left=0 width=1280 marginl=0 margint=0 marginr=0 marginb=0 frame=""]
[rclick call=true target=*youjian1 enabled=true storage="youjian.ks"]
[rclick enabled=true]
;打开右键
[clickskip enabled=true]
;打开dianji跳过
[history enabled=true output=true]
;打开历史记录

[eval exp="sf.denglu2 ='2'"]


[iscript]
dm('XXXX1');


var i,c,b,b1,b2,b3,a=1;
for(i=1;i<33;i++)
{

	a=int(Math.random()*10);
	c=c+string(a);
		if(i<13)
		{
				b1=b1+string(a);
		}
		if(i>13&&i<19)
		{
		 b2=b2+string(a);
		 }
		if(i>19&&i<33)
		{
			b3=b3+string(a);
		}
}
		b=b1+b3+'877843'+b2;
dm(b1);
dm(b2);
dm(b3);
dm('xx');
dm(b);
dm('xx22');
dm(c);
var bmd5=global.Digest.md5(b);
dm(bmd5);
dm('xx33');

var yuju='http://www.cngalgame.com/ros_p/m.php?a=' + c;
var yuju=yuju+'&b='+bmd5+'&c=1&d=1';
dm('yuju=');
dm(yuju);
[endscript]

[eval exp="global.configPlugin.httpCounter.sendCountData('GET', yuju)"]




[关闭音乐渐变 t="1000"]
[小头像消失 t=100]

[显示背景图片渐变 s="BG_02" t="1500"]
[音效1循环 s="fengsheng" t="500"]
[backlay]
;背景图片
[image page=back visible=true layer=0 storage="xueshan-a"]
;全屏文字框2
[rclick enabled=false]
[layopt layer=message2 visible=false page=back]
[position layer=message1 page=back visible=true opacity=255 top=0 height=720 left=0 width=1280 marginl=150 margint=620 marginr=53 marginb=0 frame="duihuakuang2.png"]
[current layer=message1 page=fore]
[trans method=crossfade time=1000][wt]




[播放音乐渐变 s="xumuqu" t="500"]
雪，永远倾慕大地。[p]
从古到今，谁也不知道他们从哪里来，向哪里去。[p]
看似细微的雪灵，却蕴含着巨大的能量，足以侵蚀一切。[p]
从它凝结的一刻开始，就往地面坠落，那是一切的终点，也是一切的开始。[p]
雪的起源，雪的故事，将从雪之本境开始。[p]
[iscript]
dm('sf.jieju等于');
dm(sf.jieju);
[endscript]

[clickskip enabled=false]
[backlay]
;人物立绘
[image page=back visible=true layer=6 storage=yihaoxueshan top=0 left=0 opacity=255 index=999950]
[image page=back visible=true layer=7 storage=erhaoxueshan top=0 left=0 opacity=255 index=999960]
;背景图片
[image page=back visible=true layer=0 storage=xueshanri]
[trans method=crossfade time=1000][wt]
[clickskip enabled=true]

我们的目标只有前方……[p]
无始无终的黑暗，侵蚀着我内心最后的防线。[p]
造物主不断地催促我降落，让我去接受世界的糟粕。[p]
他的呼吸冰冷至极，让我已经无法忍受。[p]
我望着凡间的人类，他们似乎毫无准备。[p]
甚至还有人依旧登上这座象征着死亡的雪峰。[p]
我不想被利用，不想用我的身躯去冰冷那些即将成为尸体的人类。[p]
不能去，不能再前进了，再这样下去……[p]
突然，一阵刺耳的声音传来，随后是浑身的疼痛和寒冷。[p]
寒风在用它的鞭子要求我们，再走快一点！[p]

[clickskip enabled=false]
[音效2不循环 s="yishan" t="1000"][wait time=500][er]
[image layer=0 page=fore storage=xueshanri left=500 top=100 visible=true afx=500 afy=100]
[layopt layer=0 page=fore time=2000 zoom=130]
[move layer=6 path=(-1000,0,255) time=1800]
[move layer=7 path=(2000,0,255) time=3000][wm]
[clickskip enabled=true]



我们无奈的被呵斥被驱使被恐吓，我们失去了成为善的自由……[p]
我们早已麻木，我们只有忍受……[p]
究竟是谁？是谁可以驾驭寒风？可以驾驭这座高耸的雪山？[p]
我带着惊恐的表情向身后望去……[p]

[clickskip enabled=false]
[image layer=0 page=fore storage=xueshanri left=500 top=100 visible=true afx=500 afy=100]
[layopt layer=0 page=fore time=1000 zoom=100][wait time=1000][er]
[clickskip enabled=true]

只有他了……雪之境主。[p]
他坐在用我同伴尸体塑造的王座之上，寒风在他耳边阿谀奉承。[p]
然而，他目空一切望着前方，高傲，威严。[p]
虽是目空一切，但眼中似乎已经看穿了万事。[p]
前方不远处，就是境主的目的地，一栋坐落于雪山深处的旅店。[p]
不久之后，我们就会如洪流一般涌入那片区域。[p]
去隔离空间，撕裂时间，让整个山脉成为人类的坟墓。[p]
雪之本境即将再次到来……[p]

[关闭音乐渐变 t="2000"]
[clickskip enabled=false]
[image layer=0 page=fore storage=xueshanri left=600 top=100 visible=true afx=600 afy=100]
[layopt layer=0 page=fore time=1000 zoom=250][wait time=1000][er]

[显示背景图片渐变 s="BG_01" t="600"]

[image layer=0 page=fore storage=BG_01 left=500 top=100 visible=true afx=500 afy=100]
[layopt layer=0 page=fore time=100 zoom=100][wait time=100][er]

[背景滤镜渐变 s="BG_02" t="700" r="99"]

[clickskip enabled=true]








[关闭音效1 t="200"]
[关闭音效2 t="200"]

[全屏文字框结束2 t=100]
[backlay]
;人物立绘
[freeimage layer=6 page=back]
[freeimage layer=7 page=back]
[freeimage layer=8 page=back]
;背景图片
[image page=back visible=true layer=0 storage="chunhei"]
;文字框
[layopt layer=message2 visible=false page=back]
[position layer=message1 frame="" page=back opacity=0]
[trans method=crossfade time=1000][wt]


[jump storage="txt01.ks" target=*txt01]