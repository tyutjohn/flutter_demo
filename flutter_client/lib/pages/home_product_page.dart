import 'package:flutter/material.dart';
import '../model/product.dart';
import 'product_detail_page.dart';

class HomeProductPage extends StatelessWidget{
  final ProductListModal list;
  HomeProductPage(this.list);


  @override
  Widget build(BuildContext context){

      //设备宽度
      double deviceWidth=MediaQuery.of(context).size.width;

      //背景容器
      return Container(
        width: deviceWidth,
        color: Colors.white,
        padding: EdgeInsets.only(top: 10,bottom: 10,left: 7.5),
        child: _build(context,deviceWidth),
      );
  }

  //返回标题及列表
  Widget _build(BuildContext context,double deviceWidth){
    //Item宽度
    double itemWidth=deviceWidth*168.5/360;
    double imageWidth=deviceWidth*110.0/360;
    //返回产品列表
    List<Widget> listWidgets=list.data.map((i){

      //返回产品项
      return GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>ProductDetail(item:i)),
          );
        },
        child: Container(
          width: itemWidth,
          margin: EdgeInsets.only(bottom: 5,left: 2),
          padding: EdgeInsets.only(top:10,left: 13,bottom: 7),
          color: Color.fromRGBO(249, 249, 249, 0.8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                i.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15,color: Colors.black),
              ),
              Text(
                i.desc,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15,color: Colors.black),
              ),
              Container(
                alignment: Alignment(0,0),
                margin: EdgeInsets.only(top: 5),
                child: Image.asset(
                  i.imageUrl,
                  width: imageWidth,
                  height: imageWidth,
                ),
              )
            ],
          ),
        ),
      );
    }).toList();

    //标题及产品列表
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10,bottom: 10),
          child: Text('最新产品',style: TextStyle(
            fontSize: 16.0,
            color: Color.fromRGBO(244, 139, 81, 1),
          ),),
        ),
        //流式布局列表
        Wrap(
          spacing: 2,
          children: listWidgets,
        ),
      ],
    );
  }
}
