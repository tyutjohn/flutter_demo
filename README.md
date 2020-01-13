# flutter_demo
flutter的一个demo,页面仿app store,dart做服务段提供json模拟数据

# 目录结构
```
flutter_client             //客户端(ios,android)
    android                //android配置文件
    assets                 //静态资源文件
    flutter_plugin         //dart第三方库
    ios                    //ios配置文件
    lib                    //入口文件
        conf               //配置文件，端口代理
        model              //数据模型定义文件
        pages              //页面模板(组件)
        services           //服务端配置
        style              //全局样式
        utils              //工具类
        app.dart           //底部导航
        loading.dart       //启动加载模板(组件)
        main.dart          //主入口
        pubspec.yaml       //flutter配置文件
    
flutter_server             //服务server端
    assets                 //静态资源
    data.dart              //模拟数据
    main.dart              //入口文件
    pubspen.yaml           //flutter配置文件
```

# 项目启动
```
1.开启模拟器或者usb连接手机
vscode启动:
    cd flutter_server
    dart main.dart

    cd flutter_client
    flutter run
```

# 关于作者
tyutjohn
邮箱(tyutjohnwang@163.com)
