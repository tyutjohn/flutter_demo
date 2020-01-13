import 'dart:convert';
import 'dart:io';
import 'data.dart';

main() async {
  var requsetServer=await HttpServer.bind('192.168.0.5', 8080);
  print('http服务启动');

  //处理请求
  await for(HttpRequest request in requsetServer){
    handleMessage(request);
  }

}

void handleMessage(HttpRequest request){

  try{
    if(request.method=='GET'){
      handleGET(request);
    }else if(request.method=='POST'){
      handleGET(request);
    }
  }catch(e){
    print('捕获了一个异常:$e');
  }

}

void handleGET(HttpRequest request){
  // request.response..write('get request success...')..close();

  //请求获取参数
  var action=request.uri.queryParameters['action'];

  if(action=='getProducts'){

    var page=request.uri.queryParameters['page'];
    print(page);

    //print("第$page页数据:"+json.encode(products));

    //print('获取产品数据...');
    request.response
    ..statusCode=HttpStatus.ok
    ..write(json.encode(products))
    ..close();
  }

  else if(action=='getNews'){
    //print('获取新闻数据..');
    request.response
    ..statusCode=HttpStatus.ok
    ..write(json.encode(news))
    ..close();
  }

  else if(action=='contactCompany'){
    var msg=request.uri.queryParameters['msg'];

    //print('客户留言为$msg');
    request.response
    ..statusCode=HttpStatus.ok
    ..write('提交成功:$msg')
    ..close();
  }
}

void handlePOST(HttpRequest request){
  //处理POST请求
}