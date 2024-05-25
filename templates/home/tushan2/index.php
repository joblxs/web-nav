<?php
use think\Template;

require __DIR__ . '/vendor/autoload.php';

$template = new Template();
function dump($option = '')
{
    echo "<pre>";
    print_r($option);
    echo "</pre>";
}
$config = [
    'view_path' => __DIR__ . '/view/',
    'view_suffix' => 'html',
    'cache_path'	=>	'./data/'
];
$template = new Template($config);
$template->assign(['site' => $site]);
$template->assign(['global_config' => $global_config]);

$theme_config = json_decode(json_encode($theme_config),true);
$template->assign(['background' => $theme_config['background']]);
$template->assign(['searchEngine'=>$theme_config['searchEngine']]);
$template->assign(['favicon'=>$theme_config['favicon']]);
$template->assign(['jquery'=>$libs.'/jquery/jquery-3.6.0.min.js']);
$template->assign(['layer'=>$layui['js']]);
$template->assign(['holmes'=>$libs.'/Other/holmes.js']);
$template->assign(['font_awesome'=>$libs.'/Font-awesome/4.7.0/css/font-awesome.css']);
$template->assign(['favicon'=>$favicon]);
$template->assign(['copyright'=>$copyright]);
$template->assign(['admin'=>'./index.php?c=admin&u='.U]);

foreach ($categorys as $key => $value) {
    $categorys[$key]['links'] = get_links($value['id']);
}

$template->assign(['categorys' => $categorys]);
// 读取模板文件渲染输出
echo $template->fetch('index');