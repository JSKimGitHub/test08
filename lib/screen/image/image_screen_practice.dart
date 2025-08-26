import 'package:flutter/material.dart';

class ImageScreenPractice extends StatelessWidget {
  const ImageScreenPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image 실습")),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // URL 이미지 (fit: BoxFit.cover)
              const Text("URL", style: TextStyle(fontSize: 20)),
              Container(
                color: Colors.grey[200],
                width: 200,
                height: 200,
                child: Image.network(
                  'https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_responsibility.png',
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 30),

              // Asset 이미지 (fit: BoxFit.fitWidth)
              const Text("Asset", style: TextStyle(fontSize: 20)),
              Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/company_sustainability.png',
                  fit: BoxFit.fitWidth,
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
