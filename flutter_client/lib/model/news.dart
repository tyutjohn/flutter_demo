//新闻模型定义
class NewsItemModal{
  String author;//作者
  String title;//标题
  String content;//内容
  NewsItemModal({
    this.author,
    this.title,
    this.content
  });

  factory NewsItemModal.formJson(dynamic json){
    return NewsItemModal(
        author: json['author'],
        title: json['title'],
        content: json['content']
    );
  }
}

//新闻列表数据转换
class NewsListModal{

  List<NewsItemModal> data;
  NewsListModal(this.data);

  factory NewsListModal.formJson(List json){
    return NewsListModal(
        json.map((i)=>NewsItemModal.formJson((i))).toList()
    );
  }
}