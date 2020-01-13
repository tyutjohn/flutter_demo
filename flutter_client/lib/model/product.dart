class ProductItemModal{
  String desc;//产品描述
  String type;//产品类型
  String name;//产品名称
  String imageUrl;//产品图片
  String point;//产品特点

  ProductItemModal({
    this.desc,
    this.type,
    this.name,
    this.imageUrl,
    this.point
});

  factory ProductItemModal.formJson(dynamic json){
    return ProductItemModal(
      desc: json['desc'],
      type: json['type'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      point: json['point']
    );
  }
}

//产品列表数据转换
class ProductListModal{

  List<ProductItemModal> data;
  ProductListModal(this.data);

  factory ProductListModal.formJson(List json){
    return ProductListModal(
      json.map((i)=>ProductItemModal.formJson((i))).toList()
    );
  }
}