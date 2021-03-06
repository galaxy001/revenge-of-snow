@erafterpage mode=true;
[linemode mode=none]
[eval exp="kag.autoLabelType = 0"]
[call storage="macro.ks"]
[call storage="oldMovie.ks"]
[call storage="rain.ks"]
[call storage="fog.ks"]
[call storage="snow.ks"]
[eval exp="kag.allskip=false"]

*start|


;[snowinit2]
[snowopt forevisible=false backvisible=false]
[position layer=message0 page=fore visible=false]
[eval exp="tf.denglu = 1" cond="tf.denglu != 2"]

[if exp="tf.denglu == 1"]
;[clickskip enabled=false]

[image page=back visible=true layer=0 storage=SP-time00]
[stoptrans]
[trans method=crossfade time=1000]
[wt]
[image page=back visible=true layer=0 storage=SP-time]
[播放音效 s="SPTIME"  cond="tf.denglu == 1"]
[stoptrans]
[trans method=crossfade time=3700]
[wt]

[image page=back visible=true layer=0 storage=SP-time00]
[stoptrans]
[trans method=crossfade time=2000][wt]
[wt]
[关闭音效1 t="1000"]
[clickskip enabled=false]
[if exp="sf.denglu2 != 2"]
[image page=back visible=true layer=0 storage=jiejingtishi]
[trans method=crossfade time=200][wt][wait time=6000][er]
;[eval exp="sf.denglu2 ='2'"]
[endif]
;[eval exp="tf.denglu ='2'"]
[endif]
[clickskip enabled=true]

[video visible="true" width="1280" height="720" left="0" top="0"]
[playvideo storage="xuezhibenjingkaichang.mpg"]
[wv canskip=true]


[rclick enabled=false]
;关闭右键
[clickskip enabled=false]
;关闭dianji跳过
[history enabled=false output=false]
;关闭历史记录
;音乐
[snowopt forevisible=true backvisible=true]
[playbgm storage="xumuqu.ogg"]
[backlay]
[image page=back visible=true layer=0 storage=chunhei]
[trans method=crossfade time=600][wt]
[backlay]


[image page=back visible=true layer=0 storage=kaishijiemian.jpg cond="sf.jiemian!=1"]
[image page=back visible=true layer=0 storage=jtxcg3.jpg cond="sf.jiemian==1"]
[trans method=crossfade time=600][wt]

[startanchor]
[rclick enabled=false]
;关闭右键
[clickskip enabled=false]
;关闭dianji跳过
[history enabled=false output=false]
;关闭历史记录
[image layer=1 storage="xiala4" left=0 top=-80 opacity=0 visible=true page=fore index=100004]
[move layer=1 path="(0,0,255)" time=400]
[image layer=2 storage="xiala3" left=0 top=800 opacity=0 visible=true page=fore index=100004]
[move layer=2 path="(0,660,255)" time=400][wm][stopmove]
;[image layer=3 storage="henggang1" left=960 top=0 opacity=0 visible=true page=fore]
;[move layer=3 path="(0,0,255)" time=400]
;[image layer=4 storage="henggang2" left=-960 top=550 opacity=0 visible=true page=fore ]
;[move layer=4 path="(0,550,255)" time=400][wm]
[backlay]
[image layer=5 page=back visible=true storage=LOGO]
[trans method=crossfade time=500][wt]


[position layer=message2 page=back visible=false opacity=255 top=536 height=720 left=985 width=1280 marginl=0 margint=0 marginr=0 marginb=0 frame="wenzikuangdiban.png"]
[current layer=message2 page=back][nowait][er]
[sysbutton name=save normal="save.png" over="save1.png" enterse="yidong" clickse="dianji" x=83 y=3     exp="kag.callExtraConductor('save.ks', '*save')"  entersebuf=3  clicksebuf=3]
[sysbutton name=load  normal="load.png" over="load1.png" enterse="yidong" clickse="dianji"  x=98 y=29 exp="kag.callExtraConductor('load.ks', '*load')" entersebuf=3  clicksebuf=3]
[sysbutton name=log  exp="kag.onShowHistoryMenuItemClick()" normal="log.png" over="log1.png"  enterse="yidong" clickse="dianji" x=104 y=60 entersebuf=3  clicksebuf=3]
[sysbutton name=config  normal="config.png" over="config1.png" enterse="yidong" clickse="dianji"  x=104 y=88 exp="kag.callExtraConductor('shezhi.ks', '*shezhi')" entersebuf=3  clicksebuf=3]
[sysbutton name=note  normal="note.png" over="note1.png" enterse="yidong" clickse="dianji"  x=98 y=116  exp="kag.callExtraConductor('note.ks', '*note')" entersebuf=3  clicksebuf=3]

[sysbutton name=skip  normal="skip.png" over="skip1.png"  enterse="yidong" clickse="dianji"  x=83 y=142 exp="kag.onSkipToNextStopMenuItemClick()" entersebuf=3  clicksebuf=3]

[sysbutton  name=auto normal="auto.png" over="auto1.png" enterse="yidong" clickse="dianji"  x=16 y=65 exp="kag.onAutoModeMenuItemClick()" entersebuf=3  clicksebuf=3]



;[sysbutton enterse=btnenterse normal=config_skipall_normal over=config_skipall_over x=64 y=543 name=skipall exp="onSkipModeChange(true)"]
;[sysbutton enterse=btnenterse normal=config_skipalrdy_normal over=config_skipalrdy_over x=223 y=543 name=skipalrdy exp="onSkipModeChange(false)"]



;[sysbutton name=log  normal="log.png" over="log1.png"  enterse="yidong" clickse="dianji" x=26 y=141 exp="kag.callExtraConductor('history.ks', '*start')" entersebuf=3  clicksebuf=3]
[if exp="sf.初始化!=true"]
[eval exp="sf.地点=[]"]
[eval exp="sf.初始化=true"]
[endif]

*first1
[position layer=message0 page=back visible=true opacity=0 top=0 height=720 left=0 width=1280 marginl=0 margint=0 marginr=0 marginb=0 frame=""]
[current layer=message0 page=back][er]
[locate x=30 y=663][button normal="weibo1.png" over="weibo2.png" exp="System.shellExecute('http://weibo.com/sptime')" ]
[locate x=100 y=663][button normal="sptimekaishi.png" enterse="yidong" clickse="dianji" exp="System.shellExecute('http://sp04.sp-time.com')" ]
;[locate x=255 y=667][button normal="cangxuekaishi.jpg" exp="System.shellExecute('http://bbs.9gal.com')" ]
[locate x=30 y=615][button normal="goumai1.png" over="goumai2.png" enterse="yidong" clickse="dianji" exp="System.shellExecute('http://sptime.taobao.com/')" ]
[locate x=105 y=615][button normal="taolun1.png" over="taolun2.png" enterse="yidong" clickse="dianji" exp="System.shellExecute('http://bbs.9gal.com/thread.php?fid=52')" ]
[locate x=175 y=615][button normal="tongji1.png" over="tongji2.png" enterse="yidong" clickse="dianji" exp="System.shellExecute('http://www.cngalgame.com/ros_p/')" ]
[locate x=30 y=663][button normal="weibo1.png" over="weibo2.png" enterse="yidong" clickse="dianji" exp="System.shellExecute('http://weibo.com/sptime')" ]
[locate x=1000 y=350][button normal="newgame1.png" over="newgame2.png" storage="txt00.ks" target=*txt00 enterse="yidong" clickse="dianji" ]
[locate x=1000 y=350][button normal="newgame1"  over="newgame2" enterse="yidong" clickse="dianji" storage="first.ks" target=*newgame  entersebuf=3 clicksebuf=3 ]
[locate x=1000 y=390][button normal="loadgame1.png" over="loadgame2.png" storage="load2.ks"  enterse="yidong" clickse="dianji" target=]

[locate x=1000 y=430][button normal="bconfig1.png" over="bconfig2.png" storage="shezhi2.ks" target=*shezhi  enterse="yidong" clickse="dianji" ]
[locate x=1000 y=470][button normal="extra1.png" over="extra2.png"  storage="cg.ks" target=*cg  enterse="yidong" clickse="dianji" ]

[locate x=1000 y=510][button normal="exit1.png" over="exit2.png" exp="kag.onCloseQuery()" enterse="yidong" clickse="dianji" ]


[trans method=crossfade time=200][wt]

[s]

*newgame
[position layer=message0 page=back visible=true opacity=0 top=0 height=720 left=0 width=1280 marginl=0 margint=0 marginr=0 marginb=0 frame=""]
[current layer=message0 page=back][er]

[locate x=1050 y=350][button normal="jinruzhengpian1.png" over="jinruzhengpian2.png" storage="txt00.ks" target=*txt00 enterse="yidong" clickse="dianji" ]
[locate x=1050 y=410][button normal="mingmoupian1"  over="mingmoupian2" enterse="yidong" clickse="dianji" storage="txtmingmou.ks" target=*txtmingmou  entersebuf=3 clicksebuf=3 cond="sf.mingmou==1"]
[locate x=1050 y=530][button normal="fanhuishangye1.png"  over="fanhuishangye2.png" enterse="yidong" clickse="dianji" storage="first.ks" target=*first1  entersebuf=3 clicksebuf=3]

[trans method=crossfade time=200][wt]

