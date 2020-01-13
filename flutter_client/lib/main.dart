import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'loading.dart';
import 'app.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title:'Flutter Demo',
    //自定义主题
  theme: mDefaultTheme,
  //添加剂路由
  routes: <String,WidgetBuilder>{
    "app":(BuildContext context) =>App(),
    "company_info":(BuildContext context) => WebviewScaffold(
      url: 'https://www.apple.com/jobs/cn/about.html',
      appBar: AppBar(
        title: Text('关于我们'),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: (){
              //路由到主界面
              Navigator.of(context).pushReplacementNamed('app');
          },
        ),
      ),
    ),
  },
  //指定加载页面
  home: LoadingPage(),

));

//自定义主题
final ThemeData mDefaultTheme= ThemeData(
  primaryColor: Colors.grey[400]
);
