<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title><?php echo $theme;?> - 主题配置</title>
  <link rel='stylesheet' href='<?php echo $layui['css']; ?>'>
  <style>    
    .layui-form-item {margin-bottom: 10px;}
  </style>
  </style>
</head>
<body>
<div class="layui-row" style = "margin-top:18px;">
 <div class="layui-container">
  <div class="layui-col-lg8 layui-col-md-offset2">
   <form class="layui-form" lay-filter="form">
       
    <div class="layui-form-item">
     <label class="layui-form-label">logo</label>
      <div class="layui-input-block">
       <input type="text" name="logo" placeholder="图片logo地址,建议png透明来兼容夜间模式" autocomplete="off" class="layui-input">
      </div>
    </div>
    
    <div class="layui-form-item">
     <label class="layui-form-label">页内标题</label>
      <div class="layui-input-block">
       <input type="text" name="title" placeholder="页内搜索上方的标题" autocomplete="off" class="layui-input">
      </div>
    </div>
    
    <div class="layui-form-item">
     <label class="layui-form-label">顶部链接</label>
      <div class="layui-input-block">
       <textarea name="navbar-link" rows ="2" placeholder="&lt;li&gt;&lt;a href=&quot;https://github.com/tznb1/TwoNav&quot;&gt;关于本站&lt;/a&gt;&lt;/li&gt;" class="layui-textarea"></textarea>
      </div>
    </div>
    
    <div class="layui-form-item">
     <label class="layui-form-label">友情链接</label>
      <div class="layui-input-block">
       <textarea name="friend-link" rows ="2" placeholder="&lt;li&gt;&lt;a href=&quot;https://github.com/tznb1/TwoNav&quot; title=&quot;项目地址&quot; target=&quot;_blank&quot;&gt;TwoNav&lt;/a&gt;&lt;/li&gt;" class="layui-textarea"></textarea>
      </div>
    </div>
    <div class="layui-form-item" style="padding-top: 10px;">
     <div class="layui-input-block"><button class="layui-btn" lay-submit lay-filter="save">保存</button></div>
    </div>
   </form>
  </div>
 </div>
</div>
<script src="<?php echo $layui['js']; ?>"></script>
<script src="./templates/admin/js/public.js?v=<?php echo $Ver;?>"></script>
<script>
var u = _GET('u');
layui.use(['form'], function(){
    var form = layui.form;var $ = layui.$;
    form.val('form', <?php echo json_encode($theme_config);?>);
    form.on('submit(save)', function(data){
        $.post(get_api('write_theme','config') + '&t=' + _GET('theme'),data.field,function(data,status){
            if(data.code == 1) {
                layer.msg(data.msg, {icon: 1,time: 500,end: function() {if(_GET('source') != 'admin'){parent.location.reload();}}});
            }else{
                layer.msg(data.msg, {icon: 5});
            }
        });
        return false; 
    });
});
</script>
</body>
</html>