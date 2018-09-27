<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>電影通</title>
</head>
<? include("source/sql.php");?>
<link href="source/css.css" rel="stylesheet" type="text/css">
<script src="source/jquery-1.7.2.min.js"></script>
<script src="js.js"></script>
<body>
    <div class="top"></div>
    <div class="middle">
        <div class="topp" align="left">
            <ul class="menu" style="position:relative; top:30%;">
                <a href="index.php"><li class="menu ls">現正熱映</li></a>
                <a href="?m=search"><li class="menu ls">查詢訂票</li></a>
            </ul>
        </div>
        <div class="content">
            <?
                if($_GET[m]=='')
                {
                    $a1=$mq("select * from movie");
                    while($aa1=$mfa($a1))
                    {
                        $tt=mktime(date("H"),date("i"),date("s"),date("n"),date("j"),date("Y"));
                        $a11=$mnr($mq("select * from movietime where _sid=$aa1[_id] &&_time not between 0 and $tt"));
                        if($a11!=0)
                        {
                            ?>
                            <div class="item">
                                <img src="pic/<?=$aa1[_img]?>" title="<?=$aa1[_name]?>" width="250" height="141" style="border-radius:10px; cursor:pointer;" onClick="_inform(<?=$aa1[_id]?>)">
                                <input class="item_bt" type="button" value="觀賞預告" onClick="_video(<?=$aa1[_id]?>)">
                                <input class="item_bt" type="button" value="立刻訂票" onClick="_book(<?=$aa1[_id]?>)">
                            </div>
                            <?
                        }
                        
                    }
                }
				else if($_GET[m]=='search')
				{
					?>
                    <div style="margin:15% 28%;">
						<font size="+3">訂單編號 : </font><input type="text" class="tt" id="_search" placeholder="請輸入欲查詢訂單之編號"><img src="source/search.png" width="40" style="cursor:pointer; position:relative; top:10px; left:10px;" onClick="_searc()"></div>
                    </div>
					<?
				}
            ?>
        </div>
    <div id="cover" onclick="xxx" style="width:100%; min-height:100%; z-index:2; background-color:rgba(0,0,0,0.8); display:none; position:fixed; top:0px; left:0px;"><center><font size="+3" color="#FFFFFF">*點擊空白處以跳出</font><br><br></center><div id="hid" style="width:50%; height:auto; border:rgba(102,102,102,0.5) 10px solid; border-radius:10px; margin:0% 10%; display:none; z-index:2; background-color:rgba(0,153,204,0.8);" align="left"></div>
    </div>
    <div class="bottom" align="right">
        <font style="position:relative; right:20px;"><em>&copy;&nbsp;Copyright by someone</em></font>
    </div>
</body>
</html>
