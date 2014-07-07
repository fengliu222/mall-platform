####mall-platform 项目结构DEMO

```javascript
assets\        //静态文件目录

  -> css\     //编译后的CSS目录
  
  -> img\     //图片文件夹
  
    -> activity\ //活动图片文件夹
    
    -> common\    //通用图片文件夹
    
  -> js\      //JS文件
  
    -> activity\  //活动相关JS文件
    
    -> modules\   //通用模块JS
    
    -> page\      //站点页面JS（如列表页，首页等）
    
    -> vendor\    //外部库
    
    -> main.js    //所有JS的入口
    
  -> less\
  
    -> activity\ //活动相关样式
    
    -> modules\ //模块相关样式
    
    -> core.less //全站通用样式
    
    -> func.less //通用函数库
    
    -> var.less //全站通用变量
    
    
views\ //页面资源，待定

build\ //构建目录

gulpfile.js //gulp任务配置

```

####一些约定

1.  在编写LESS的过程中，模块样式和活动样式只需要import *func.less* 函数即可，因为func.less中已经引入了var.less
