
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">

<link href="http://api.map.baidu.com/library/TrafficControl/2.0/src/TrafficControl_min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://api.map.baidu.com/library/TrafficControl/2.0/src/TrafficControl_min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=25CGFXkcYY8DyALtxM99YuZga08bUOEl"></script>
 </head>

 <body>
   
    <div style="width:100%;height:340px;border:1px solid gray" id="container">
    </div>
    <script type="text/javascript">
       var map = new BMap.Map("container");
      
       map.centerAndZoom(new BMap.Point(116.404, 39.915), 12); 
       var ctrl = new BMapLib.TrafficControl({
           showPanel: false //是否显示路况提示面板
       });      
       map.addControl(ctrl);
       ctrl.setAnchor(BMAP_ANCHOR_BOTTOM_RIGHT);  
       
    </script>
 </body>
</html>
