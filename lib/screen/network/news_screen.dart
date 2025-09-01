import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  // 임시 뉴스 데이터 (실제로는 API에서 받아올 데이터)
  final List<Map<String, String>> newsList = List.generate(
    10,
    (index) => {
      'title': '뉴스 제목 ${index + 1} - 이것은 뉴스의 제목입니다. 긴 제목도 잘 표시되어야 합니다.',
      'summary': '뉴스 요약 ${index + 1} - 이것은 뉴스의 요약 내용입니다. 두 줄까지 표시되며 긴 내용도 잘 처리됩니다.',
      'publisher': '언론사 ${index + 1}',
      'date': '2024-01-${(index % 28) + 1}',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('뉴스'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 10, // 임시로 10개
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final news = newsList[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 이미지 대신 Container (회색)
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.image,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 16), // 간격
                  
                  // 텍스트 정보들
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 제목 (굵게, 1줄)
                        Text(
                          news['title']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        
                        const SizedBox(height: 8), // 간격
                        
                        // 요약 (2줄)
                        Text(
                          news['summary']!,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        
                        const SizedBox(height: 12), // 간격
                        
                        // 언론사 이름
                        Text(
                          news['publisher']!,
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        
                        const SizedBox(height: 4), // 간격
                        
                        // 날짜
                        Text(
                          news['date']!,
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
