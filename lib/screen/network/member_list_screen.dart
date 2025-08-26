import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test0819/screen/network/json_model.dart';
class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {

  Dio dio = Dio(BaseOptions(baseUrl: "https://d0a701c36a9e.ngrok-free.app/"));
  Dio dio2 = Dio(BaseOptions(baseUrl: "https://online-lecture-data.s3.ap-northeast-2.amazonaws.com/data.json"));
  //https://online-lecture-data.s3.ap-northeast-2.amazonaws.com/data.json

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("멤버 조회")),
    body: Column(
      children: [
        ElevatedButton(onPressed: (){
          dio.get('api/v1/member/all');
        }, child: Text("Get Data")),

        ElevatedButton(onPressed: () {
          dio2.get("").then((value){
            print(value);
            value.data;
            JsonModel jsonModel = JsonModel(id,number,info);
            });
        }, child: Text("Get Json")),

        ElevatedButton(onPressed: () {
          dio2.get("").then((value){
            print(json);
            value.data;
            JsonModel jsonModel = JsonModel(id,number,info);
          });
        }, child: Text("Get Json"))
      ],
    ));
  }
}
