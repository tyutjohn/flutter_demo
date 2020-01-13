import 'package:http/http.dart' as http;
import '../conf/configure.dart';

//留言
contactCompany(String msg) async{

  String url='http://'+Config.IP+":"+Config.PORT+'/?action=contactCompany&msg=$msg';

  var res=await http.get(url);
  String body=res.body;

  var info=body;

  return info;
}