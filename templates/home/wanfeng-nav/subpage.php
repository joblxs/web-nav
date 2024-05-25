<?php 
$where = [];
$where['uid'] = UID; 
$where['fid'] = 0;
$where['status'] = 1;
$where['ORDER'] = ['weight'=>'ASC'];
if(!is_login){
    $where['property'] = 0;
}
$categorys_list = get_category_list();
?>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="renderer" content="webkit">
<meta name="force-rendering" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="applicable-device" content="pc,mobile">
<title><?php echo $site['Title'];?></title>
<meta name="keywords" content="<?php echo $site['keywords']; ?>">
<meta name="description" content="<?php echo $site['description']; ?>">
<meta name="author" content="order by www.5MoBan.Com"/>
<link rel="stylesheet" href="<?php echo $libs?>/Font-awesome/4.7.0/css/font-awesome.css">
<link rel="stylesheet" href="<?php echo $theme_dir?>/css/style.css?v=<?php echo $theme_ver; ?>">
<link rel="shortcut icon" href="<?php echo $favicon;?>">
<!--[if lt IE 9]><div class="fuck-ie"><p class="tips">*您的IE浏览器版本过低，为获得更好的体验请使用Chrome、Firefox或其他现代浏览器!</p></div><![endif]-->
<script src = "<?php echo $libs?>/jquery/jquery-2.2.4.min.js"></script>
</head>
<body>
<header class="header">
  <div class="h-fix">
    <div class="container">
      <h1 class="logo"> <a href="" title="<?php echo $site['description']; ?>"> <img id="light-logo" src="<?php echo $theme_config['logo'];?>" alt="<?php echo $site['description']; ?>" title="<?php echo $site['description']; ?>"/> <img id="dark-logo" src="<?php echo $theme_config['logo'];?>" alt="<?php echo $site['description']; ?>" title="<?php echo $site['description']; ?>"/> </a> </h1>
      <div id="m-btn" class="m-btn"><i class="fa fa-bars"></i></div>
      <div class="darkmode autoleft" title="日夜模式切换"> <a href="javascript:switchNightMode()" target="_self" class=""><i class="fa fa-moon-o"></i></a> </div>
      <nav class="nav-bar" id="nav-box" data-type="index" data-infoid="">
        <ul class="nav">
          <li><a href="./?u=<?php echo $u?>">首页</a></li>
          <li><a href="./?c=admin&u=<?php echo $u?>">管理</a></li>
          <li ><a href="#">分类</a>
            <ul class="sub-menu sub2">
<?php  foreach ($categorys_list as $category) { ?>
                <li data-id="category-<?php echo $category['id']; ?>"><a href="./?u=<?php echo U;?>&oc=<?php echo $category['id'];?>"><?php echo $category['name']; ?></a></li>
<?php } ?>
            </ul>
          </li>
          <?php echo $theme_config['navbar-link']; ?>
<?php if(is_guestbook()){ ?>
        <li><a href="./index.php?c=guestbook&u=<?php echo $u?>">在线留言</a></li>
<?php } ?>
        </ul>
      </nav>
<?php if (is_apply()) { ?> 
      <div class="submit fr"> <a href="./index.php?c=apply&u=<?php echo $u?>" target="_blank" class="a transition"><i class="fa fa-heart"></i>申请收录</a> </div>
<?php } ?> 
    </div>
  </div>
</header>

<div id="mask"></div>
<div class="breadnav">
  <div class="container bread"> <i class="fa fa-home"></i><a href="./?u=<?php echo U;?>">首页</a>>><a href="./?u=<?php echo U;?>&oc=<?php echo $_GET['oc'];?>"><?php echo empty($categorys[0]['name']) ?'Null':$categorys[0]['name']; ?></a> </div>
</div>
<p class="index-breadcrumb"></p>

<div class="container"> 
  <div  class="row row-position">
    <div  class="col-md-12">
<?php 
    foreach ( $categorys as $category ) { ?>
      <div class="part" id="category-<?php echo $category['id']; ?>">
        <p class="tt sticky"> <strong><i class='<?php echo $category['font_icon']; ?>'></i> <?php echo $category['name']; ?> </strong> <!--<a href="/?ziyuanhuizong/">更多+</a>--></p>
        <div class="items">
          <div class="row">
     <?php  foreach (get_links($category['id']) as $link) {   $link['description'] = empty($link['description']) ? '作者很懒，没有填写描述。' : $link['description']; ?>
            <div class="col-xs-6 col-sm-4 col-md-3">
              <div class="item">
                  <a class="link" target="_blank" href="<?php echo $link['real_url']; ?>" rel="nofollow"><i class="autoleft fa fa-angle-right" title="直达网站"></i></a>
                  <a class="a" href="<?php echo $link['url']; ?>" target="_blank">
                      <img src="<?php echo $link['ico']; ?>">
                      <h3><?php echo $link['title']; ?></h3>
                      <p><?php echo $link['description']; ?></p>
                  </a>
              </div>
            </div>
    <?php } ?>
          </div>
        </div>
      </div>
<?php } ?>
    </div>
  </div>
  <div class="f-link part">
    <p class="tt"><strong><i class="fa fa-share-alt"></i> 友情链接</strong></p>
    <ul id="flink" class="container">
        <?php echo $theme_config['friend-link']; ?>
    </ul>
  </div>
</div>
<div class="footer-copyright ">
  <div class="container">
        <?php echo $copyright.PHP_EOL;?>
        <?php echo $ICP.PHP_EOL;?>
        <?php echo $site['custom_footer'].PHP_EOL;?>
        <?php echo $global_config['global_footer'].PHP_EOL;?>
  </div>
</div>
<div id="backtop" class="fa fa-angle-up autoleft" title="返回顶部"></div>
<script src="<?php echo $libs?>/jquery/jQueryCookie.js"></script>
<script src="<?php echo $libs?>/Other/holmes.js"></script>
<script src="<?php echo $theme_dir?>/js/main.js" type="text/javascript"></script> 
<!--[if lt IE 9]><script src="<?php echo $theme_dir?>/js/html5-css3.js"></script><![endif]-->
</body>
</html>