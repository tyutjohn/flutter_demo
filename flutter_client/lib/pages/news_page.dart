import 'package:flutter/material.dart';
import '../model/news.dart';
import '../services/news.dart';
import 'news_detail_page.dart';

//新闻页面
class NewsPage extends StatefulWidget {
  @override
  NewsPageState createState() => NewsPageState();
}

class NewsPageState extends State<NewsPage> {
  NewsListModal listData = NewsListModal([]);

  int page = 0;

  //获取新闻列表数据
  void getNewsList() async {
    var data = await getNewsResult();
    NewsListModal list = NewsListModal.formJson(data);

    setState(() {
      listData.data.addAll(list.data);
    });
  }

  @override
  void initState() {
    getNewsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //带分割线的list
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        //分割线构造器
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 1.0,
          color: Colors.grey,
        ),
        itemCount: listData.data.length,
        //列表项构造器
        itemBuilder: (BuildContext context, int index) {
          //新闻列表项数据
          NewsItemModal item = listData.data[index];

          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.content),
            leading: Icon(Icons.fiber_new),
            trailing: Icon(Icons.arrow_forward),
            contentPadding: EdgeInsets.all(10.0),
            enabled: true,
            //跳转新闻详情页面
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>NewsDetailPage(item:item)
                )
              );
            },
          );
        },
      ),
    );
  }
}
