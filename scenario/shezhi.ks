[iscript]
function kagskip1()
{
  kag.allskip=true;
}
function kagskip2()
{
  kag.allskip=false;
}
[endscript]

*shezhi
[history enabled=false output=false]
[locklink]
[rclick enabled="true" jump="true" storage="shezhi.ks" target=*return]
[backlay]
[layopt layer=message2 visible=false page=back]
*shezhi2
[position layer=message5 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="shezhi.png"]
[current layer=message5 page=back][er][nowait]
[locate x=370 y=227]
[slider value="kag.bgmvolume" base=gunzhou width=340 height=33 normal=log_bar_normal.png ]
[locate x=370 y=282]
[slider value="kag.sevolume" base=gunzhou width=340 height=33 normal=log_bar_normal.png ]
[locate x=370 y=430]
[slider value="kag.textspeed" base=gunzhou width=330 height=33 normal=log_bar_normal.png max=10 min=0]
[locate x=10 y=540]
;[button normal=title01  target=*ȷ�Ϸ���  over="title" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3 ]
[locate x=470 y=485]
[button normal=windows2.png  target=*����  over="windows1.png" enterse="yidong" clickse="dianji"  entersebuf=3 clicksebuf=3 ]
[locate x=658 y=485]
[button normal=fullscreen2.png  target=*ȫ��  over="fullscreen1.png" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  ]

[locate x=470 y=540]
[button normal=1024p1.png  target=*���ڱ���1  over="1024p2.png" enterse="yidong" clickse="dianji"  entersebuf=3 clicksebuf=3 ]
[locate x=658 y=540]
[button normal=1280p1.png  target=*���ڱ���2  over="1280p2.png" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3 ]

[locate x=470 y=595]
[button normal=yidutiaoguo1.png   over="yidutiaoguo1.png"  entersebuf=3 clicksebuf=3    cond="kag.allskip==false"]
[button normal=yidutiaoguo2.png target=*�Ѷ�   over="yidutiaoguo2.png" enterse="yidong" clickse="dianji"  entersebuf=3 clicksebuf=3    cond="kag.allskip==true"]
[locate x=658 y=590]
[button normal=quanbutiaoguo1.png  over="quanbutiaoguo1.png"  entersebuf=3 clicksebuf=3  cond="kag.allskip==true"]
[button normal=quanbutiaoguo2.png  target=*ȫ��  over="quanbutiaoguo2.png" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  cond="kag.allskip==false"]
[locate x=1050 y=650]
[button normal=back1  target=*return  over="back2" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  storage="shezhi.ks"]
[locate x=850 y=650]
[button normal=title1  target=*ȷ�Ϸ���  over="title2" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3 ]
[trans method="crossfade" time=200  over="��ȡ1" enterse="yidong" clickse="dianji"]
[wt]
[s]


*ȷ�Ϸ���
;[eval exp="tf.ѯ�ʶԻ�='ȷ�����ر���˵���'"]
[ѯ�ʴ���1 text=&tf.ѯ�ʶԻ� storage=shezhi.ks cancel=*cancel ok=*title xuanxiang=cdjm3 entersebuf=3 clicksebuf=3]
[s]



*cancel
[backlay]
;[freeimage layer=5 page="back"]
[layopt layer=message7 visible=false page=fore]
[current layer="message7" page="back"]
[locklink]
[stoptrans]
[wt]
[unlocklink]
[rclick enabled="true" jump="true" storage="shezhi.ks" target=*return]
[s]

*ȫ��
[eval exp="kag.onFullScreenMenuItemClick(kag)"]
[unlocklink]
[s]
*����
[eval exp="kag.onWindowedMenuItemClick(kag)"]
[unlocklink]
[s]

*���ڱ���1
[if exp="kag.fullScreened==false"] 
[eval exp="kag.innerWidth=1024"]
[endif] 
[unlocklink]
[s]
*���ڱ���2
[if exp="kag.fullScreened==false"] 
[eval exp="kag.innerWidth=1280"]
[endif] 
[unlocklink]
[s]

*�Ѷ�
[iscript]
  kag.allskip=false;
[endscript]
[locklink]
[jump target=*shezhi2 storage="shezhi.ks"]
[s]

*ȫ��
[iscript]
  kag.allskip=true;
[endscript]
[locklink]
[jump target=*shezhi2 storage="shezhi.ks"]
[s]

*return
[history enabled=true output=true]
[backlay]
[layopt layer="message5" visible="false" page="back"]
[layopt layer=message2 visible=true page=back]
[layopt layer=message1 visible=true page=back]
[locklink]
[stoptrans]
[trans method="crossfade" time=500]
[wt]
[current layer="message1" page="fore"]
[history enabled=true output=true]
[rclick enabled="true" call="true" storage="youjian.ks" target=*youjian1]
;����ͼ����ȡ��
;��������ϵͳ(SAVE,LOAD,OPTION)�ķ��ض�������*return��ǩ���������ȡ��ֻҪ�趨һ��
;����������ȡ��������һһ��Ӧ�ģ����������趨�˶��˷�����Ϸ�ı�ǩ��ÿ����ĩβ��Ҫȡ������
;������һ���ٽ������˵��ͻ����
[return]

*title
;[eval exp="kag.goToStart()"]
[gotostart ask="false"]
;[jump target=*first1 storage="first.ks"]