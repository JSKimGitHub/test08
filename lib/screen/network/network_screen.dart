import 'package:flutter/material.dart';
import 'package:test0819/screen/network/member_list_screen.dart';
import 'package:test0819/screen/network/member_register_screen.dart';
import 'package:test0819/screen/network/news_screen.dart';

class NetworkScreen extends StatelessWidget {
  const NetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Network")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MemberListScreen();
                  },
                ),
              );
            },
            child: const Text("회원 목록 조회"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MemberRegisterScreen();
                  },
                ),
              ).then((value) {
                /// value가 null이 아니고
                /// value가 bool 타입이고
                /// value가 true인 경우
                if(value != null && value is bool && value) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("등록 성공")));
                }
              },);
            },
            child: const Text("회원 등록"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NewsScreen();
                  },
                ),
              );
            },
            child: const Text("뉴스 보기"),
          ),
        ],
      ),
    );
  }
}