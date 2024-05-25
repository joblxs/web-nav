<?php 
if(in_array($_GET['method'],['category_list','link_list'])){
    //分类列表
    if($_GET['method'] === 'category_list'){
        msgA(['code'=>0,'msg'=>'获取成功','count'=>count($categorys),'data'=>$categorys ]);
    }
    //链接列表
    if($_GET['method'] === 'link_list'){
        $links = [];
        foreach ( $categorys as $category ) { 
            $links = array_merge($links,get_links($category['id']));
        }
        $newCategorys = array_column($categorys,'name','id');
        foreach ($links as $key => &$link) {
            if($link['id'] > 0){
                $link['category_name'] = $newCategorys[$link['fid']];
            }else{
                unset($links[$key]);
            }
        }
        $links = array_values($links);
        msgA(['code'=>0,'msg'=>'获取成功','count'=>count($links),'data'=>$links]);
    }
    exit;
}
?> 
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta content="<?php echo $site['keywords']; ?>" name="keywords">
    <meta content="<?php echo $site['description']; ?>" name="description">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <meta content="width=device-width,initial-scale=1" name="viewport">
    <link rel="shortcut icon" href="<?php echo $favicon;?>">
    <title><?php echo $site['Title']; ?></title>
    <script>
        var user = '<?php echo $u?>',
            ICP = '<?php echo $ICP?>',
            templates = '<?php echo $theme_dir?>',
            category_list_api = "./index.php?method=category_list&theme=tushan&u=<?php echo $u?>",
            link_list_api = "./index.php?method=link_list&theme=tushan&u=<?php echo $u?>";
    </script>
    <script defer="defer" src="<?php echo $theme_dir?>/js/chunk-vendors.04831ac6.js"></script>
    <script defer="defer" src="<?php echo $theme_dir?>/js/app.a4ca89e2.js"></script>
    <link href="<?php echo $theme_dir?>/css/chunk-vendors.37bab8c1.css" rel="stylesheet">
    <link href="<?php echo $theme_dir?>/css/app.95df5ac9.css" rel="stylesheet">
    <style>#_weight{display:none}</style>
</head>

<body>
    <div id="app"></div>
</body>

</html>