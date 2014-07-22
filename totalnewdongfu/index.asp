<!--#include file="head.asp"-->
	
<script language="javascript" type="text/javascript">
//轮播图
//主函数
var s=function(){
var interv=4000; //切换间隔时间
var interv2=10; //切换速速
var opac1=80; //文字背景的透明度
var source="fade_focus" //焦点轮换图片容器的id名称
//获取对象
function getTag(tag,obj){if(obj==null){return document.getElementsByTagName(tag)}else{return obj.getElementsByTagName(tag)}}
function getid(id){return document.getElementById(id)};
var opac=0,j=0,t=63,num,scton=0,timer,timer2,timer3;
var id=getid(source);id.removeChild(getTag("div",id)[0]);
var li=getTag("li",id);var div=document.createElement("div");
var title=document.createElement("div");
var span=document.createElement("span");
var button=document.createElement("div");button.className="button";
for(var i=0;i<li.length;i++)
{var a=document.createElement("a");a.innerHTML=i+1;a.onclick=function(){clearTimeout(timer);clearTimeout(timer2);clearTimeout(timer3);j=parseInt(this.innerHTML)-1;scton=0;t=63;opac=0;fadeon();};
a.className="b1";a.onmouseover=function(){this.className="b2"};
a.onmouseout=function(){this.className="b1";sc(j)};button.appendChild(a);}
//控制图层透明度
function alpha(obj,n){if(document.all){obj.style.filter="alpha(opacity="+n+")";}else{obj.style.opacity=(n/100);}}
//控制焦点按钮
function sc(n){for(var i=0;i<li.length;i++){button.childNodes[i].className="b1"};button.childNodes[n].className="b2";}
title.className="num_list";title.appendChild(span);alpha(title,opac1);id.className="d1";div.className="d2";id.appendChild(div);id.appendChild(title);id.appendChild(button);
//渐显
var fadeon=function(){opac+=5;div.innerHTML=li[j].innerHTML;span.innerHTML=getTag("img",li[j])[0].alt;alpha(div,opac);if(scton==0){sc(j);num=-2;scrolltxt();scton=1};if(opac<100){timer=setTimeout(fadeon,interv2)}else{timer2=setTimeout(fadeout,interv);};}
//渐隐
var fadeout=function(){opac-=5;div.innerHTML=li[j].innerHTML;alpha(div,opac);if(scton==0){num=2;scrolltxt();scton=1};if(opac>0){timer=setTimeout(fadeout,interv2)}else{if(j<li.length-1){j++}else{j=0};fadeon()};}
//滚动文字
var scrolltxt=function(){t+=num;span.style.marginTop=t+"px";if(num<0 && t>3){timer3=setTimeout(scrolltxt,interv2)}else if(num>0 && t<62){timer3=setTimeout(scrolltxt,interv2)}else{scton=0}};
fadeon();
}
//初始化
window.onload=s;
</script>

	<div id="contenttop">

		<div id="fade_focus">
		<div class="loading">Loading...<br /><img src="images/loading.png"/>
		</div>
			<ul>
				<li><img width="348" height="280" alt="金钱龟" src="images/1.png"/></li>
				<li><img width="348" height="280" alt="温室" src="images/2.png" /></li>
				<li><img width="348" height="280" alt="安布" src="images/3.png"/></li>
				<li><img width="348" height="280" alt="龟龟" src="images/4.png"/></li>
			</ul>
		</div>   
		
		<div id="top2">
			<!--预约参观-->
			<div id="contact"><p>&nbsp;</p>
				<span>欢迎预约参观本场</span>
				<p>欢迎前来参观本场！请提前预约，预约电话：XXXXXXXXX     
					每天上班时间：8：00-17：00 其它时间恕不接待，望谅。</p>	
			</div>
		
			<!--最新文章-->
			<div id="newpassage">
				<p style="color:red;">最新文章：</p>
				<span><a href="#" class="passage">★天气反常，须引起重视！</a></span>
				<span class="time">14/7/9</span><span><a href="#" class="passage">★大青将成为今年龟业最大的热点</a></span>
				<span class="time">14/7/9</span><span><a href="#" class="passage">★天气反常，须引起重视！</a></span>
				<span class="time">14/7/9</span><span><a href="#" class="passage">★大青将成为今年龟业最大的热点</a></span>
				<span class="time">14/7/9</span><span><a href="#" class="passage">★天气反常，须引起重视！</a></span>
				<span class="time">14/7/9</span><span><a href="#" class="passage">★大青将成为今年龟业最大的热点</a></span>
				<span class="time">14/7/9</span><span><a href="#" class="passage">★天气反常，须引起重视！</a></span>
				<span class="time">14/7/9</span><span><a href="#" class="passage">★大青将成为今年龟业最大的热点</a></span>
				<span class="time">14/7/9</span><span><a href="#" class="passage">★天气反常，须引起重视！</a></span>
				<span class="time">14/7/9</span><span><a href="#" class="passage">★大青将成为今年龟业最大的热点</a></span>
				
			</div>
		</div>
		
		<div id="top3">
			<div id="top3title">&nbsp;&nbsp;≡≡联系方式≡≡</div>
			<div id="top3content">			
				<p>地址：广东省中山市小榄镇小沥村</p>
				
				<p>联系电话：XXXXXXX</p>
				<p>移动电话：XXXXXXX</p>
				<p>微信号：XXXXXX</p>
				<p>QQ：12345678<img src="images/qq.gif"></p>
				<p>QQ群：9886544<img src="images/qq.gif"></p>
				<p>Email：lapse.c@foxmail.com</p>
				
			</div>
		</div>
	</div>

	<div id="content1">
		<div id="content1title"><span>龟鳖养殖品种</span></div>
		<div id="content1left">
			东富名龟园主要养殖品种金钱龟和石金钱龟，兼营品种包括黄缘盒龟、鳄鱼龟、山瑞鳖等。目前金钱龟1000只左右、石金钱龟超过30000只，每年金钱龟 产苗约200只，越南种石金钱龟产苗15000只左右，台湾石龟（台湾大青）苗约8000只，总养殖面积已达11000多平方米，目前是两广（广东、广西）地区最大的石金钱龟养殖场所。
		<div><img src="images/menkou.jpg" style="width:230px;"></div>		
		</div>
		
		<div id="content1right">
			<div id="pic1" style="font-size:10px;"><img src="pic/a1.jpg"><div>越南种金钱龟</div></img></div>
			<div id="pic2" style="font-size:10px;"><img src="pic/a2.jpg"><div>海南种金钱龟</div></img></div>
			<div id="pic3" style="font-size:10px;"><img src="pic/a3.jpg"><div>越南种石金钱龟</div></img></div>
			<div id="pic4" style="font-size:10px;"><img src="pic/a4.jpg"><div>台湾种石金钱龟</div></img></div>
			<div id="pic5" style="font-size:10px;"><img src="pic/a5.jpg"><div>越南种金钱龟</div></img></div>
			<div id="pic6" style="font-size:10px;"><img src="pic/a6.jpg"><div>越南种金钱龟</div></img></div>
			<div id="pic7" style="font-size:10px;"><img src="pic/a7.jpg"><div>越南种金钱龟</div></img></div>
			<div id="pic8" style="font-size:10px;"><img src="pic/a8.jpg"><div>越南种金钱龟</div></img></div>
		</div>
	</div>
	
	<div id="content2">
		<div id="content2left">
			<div id="content2lefttop"><img src="images/changdi.png"></div>
			<div id="content2leftbottom"><div>茂名华鑫养殖基地场地包括种龟养殖场、商品龟养殖场、仿野生养殖场、龟苗培育室、龟苗孵化室、饲料加工室、饲料储存室 等，目前是拥有3000多石金钱龟种龟、2000多只青头龟种龟、200多只金钱龟种龟、具有近11000多平方米的大规模专业龟鳖养殖场所，是粤西地区最大的石金钱龟养殖基地。</div>
				<p>&nbsp;</p>
				<span style="font-color:red;"><p ><a href="#" >>>更多</a></p></span>
			</div>
						
		</div>

		<div id="content2right">
			<div id="content2rightpic">
				<div id="pic1" style="font-size:10px;"><img src="pic/b01.jpg"><div>养殖场1</div></img></div>
				<div id="pic1" style="font-size:10px;"><img src="pic/b02.jpg"><div>养殖场2</div></img></div>
				<div id="pic1" style="font-size:10px;"><img src="pic/b03.jpg"><div>养殖场3</div></img></div>
				<div id="pic1" style="font-size:10px;"><img src="pic/b04.jpg"><div>养殖场4</div></img></div>
				<div id="pic1" style="font-size:10px;"><img src="pic/b05.jpg"><div>养殖场5</div></img></div>
				<div id="pic1" style="font-size:10px;"><img src="pic/b06.jpg"><div>养殖场6</div></img></div>
				<div id="pic1" style="font-size:10px;"><img src="pic/b07.jpg"><div>养殖场7</div></img></div>
				<div id="pic1" style="font-size:10px;"><img src="pic/b08.jpg"><div>养殖场8</div></img></div>
				<div id="pic1" style="font-size:10px;"><img src="pic/b09.jpg"><div>养殖场9</div></img></div>
				<div id="pic1" style="font-size:10px;"><img src="pic/b10.jpg"><div>养殖场10</div></img></div>
			</div>
		</div>
	</div>
	
	<div id="content3">
		<div id="content3titlecolor"></div>
		<div id="content3left">
			<div id="content3lefttop" style="font-size:25px;"><span>最&nbsp;</span>近&nbsp;供&nbsp;应</div>
			<div id="content3leftbottom" style="font-size:13px;line-height:23px;">
				<p>&nbsp;</p>
				<p><a href="#">◇供应2013年越南种石金钱龟苗</a></p>
				<p><a href="#">◇供应2013年台湾种（大青头）石龟龟苗</a></p>
				<p><a href="#">◇供应2013年越南种、海南种、广东种金钱龟龟苗</a></p>
				<p><a href="#">◇供应2-4年仿野生越南种、台湾种石金钱龟</a></p>
				<p><a href="#">◇少量供应2013年黄缘盒龟龟苗</a></p>
				<p><a href="#">◇代销代购鳄鱼龟龟苗、中龟</a></p>
				<p><a href="#">◇供应第二代越南种石龟仿野生种龟</a></p>
				<p><a href="#">◇供应第二代台湾种石金钱龟仿野生种龟</a></p>
			</div>							
		</div>
		<div id="content3right">
			<div id="content3righttop">
				<div id="content3righttopleft" style="font-size:25px;">常<span>&nbsp;年&nbsp;供&nbsp;应&nbsp;</span></div>
				<div id="content3righttopright">
			</div>
			<div id="content3rightpic">
				<div id="picc1" style="font-size:10px;"><img src="pic/c1.jpg"><div>金钱龟苗</div></img></div>
				<div id="picc2" style="font-size:10px;"><img src="pic/c2.jpg"><div>金钱龟苗</div></img></div>
				<div id="picc3" style="font-size:10px;"><img src="pic/c3.jpg"><div>金钱龟苗</div></img></div>
				<div id="picc4" style="font-size:10px;"><img src="pic/c4.jpg"><div>金钱龟苗</div></img></div>
				<div id="picc5" style="font-size:10px;"><img src="pic/c5.jpg"><div>金钱龟苗</div></img></div>
				<div id="picc6" style="font-size:10px;"><img src="pic/c6.jpg"><div>金钱龟苗</div></img></div>
				<div id="picc7" style="font-size:10px;"><img src="pic/c7.jpg"><div>金钱龟苗</div></img></div>
				<div id="picc8" style="font-size:10px;"><img src="pic/c8.jpg"><div>金钱龟苗</div></img></div>
				<div id="picc9" style="font-size:10px;"><img src="pic/c9.jpg"><div>金钱龟苗</div></img></div>
				<div id="picc10" style="font-size:10px;"><img src="pic/c10.jpg"><div>金钱龟苗</div></img></div>
				<div id="picc11" style="font-size:10px;"><img src="pic/c11.jpg"><div>金钱龟苗</div></img></div>
				<div id="picc12" style="font-size:10px;"><img src="pic/c12.jpg"><div>金钱龟苗</div></img></div>
			</div>
		</div>
	</div>
	</div>
	
	<div id="content4">
		<div id="content41">
			<div id="content41top">
				<div id="content41topleft">
					<div>『本场要闻』</div>	
				</div>
				<div id="content41topright">
					<a href="#">>>更多</a>
				</div>
			</div>
			
			<div id="content41bottom">
				<p>&nbsp;</p>
				<p><a href="#"><span>◆超大型养殖场即将建成 欢迎参观</span></a></p>
				<p><span><a href="#">◆海南龟鳖协会考察团及著名龟鳖专家周婷女士到本场参观调研</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
			</div>
		</div>
		
		<div id="content41">
			<div id="content41top">
				<div id="content41topleft">
					<div>『市场动态』</div>	
				</div>
				<div id="content41topright">
					<a href="#">>>更多</a>
				</div>
			</div>
			
			<div id="content41bottom">
				<p>&nbsp;</p>
				<p><a href="#"><span>◆超大型养殖场即将建成 欢迎参观</span></a></p>
				<p><span><a href="#">◆海南龟鳖协会考察团及著名龟鳖专家周婷女士到本场参观调研</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
			</div>
		</div>
		
		<div id="content41">
			<div id="content41top">
				<div id="content41topleft">
					<div>『行业评论』</div>	
				</div>
				<div id="content41topright">
					<a href="#">>>更多</a>
				</div>
			</div>
			
			<div id="content41bottom">
				<p>&nbsp;</p>
				<p><a href="#"><span>◆超大型养殖场即将建成 欢迎参观</span></a></p>
				<p><span><a href="#">◆海南龟鳖协会考察团及著名龟鳖专家周婷女士到本场参观调研</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
			</div>
		</div>
		
		<div id="content41">
			<div id="content41top">
				<div id="content41topleft">
					<div>『新闻链接』</div>	
				</div>
				<div id="content41topright">
					<a href="#">>>更多</a>
				</div>
			</div>
			
			<div id="content41bottom">
				<p>&nbsp;</p>
				<p><a href="#"><span>◆超大型养殖场即将建成 欢迎参观</span></a></p>
				<p><span><a href="#">◆海南龟鳖协会考察团及著名龟鳖专家周婷女士到本场参观调研</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
				<p><span><a href="#">◆超大型养殖场即将建成 欢迎参观</a></span></p>
			</div>
		</div>
	</div>
	
	
	<div id="yqlianjie">
		<p>友情链接：</p>
		<div>
			<a href="#">龟学堂</a>            <a href="#">茂名华鑫</a>
		</div>
	</div>
	<div id="bottom">
		<div id="bottom_top"></div>
		<div id="bottom_bottom">广东省东富名龟园版权所有-2014</div>
	</div>

	</body>
</html>