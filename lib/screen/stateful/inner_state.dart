import 'package:flutter/material.dart';

class InnerState extends StatefulWidget {
  const InnerState({required this.count, super.key});

  final int count;

  @override
  State<InnerState> createState() => _InnerStateState();
}

class _InnerStateState extends State<InnerState> {
  @override
  int innerCount =0;
  @override

  //initState는 Stateful 위젯이 생성될 때 한번만 호출함
  void initState() {
    // TODO: implement initState
    super.initState();
    innerCount = widget.count;
  }
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(innerCount.toString()),
        ElevatedButton(
          onPressed: () {
            innerCount++;
            setState(() {});
          },
          child: Text("Inner count up"),
        ),
      ],
    );
  }
}