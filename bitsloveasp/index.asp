<!DOCTYPE html>
<html lang="en" class="app">
<head>
  <meta charset="utf-8" />
  <title>Bitslove</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
  <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="css/animate.css" type="text/css" />
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="css/font.css" type="text/css" />
  <link rel="stylesheet" href="js/calendar/bootstrap_calendar.css" type="text/css" />
  <link rel="stylesheet" href="css/app.css" type="text/css" />
  <!--[if lt IE 9]>
	<script src="js/ie/html5shiv.js"></script>
	<script src="js/ie/respond.min.js"></script>
	<script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body class="">
  <section class="vbox">
	<header class="bg-dark dk header navbar navbar-fixed-top-xs">
	  <div class="navbar-header aside-md">
		<a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
		  <i class="fa fa-bars"></i>
		</a>
		<a href="#" class="navbar-brand" data-toggle="fullscreen"><img src="images/logo.png" class="m-r-sm">BitsLOVE</a>
		<a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".nav-user">
		  <i class="fa fa-cog"></i>
		</a>
	  </div>
	  <ul class="nav navbar-nav hidden-xs">
		<li class="dropdown">
		  <a href="#" class="dropdown-toggle dker" data-toggle="dropdown">
			<i class="fa fa-building-o"></i> 
			<span class="font-bold">Activity</span>
		  </a>
		  <section class="dropdown-menu aside-xl on animated fadeInLeft no-borders lt">
			<div class="wrapper lter m-t-n-xs">
			  <a href="#" class="thumb pull-left m-r">
				<img src="images/avatar.jpg" class="img-circle">
			  </a>
			  <div class="clear">
				<a href="#"><span class="text-white font-bold">@Mike Mcalidek</a></span>
				<small class="block">Art Director</small>
				<a href="#" class="btn btn-xs btn-success m-t-xs">Upgrade</a>
			  </div>
			</div>
			<div class="row m-l-none m-r-none m-b-n-xs text-center">
			  <div class="col-xs-4">
				<div class="padder-v">
				  <span class="m-b-xs h4 block text-white">245</span>
				  <small class="text-muted">Followers</small>
				</div>
			  </div>
			  <div class="col-xs-4 dk">
				<div class="padder-v">
				  <span class="m-b-xs h4 block text-white">55</span>
				  <small class="text-muted">Likes</small>
				</div>
			  </div>
			  <div class="col-xs-4">
				<div class="padder-v">
				  <span class="m-b-xs h4 block text-white">2,035</span>
				  <small class="text-muted">Photos</small>
				</div>
			  </div>
			</div>
		  </section>
		</li>
		<li>
		  <div class="m-t m-l">
			<a href="#" class="dropdown-toggle btn btn-xs btn-primary" title="Upgrade"><i class="fa fa-long-arrow-up"></i></a>
		  </div>
		</li>
	  </ul>
	  <ul class="nav navbar-nav navbar-right m-n hidden-xs nav-user">
		<li class="hidden-xs">
		  <a href="#" class="dropdown-toggle dk" data-toggle="dropdown">
			<i class="fa fa-bell"></i>
			<span class="badge badge-sm up bg-danger m-l-n-sm count">2</span>
		  </a>
		  <section class="dropdown-menu aside-xl">
			<section class="panel bg-white">
			  <header class="panel-heading b-light bg-light">
				<strong>You have <span class="count">2</span> notifications</strong>
			  </header>
			  <div class="list-group list-group-alt animated fadeInRight">
				<a href="#" class="media list-group-item">
				  <span class="pull-left thumb-sm">
					<img src="images/avatar.jpg" alt="James said" class="img-circle">
				  </span>
				  <span class="media-body block m-b-none">
					Use awesome animate.css<br>
					<small class="text-muted">10 minutes ago</small>
				  </span>
				</a>
				<a href="#" class="media list-group-item">
				  <span class="media-body block m-b-none">
					1.0 initial released<br>
					<small class="text-muted">1 hour ago</small>
				  </span>
				</a>
			  </div>
			  <footer class="panel-footer text-sm">
				<a href="#" class="pull-right"><i class="fa fa-cog"></i></a>
				<a href="#notes" data-toggle="class:show animated fadeInRight">See all the notifications</a>
			  </footer>
			</section>
		  </section>
		</li>
		<li class="dropdown hidden-xs">
		  <a href="#" class="dropdown-toggle dker" data-toggle="dropdown"><i class="fa fa-fw fa-search"></i></a>
		  <section class="dropdown-menu aside-xl animated fadeInUp">
			<section class="panel bg-white">
			  <form role="search">
				<div class="form-group wrapper m-b-none">
				  <div class="input-group">
					<input type="text" class="form-control" placeholder="Search">
					<span class="input-group-btn">
					  <button type="submit" class="btn btn-info btn-icon"><i class="fa fa-search"></i></button>
					</span>
				  </div>
				</div>
			  </form>
			</section>
		  </section>
		</li>
		<li class="dropdown">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
			<span class="thumb-sm avatar pull-left">
			  <img src="images/avatar.jpg">
			</span>
			James Gong <b class="caret"></b>
		  </a>
		  <ul class="dropdown-menu animated fadeInRight">
			<span class="arrow top"></span>
			<li>
			  <a href="#">Settings</a>
			</li>
			<li>
			  <a href="#">Profile</a>
			</li>
			<li>
			  <a href="#">
				<span class="badge bg-danger pull-right">3</span>
				Notifications
			  </a>
			</li>
			<li>
			  <a href="#">Help</a>
			</li>
			<li class="divider"></li>
			<li>
			  <a href="#" data-toggle="ajaxModal" >Logout</a>
			</li>
		  </ul>
		</li>
	  </ul>	  
	</header>
	<section>
	  <section class="hbox stretch">
		<!-- .aside -->
		<aside class="bg-dark lter aside-md hidden-print hidden-xs" id="nav">		  
		  <section class="vbox">
			<header class="header bg-primary lter text-center clearfix">
			  <div class="btn-group">
				<button type="button" class="btn btn-sm btn-dark btn-icon" title="New project"><i class="fa fa-plus"></i></button>
				<div class="btn-group hidden-nav-xs">
				  <button type="button" class="btn btn-sm btn-primary dropdown-toggle" data-toggle="dropdown">
					Switch Project
					<span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu text-left">
					<li><a href="#">Project</a></li>
					<li><a href="#">Another Project</a></li>
					<li><a href="#">More Projects</a></li>
				  </ul>
				</div>
			  </div>
			</header>
			<section class="w-f scrollable">
			  <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="5px" data-color="#333333">
				
				<!-- nav -->
				<nav class="nav-primary hidden-xs">
				  <ul class="nav">
					<li <%if request("p")="" Or request("p")="1" then response.write " class=""active"""%> >
					  <a href="#" >
						<i class="fa fa-dashboard icon">
						  <b class="bg-danger"></b>
						</i>
						<span class="pull-right">
						  <i class="fa fa-angle-down text"></i>
						  <i class="fa fa-angle-up text-active"></i>
						</span>
						<span>OVERVIEW</span>
					  </a>
					  <ul class="nav lt">
						<li <%if request("p")="" then response.write " class=""active"""%>>
						  <a href="index.asp?" >														
							<i class="fa fa-angle-right"></i>
							<span>Domestic Donation</span>
						  </a>
						</li>
						<li <%if request("p")="1" then response.write " class=""active"""%>>
						  <a href="index.asp?p=1" >														
							<i class="fa fa-angle-right"></i>
							<span>Global Donation</span>
						  </a>
						</li>
					  </ul>
					</li>
					<li <%if request("p")="2" Or request("p")="3" Or request("p")="4" then response.write " class=""active"""%> >
					  <a href="#"  >
						<i class="fa fa-columns icon">
						  <b class="bg-warning"></b>
						</i>
						<span class="pull-right">
						  <i class="fa fa-angle-down text"></i>
						  <i class="fa fa-angle-up text-active"></i>
						</span>
						<span>Project</span>
					  </a>
					  <ul class="nav lt">
						<li <%if request("p")="2" then response.write " class=""active"""%> >
						  <a href="index.asp?p=2" >														
							<i class="fa fa-angle-right"></i>
							<span>Project Add</span>
						  </a>
						</li>
						<li <%if request("p")="3" then response.write " class=""active"""%> >
						  <a href="index.asp?p=3" >														
							<i class="fa fa-angle-right"></i>
							<span>Project List</span>
						  </a>
						</li>
					  </ul>
					</li>
					<li >
					  <a href="#uikit"  >
						<i class="fa fa-flask icon">
						  <b class="bg-success"></b>
						</i>
						<span class="pull-right">
						  <i class="fa fa-angle-down text"></i>
						  <i class="fa fa-angle-up text-active"></i>
						</span>
						<span>Donors</span>
					  </a>
					  <ul class="nav lt">
						<li >
						  <a href="#" >														
							<i class="fa fa-angle-right"></i>
							<span>Donors List</span>
						  </a>
						</li>

					  </ul>
					</li>
					<li >
					  <a href="#"  >
						<b class="badge bg-danger pull-right">3</b>
						<i class="fa fa-envelope-o icon">
						  <b class="bg-primary dker"></b>
						</i>
						<span>Message</span>
					  </a>
					</li>
				  </ul>
				</nav>
				<!-- / nav -->
			  </div>
			</section>
			
			<footer class="footer lt hidden-xs b-t b-dark">
			  <div id="chat" class="dropup">
				<section class="dropdown-menu on aside-md m-l-n">
				  <section class="panel bg-white">
					<header class="panel-heading b-b b-light">Active chats</header>
					<div class="panel-body animated fadeInRight">
					  <p class="text-sm">No active chats.</p>
					  <p><a href="#" class="btn btn-sm btn-default">Start a chat</a></p>
					</div>
				  </section>
				</section>
			  </div>
			  <div id="invite" class="dropup">				
				<section class="dropdown-menu on aside-md m-l-n">
				  <section class="panel bg-white">
					<header class="panel-heading b-b b-light">
					  James <i class="fa fa-circle text-success"></i>
					</header>
					<div class="panel-body animated fadeInRight">
					  <p class="text-sm">No contacts in your lists.</p>
					  <p><a href="#" class="btn btn-sm btn-facebook"><i class="fa fa-fw fa-facebook"></i> Invite from Facebook</a></p>
					</div>
				  </section>
				</section>
			  </div>
			  <a href="#nav" data-toggle="class:nav-xs" class="pull-right btn btn-sm btn-dark btn-icon">
				<i class="fa fa-angle-left text"></i>
				<i class="fa fa-angle-right text-active"></i>
			  </a>
			  <div class="btn-group hidden-nav-xs">
				<button type="button" title="Chats" class="btn btn-icon btn-sm btn-dark" data-toggle="dropdown" data-target="#chat"><i class="fa fa-comment-o"></i></button>
				<button type="button" title="Contacts" class="btn btn-icon btn-sm btn-dark" data-toggle="dropdown" data-target="#invite"><i class="fa fa-facebook"></i></button>
			  </div>
			</footer>
		  </section>
		</aside>

		<!-- /.aside -->
<%
Select Case request("p")
Case "5"
%>
		<section id="content">
		  <section class="vbox">		  
			<section class="scrollable padder">
			  <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
				<li><a href="index.asp"><i class="fa fa-home"></i> Home</a></li>
				<li class="active">Project</li>
			  </ul>

<%
Case "4"
%>
<script src="js/esl.js"></script>


		<section id="content">
		  <section class="vbox">		  
			<section class="scrollable padder">
			  <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
				<li><a href="index.asp"><i class="fa fa-home"></i> Home</a></li>
				<li class="active">Project</li>
			  </ul>
<div id = "demo1" style="height:800px;border:1px solid #ccc;padding:1px;" ></div>

<script type="text/javascript">
	require.config({
        packages:[{
            name:'echarts',
            location:'./echarts/src',
            main:'echarts'
        },{
            name:'zrender',
            location:'./zrender/src',
            main:'zrender'
        }]
    });
    var  option = {
    title : {
        text: 'Donation Type：Money Pool',
        subtext: 'Data form BitsLOVE blockchain',
        x:'right',
        y:'bottom'
    },
    tooltip : {
        trigger: 'item',
        formatter: '{a} : {b}'
    },
    legend: {
        x: 'left',
        selected:{'被捐助者':true,'捐助者':true},
        data:['捐助者','被捐助者']
    },
    isShowScrollBar:false,
    series: [
        {
            type:'kforce',
            categories : [
                {
                    name: 'Money Pool',
                    itemStyle: {
                        normal: {
                            color : '#ff7f50'
                        }
                    }
                },
                {
                    name: '捐助者',
                    itemStyle: {
                        normal: {
                            color : '#ff7f50'
                        }
                    }
                },
                {
                    name:'被捐助者',
                    itemStyle: {
                        normal: {
                            color : '#87cdfa'
                        }
                    }
                }
            ],
            itemStyle: {
                normal: {
                    label: {
                        show: true,
                        textStyle: {
                            color: '#000000'
                        }
                    },
                    nodeStyle : {
                        brushType : 'both',
                        strokeColor : 'rgba(255,215,0,0.4)',
                        lineWidth : 2
                    }
                },emphasis:{
                    linkStyle : { strokeColor : '#5182AB'}
                }
            },
            minRadius : 15,
            maxRadius : 25,
            density : 0.8,
            attractiveness: 0.8,
            nodes:[
                {category:0, name: 'Money Pool', value :20,shapeType:'rectangle',onclick:function(params){
                     alert(params.target.style.text);
                     params.target.style.text = "雷布斯";
                },
                  itemStyle:{
                    normal:{
                        width:100,
                        height:80
                    }
                }},
                {category:1, name: 'Bill Gates',value : 2,shapeType:'ellipse',
                itemStyle:{
                    normal:{
                        a:40,
                        b:20
                    }
                }},
                {category:1, name: 'Zuckerberg',value : 3},
                {category:1, name: 'Warren Buffett',value : 3},
                {category:1, name: '王思聪',value : 7},
                {category:2, name: 'Bill Clinton',value : 5},
                {category:2, name: 'Obama',value : 8,shapeType:'rectangle'},
                {category:2, name: 'Hillary Clinton',value : 9},
                {category:2, name: 'George Bush',value : 4},
                {category:2, name: 'Donald Trump',value : 4},
                {category:2, name: 'Other Guys',value : 1},
            ],
            links : [
                {source : 1, target : 0, weight : 1,
                onclick:function(params){
                     alert(params.target.style.text);
                },
                itemStyle:{
                    normal:{
                        lineWidth:1,
                        text:'',
                        textColor:'#030303',
                        textFont:'bold 15px verdana',
                        textPosition:'inside'
                    }
                }},
                {source : 2, target : 0, weight : 2},
                {source : 3, target : 0, weight : 1},
                {source : 4, target : 0, weight : 2},
                {source : 5, target : 0, weight : 3},
                {source : 6, target : 0, weight : 6},
                {source : 7, target : 0, weight : 6},
                {source : 8, target : 0, weight : 1},
                {source : 9, target : 0, weight : 1},
                {source : 10, target : 0, weight : 1}
                
            ]
        }
    ]
};
require(
    [
        'echarts',
        'echarts/chart/kforce',
    ],
    function(ec) {
        var myChart = ec.init(document.getElementById('demo1'));
        myChart.setOption(option);
    }
)
</script>


				</section>
			</section>
		</section>

<%
Response.end
Case "3"
%>
		<section id="content">
		  <section class="vbox">		  
			<section class="scrollable padder">
			  <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
				<li><a href="index.asp"><i class="fa fa-home"></i> Home</a></li>
				<li class="active">Project</li>
			  </ul>


                <div class="col-sm-12">
                  <section class="panel panel-default">
                    <header class="panel-heading">Stats</header>
                    <table class="table table-striped m-b-none">
                      <thead>
                        <tr>
                          <th>Statistic</th>
                          <th>Project</th>                    
                          <th>Trend</th>                    
                          <th>Type</th>                    
                          <th width="70">Operate</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>                    
                          <td>
                            <div class="sparkline" data-bar-color="#5cb85c" data-type="bar" data-height="19"><!--20,10,15,21,12,5,21,30,24,15,8,19--></div>
                          </td>
                          <td><a href='index.asp?p=4'>BitsLOVE YOUNG HEART PROJECT</a></td>
                          <td class="text-success">
                            <i class="fa fa-level-up"></i> 40%
                          </td>
                          <td>Donors-Pool-People</td>
                          <td><a href="#" class="btn btn-s-md btn-default btn-rounded">Edit</a></td>
                        </tr>
                        <tr>                    
                          <td>
                            <div class="sparkline" data-bar-color="#61a1e1" data-type="bar" data-height="19"><!--,5,21,30,24,15,8,19,20,10,15,21,12--></div>
                          </td>
                          <td><a href='index.asp?p=4'>BitsLOVE ANGEL PROJECT</a></td>
                          <td class="text-success">
                            <i class="fa fa-level-up"></i> 20%
                          </td>
                          <td>Donors-Pool-People</td>
                          <td><a href="#" class="btn btn-s-md btn-default btn-rounded">Edit</a></td>
                        </tr>
                        <tr>                    
                          <td>
                            <div class="sparkline" data-bar-color="#999900" data-type="bar" data-height="19"><!--200,400,500,100,90,1200,1500,1000,800,500,80,50--></div>
                          </td>
                          <td><a href='index.asp?p=4'>BitsLOVE REBORN PROJECT</a></td>
                          <td class="text-warning">
                            <i class="fa fa-level-down"></i> 5%
                          </td>
                          <td>Donors-Pool-People</td>
                          <td><a href="#" class="btn btn-s-md btn-default btn-rounded">Edit</a></td>
                        </tr>
                        <tr>                    
                          <td>
                            <div class="sparkline" data-bar-color="#ff5f5f" data-type="bar" data-height="19"><!--15,21,30,24,15,8,19,20,10,15,21,12--></div>
                          </td>
                          <td><a href='index.asp?p=4'>BitsLOVE HEKANG REHABILITION</a></td>
                          <td class="text-danger">
                            <i class="fa fa-level-down"></i> 20%
                          </td>
                          <td>Donors-Pool-People</td>
                           <td><a href="#" class="btn btn-s-md btn-default btn-rounded">Edit</a></td>
                       </tr>
                      </tbody>
                    </table>
                  </section>
                </div>


				</section>
			</section>
		</section>
<%
Case "2"
%>
		<section id="content">
		  <section class="vbox">		  
			<section class="scrollable padder">
			  <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
				<li><a href="index.asp"><i class="fa fa-home"></i> Home</a></li>
				<li class="active">Project</li>
			  </ul>
	
				<div class="col-sm-12">
				  <section class="panel panel-default">
					<header class="panel-heading font-bold">Project Infomation</header>
					<div class="panel-body">
					  <form class="bs-example form-horizontal">
						<div class="form-group">
						  <label class="col-lg-2 control-label">项目名称</label>
						  <div class="col-lg-10">
							<input type="email" class="form-control" placeholder="项目名称">
						  </div>
						</div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">项目介绍</label>
                      <div id="epiceditor" class="col-lg-10"></div>
                    </div>
                    <div class="line line-dashed line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">接受币种</label>
                      <div class="col-sm-10">
                        <label class="checkbox-inline">
                          <input type="checkbox" id="inlineCheckbox1" value="option1"> <i class="fa fa-cny"></i> 人民币
                        </label>
                        <label class="checkbox-inline">
                          <input type="checkbox" id="inlineCheckbox2" value="option2"> <i class="fa fa-dollar"></i> 美元
                        </label>
                        <label class="checkbox-inline">
                          <input type="checkbox" id="inlineCheckbox3" value="option3"> <i class="fa fa-btc"></i> 比特币
                        </label>
                      </div>
                    </div>                    
                    <div class="line line-dashed line-lg pull-in"></div>
						<div class="form-group">
						  <label class="col-lg-2 control-label">项目金额</label>
						  <div class="col-lg-10">
							<input type="email" class="form-control" placeholder="项目捐助资金上限">
						  </div>
						</div>
						<div class="form-group">
						  <label class="col-lg-2 control-label">资助人数</label>
						  <div class="col-lg-10">
							<input type="email" class="form-control" placeholder="资助人数">
						  </div>
						</div>
						<div class="form-group">
						  <label class="col-lg-2 control-label">个人金额</label>
						  <div class="col-lg-10">
							<input type="email" class="form-control" placeholder="捐助对象金额上限">
						  </div>
						</div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">开始时间</label>
                      <div class="col-sm-10">
                        <input type="text" class="combodate form-control" data-format="DD-MM-YYYY HH:mm" data-template="D  MMM  YYYY  -  HH : mm" name="datetime" value="21-12-2012 20:30">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">捐赠类型</label>
                      <div class="col-sm-10">
                        <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                            捐助者先捐赠给项目，项目再分配给受捐助对象<BR><img src=images/Type1.gif style="width:400px;">
                          </label>
                        </div>
                        <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                            捐助者直接捐助给受捐助对象<BR><img src=images/Type2.gif style="width:400px;">
                          </label>
                        </div>
                      </div>
                    </div>


						<div class="form-group">
						  <div class="col-lg-offset-2 col-lg-10">
							<button type="submit" class="btn btn-sm btn-default">Submit</button>
						  </div>
						</div>
					  </form>
					</div>
				  </section>
				</div>

				</section>
			</section>
		</section>
<%
Case "1"
%>

				<aside>
				  <div class="wrapper-lg">
					<h4 class="m-t-none font-bold">Projects</h4>
					<div class="text-center">
					  <div class="inline m">
						<div class="easypiechart text-success" data-percent="25" data-line-width="5" data-track-Color="#f0f0f0" data-bar-color="#8ec165" data-rotate="270" data-scale-Color="false" data-size="120" data-animate="2000">
						  <span class="h2 step font-bold">25</span>%
						  <div class="easypie-text text-muted">task done</div>
						</div>
						<div class="font-bold m-t">YOUNG HEART PROJECT</div>
					  </div>
					  <div class="inline m">
						<div class="easypiechart text-info" data-percent="65" data-line-width="5" data-track-Color="#f0f0f0" data-bar-color="#4cc0c1" data-rotate="115" data-scale-Color="false" data-size="120" data-animate="2000">
						  <span class="h2 step font-bold">65</span>%
						  <div class="easypie-text text-muted">in progress</div>
						</div>
						<div class="font-bold m-t">ANGEL PROJECT</div>
					  </div>					
					  <div class="inline m">
						<div class="easypiechart text-danger" data-percent="50" data-line-width="5" data-track-Color="#f0f0f0" data-bar-color="#fb6b5b" data-rotate="180" data-scale-Color="false" data-size="120" data-animate="2000">
						  <span class="h2 step font-bold">50</span>%
						  <div class="easypie-text text-muted">remaining</div>
						</div>
						<div class="font-bold m-t">REBORN PROJECT</div>
					  </div>
					</div>
					<ul class="list-group gutter list-group-lg list-group-sp sortable">
					<li class="list-group-item box-shadow">
					  <a href="#" class="pull-right" data-dismiss="alert">
						<i class="fa fa-times icon-muted"></i>
					  </a>
					  <span class="pull-left media-xs">
						<i class="fa fa-sort icon-muted fa m-r-sm"></i>
						<a  href="#todo-2" data-toggle="class:text-lt text-danger">
						  <i class="fa fa-square-o fa-fw text"></i>
						  <i class="fa fa-check-square-o fa-fw text-active text-danger"></i>
						</a>
					  </span>
					  <div class="clear" id="todo-2">
						BitsLOVE YOUNG HEART PROJECT
					  </div>
					</li>
					<li class="list-group-item box-shadow">
					  <a href="#" class="pull-right" data-dismiss="alert">
						<i class="fa fa-times icon-muted"></i>
					  </a>
					  <span class="pull-left media-xs">
						<i class="fa fa-sort icon-muted fa m-r-sm"></i>
						<a  href="#todo-3" data-toggle="class:text-lt">
						  <i class="fa fa-square-o fa-fw text"></i>
						  <i class="fa fa-check-square-o fa-fw text-active text-success"></i>
						</a>
					  </span>
					  <div class="clear" id="todo-3">
						BitsLOVE ANGEL PROJECT
					  </div>
					</li>
					<li class="list-group-item box-shadow">
					  <a href="#" class="pull-right" data-dismiss="alert">
						<i class="fa fa-times icon-muted"></i>
					  </a>
					  <span class="pull-left media-xs">
						<i class="fa fa-sort icon-muted fa m-r-sm"></i>
						<a  href="#todo-4" data-toggle="class:text-lt">
						  <i class="fa fa-square-o fa-fw text"></i>
						  <i class="fa fa-check-square-o fa-fw text-active text-success"></i>
						</a>
					  </span>
					  <div class="clear" id="todo-4">
						BitsLOVE REBORN PROJECT
					  </div>
					</li>
					<li class="list-group-item box-shadow">
					  <a href="#" class="pull-right" data-dismiss="alert">
						<i class="fa fa-times icon-muted"></i>
					  </a>
					  <span class="pull-left media-xs">
						<i class="fa fa-sort icon-muted fa m-r-sm"></i>
						<a  href="#todo-5" data-toggle="class:text-lt">
						  <i class="fa fa-square-o fa-fw text"></i>
						  <i class="fa fa-check-square-o fa-fw text-active text-success"></i>
						</a>
					  </span>
					  <div class="clear" id="todo-5">
					   BitsLOVE HEKANG REHABILITION
					  </div>
					</li>
					<li class="list-group-item box-shadow">
					  <a href="#" class="pull-right" data-dismiss="alert">
						<i class="fa fa-times icon-muted"></i>
					  </a>
					  <span class="pull-left media-xs">
						<i class="fa fa-sort icon-muted fa m-r-sm"></i>
						<a  href="#todo-6" data-toggle="class:text-lt">
						  <i class="fa fa-square-o fa-fw text"></i>
						  <i class="fa fa-check-square-o fa-fw text-active text-success"></i>
						</a>
					  </span>
					  <div class="clear" id="todo-6">
						BitsLOVE PHILANTHROPY+
					  </div>
					</li>					</ul> 
				  </div>
				</aside>


				<aside class="b-l b-light">
				  <div class="wrapper-lg">
					<h4 class="m-t-none font-bold">Map</h4>
					<div id="world_map" style="height:220px;"></div>
					<h4 class="font-bold m-t m-b">Stats</h4>
					<div class="panel panel-default">
					  <table class="table table-striped m-b-none">
						<thead>
						  <tr>
							<th>Graph</th>
							<th>Item</th>
							<th width="70"></th>
						  </tr>
						</thead>
						<tbody>
						  <tr>					
							<td>
							  <div class="sparkline" data-bar-color="#5cb85c" data-type="bar" data-height="19"><!--20,10,15,21,12,5,21,30,24,15,8,19--></div>
							</td>
							<td>BitsLOVE YOUNG HEART PROJECT</td>
							<td class="text-success">
							  <i class="fa fa-level-up"></i> 40%
							</td>
						  </tr>
						  <tr>					
							<td>
							  <div class="sparkline" data-bar-color="#61a1e1" data-type="bar" data-height="19"><!--,5,21,30,24,15,8,19,20,10,15,21,12--></div>
							</td>
							<td>BitsLOVE ANGEL PROJECT</td>
							<td class="text-success">
							  <i class="fa fa-level-up"></i> 20%
							</td>
						  </tr>
						  <tr>					
							<td>
							  <div class="sparkline" data-bar-color="#999900" data-type="bar" data-height="19"><!--200,400,500,100,90,1200,1500,1000,800,500,80,50--></div>
							</td>
							<td>BitsLOVE REBORN PROJECT</td>
							<td class="text-warning">
							  <i class="fa fa-level-down"></i> 5%
							</td>
						  </tr>
						  <tr>					
							<td>
							  <div class="sparkline" data-bar-color="#ff5f5f" data-type="bar" data-height="19"><!--15,21,30,24,15,8,19,20,10,15,21,12--></div>
							</td>
							<td>BitsLOVE HEKANG REHABILITION</td>
							<td class="text-danger">
							  <i class="fa fa-level-down"></i> 20%
							</td>
						  </tr>
						</tbody>
					  </table>
					</div>
					<ul class="pagination pagination-sm m-t-none">
					  <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
					  <li class="active"><a href="#">1</a></li>
					  <li><a href="#">2</a></li>
					  <li><a href="#">3</a></li>
					  <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
					</ul>
				  </div>
				</aside>

<%
Case Else
%>
		<section id="content">
		  <section class="vbox">		  
			<section class="scrollable padder">
			  <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
				<li><a href="index.asp"><i class="fa fa-home"></i> Home</a></li>
				<li class="active">Overview</li>
			  </ul>
			  <div class="m-b-md">
				<h3 class="m-b-none">Overview</h3>
				<small>Welcome back, BitsLOVE</small>
			  </div>
			  <section class="panel panel-default">
				<div class="row m-l-none m-r-none bg-light lter">
				  <div class="col-sm-6 col-md-3 padder-v b-r b-light">
					<span class="fa-stack fa-2x pull-left m-r-sm">
					  <i class="fa fa-circle fa-stack-2x text-info"></i>
					  <i class="fa fa-money fa-stack-1x text-white"></i>
					</span>
					<a class="clear" href="#">
					  <span class="h3 block m-t-xs"><strong>$ 52,000.00 </strong></span>
					  <small class="text-muted text-uc">Donation amount</small>
					</a>
				  </div>
				  <div class="col-sm-6 col-md-3 padder-v b-r b-light lt">
					<span class="fa-stack fa-2x pull-left m-r-sm">
					  <i class="fa fa-circle fa-stack-2x text-warning"></i>
					  <i class="fa fa-male fa-stack-1x text-white"></i>
					  <span class="easypiechart pos-abt" data-percent="100" data-line-width="4" data-track-Color="#fff" data-scale-Color="false" data-size="50" data-line-cap='butt' data-animate="2000" data-target="#bugs" data-update="3000"></span>
					</span>
					<a class="clear" href="#">
					  <span class="h3 block m-t-xs"><strong id="bugs">468</strong></span>
					  <small class="text-muted text-uc">New Donors</small>
					</a>
				  </div>
				  <div class="col-sm-6 col-md-3 padder-v b-r b-light">					 
					<span class="fa-stack fa-2x pull-left m-r-sm">
					  <i class="fa fa-circle fa-stack-2x text-danger"></i>
					  <i class="fa fa-wheelchair fa-stack-1x text-white"></i>
					  <span class="easypiechart pos-abt" data-percent="100" data-line-width="4" data-track-Color="#f5f5f5" data-scale-Color="false" data-size="50" data-line-cap='butt' data-animate="3000" data-target="#firers" data-update="5000"></span>
					</span>
					<a class="clear" href="#">
					  <span class="h3 block m-t-xs"><strong id="firers">359</strong></span>
					  <small class="text-muted text-uc">HELPED PEOPLE</small>
					</a>
				  </div>
				  <div class="col-sm-6 col-md-3 padder-v b-r b-light lt">
					<span class="fa-stack fa-2x pull-left m-r-sm">
					  <i class="fa fa-circle fa-stack-2x icon-muted"></i>
					  <i class="fa fa-clock-o fa-stack-1x text-white"></i>
					</span>
					<a class="clear" href="#">
					  <span class="h3 block m-t-xs"><strong>31:50</strong></span>
					  <small class="text-muted text-uc">Left to exit</small>
					</a>
				  </div>
				</div>
			  </section>
			  <div class="row">
				<div class="col-md-8">
				  <section class="panel panel-default">
					<header class="panel-heading font-bold">Statistics</header>
					<div class="panel-body">
					  <div id="flot-1ine" style="height:210px"></div>
					</div>
					<footer class="panel-footer bg-white no-padder">
					  <div class="row text-center no-gutter">
						<div class="col-xs-3 b-r b-light">
						  <span class="h4 font-bold m-t block">5,860</span>
						  <small class="text-muted m-b block">Donation Amount</small>
						</div>
						<div class="col-xs-3 b-r b-light">
						  <span class="h4 font-bold m-t block">10,450</span>
						  <small class="text-muted m-b block">New Donors</small>
						</div>
						<div class="col-xs-3 b-r b-light">
						  <span class="h4 font-bold m-t block">21,230</span>
						  <small class="text-muted m-b block">Helped People</small>
						</div>
						<div class="col-xs-3">
						  <span class="h4 font-bold m-t block">7,230</span>
						  <small class="text-muted m-b block">Project Number</small>						
						</div>
					  </div>
					</footer>
				  </section>
				</div>
				<div class="col-md-4">
				  <section class="panel panel-default">
					<header class="panel-heading font-bold">Data graph</header>
					<div class="bg-light dk wrapper">
					  <span class="pull-right">Friday</span>
					  <span class="h4">$540<br>
						<small class="text-muted">+1.05(2.15%)</small>
					  </span>
					  <div class="text-center m-b-n m-t-sm">
						  <div class="sparkline" data-type="line" data-height="65" data-width="100%" data-line-width="2" data-line-color="#dddddd" data-spot-color="#bbbbbb" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="3" data-resize="true" values="280,320,220,385,450,320,345,250,250,250,400,380"></div>
						  <div class="sparkline inline" data-type="bar" data-height="45" data-bar-width="6" data-bar-spacing="6" data-bar-color="#65bd77">10,9,11,10,11,10,12,10,9,10,11,9,8</div>
					  </div>
					</div>
					<div class="panel-body">
					  <div>
						<span class="text-muted">Total:</span>
						<span class="h3 block">$2500.00</span>
					  </div>
					  <div class="line pull-in"></div>
					  <div class="row m-t-sm">
						<div class="col-xs-4">
						  <small class="text-muted block">Per People</small>
						  <span>$1500.00</span>
						</div>
						<div class="col-xs-4">
						  <small class="text-muted block">Per Project</small>
						  <span>$600.00</span>
						</div>
						<div class="col-xs-4">
						  <small class="text-muted block">Per Hour</small>
						  <span>$400.00</span>
						</div>
					  </div>
					</div>
				  </section>
				</div>
			  </div>
			  <div class="row">
				<div class="col-md-8">
				  <h4 class="m-t-none">Project List</h4>
				  <ul class="list-group gutter list-group-lg list-group-sp sortable">
					<li class="list-group-item box-shadow">
					  <a href="#" class="pull-right" data-dismiss="alert">
						<i class="fa fa-times icon-muted"></i>
					  </a>
					  <span class="pull-left media-xs">
						<i class="fa fa-sort icon-muted fa m-r-sm"></i>
						<a  href="#todo-2" data-toggle="class:text-lt text-danger">
						  <i class="fa fa-square-o fa-fw text"></i>
						  <i class="fa fa-check-square-o fa-fw text-active text-danger"></i>
						</a>
					  </span>
					  <div class="clear" id="todo-2">
						BitsLOVE YOUNG HEART PROJECT
					  </div>
					</li>
					<li class="list-group-item box-shadow">
					  <a href="#" class="pull-right" data-dismiss="alert">
						<i class="fa fa-times icon-muted"></i>
					  </a>
					  <span class="pull-left media-xs">
						<i class="fa fa-sort icon-muted fa m-r-sm"></i>
						<a  href="#todo-3" data-toggle="class:text-lt">
						  <i class="fa fa-square-o fa-fw text"></i>
						  <i class="fa fa-check-square-o fa-fw text-active text-success"></i>
						</a>
					  </span>
					  <div class="clear" id="todo-3">
						BitsLOVE ANGEL PROJECT
					  </div>
					</li>
					<li class="list-group-item box-shadow">
					  <a href="#" class="pull-right" data-dismiss="alert">
						<i class="fa fa-times icon-muted"></i>
					  </a>
					  <span class="pull-left media-xs">
						<i class="fa fa-sort icon-muted fa m-r-sm"></i>
						<a  href="#todo-4" data-toggle="class:text-lt">
						  <i class="fa fa-square-o fa-fw text"></i>
						  <i class="fa fa-check-square-o fa-fw text-active text-success"></i>
						</a>
					  </span>
					  <div class="clear" id="todo-4">
						BitsLOVE REBORN PROJECT
					  </div>
					</li>
					<li class="list-group-item box-shadow">
					  <a href="#" class="pull-right" data-dismiss="alert">
						<i class="fa fa-times icon-muted"></i>
					  </a>
					  <span class="pull-left media-xs">
						<i class="fa fa-sort icon-muted fa m-r-sm"></i>
						<a  href="#todo-5" data-toggle="class:text-lt">
						  <i class="fa fa-square-o fa-fw text"></i>
						  <i class="fa fa-check-square-o fa-fw text-active text-success"></i>
						</a>
					  </span>
					  <div class="clear" id="todo-5">
					   BitsLOVE HEKANG REHABILITION
					  </div>
					</li>
					<li class="list-group-item box-shadow">
					  <a href="#" class="pull-right" data-dismiss="alert">
						<i class="fa fa-times icon-muted"></i>
					  </a>
					  <span class="pull-left media-xs">
						<i class="fa fa-sort icon-muted fa m-r-sm"></i>
						<a  href="#todo-6" data-toggle="class:text-lt">
						  <i class="fa fa-square-o fa-fw text"></i>
						  <i class="fa fa-check-square-o fa-fw text-active text-success"></i>
						</a>
					  </span>
					  <div class="clear" id="todo-6">
						BitsLOVE PHILANTHROPY+
					  </div>
					</li>
				  </ul>				  
				</div>
				<div class="col-md-4">
				  <section class="panel b-light">
					<header class="panel-heading bg-primary dker no-border"><strong>Calendar</strong></header>
					<div id="calendar" class="bg-primary m-l-n-xxs m-r-n-xxs"></div>
					<div class="list-group">
					  <a href="#" class="list-group-item text-ellipsis">
						<span class="badge bg-danger">7:30</span> 
						BitsLOVE Conference
					  </a>
					  <a href="#" class="list-group-item text-ellipsis"> 
						<span class="badge bg-success">9:30</span> 
						BitsLOVE Conference
					  </a>
					  <a href="#" class="list-group-item text-ellipsis">
						<span class="badge bg-light">19:30</span>
						BitsLOVE Conference	
					  </a>
					</div>
				  </section>				  
				</div>
			  </div>
			</section>
		  </section>
		  <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen, open" data-target="#nav,html"></a>
		</section>

<%
End Select
%>

		<aside class="bg-light lter b-l aside-md hide" id="notes">
		  <div class="wrapper">Notification</div>
		</aside>
	  </section>
	</section>
  </section>

  
  <script src="js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="js/bootstrap.js"></script>
  <!-- App -->
  <script src="js/app.js"></script> 
  <script src="js/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="js/charts/easypiechart/jquery.easy-pie-chart.js"></script>
  <script src="js/charts/sparkline/jquery.sparkline.min.js"></script>
  <script src="js/charts/flot/jquery.flot.min.js"></script>
  <script src="js/charts/flot/jquery.flot.tooltip.min.js"></script>
  <script src="js/charts/flot/jquery.flot.resize.js"></script>
  <script src="js/charts/flot/jquery.flot.grow.js"></script>
  <script src="js/charts/flot/demo.js"></script>

  <script src="js/calendar/bootstrap_calendar.js"></script>
  <script src="js/calendar/demo.js"></script>

  <script src="js/sortable/jquery.sortable.js"></script>

  <script src="js/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
  <script src="js/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
  <script src="js/jvectormap/demo.js"></script>
  <script src="js/app.plugin.js"></script>
<script src="js/markdown/epiceditor.min.js"></script>
<script src="js/markdown/demo.js"></script>
<script src="js/libs/moment.min.js"></script>
<script src="js/combodate/combodate.js"></script>

</body>
</html>