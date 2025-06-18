import 'package:blog/controller/postPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyBlogApp());
}

class MyBlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group Blog',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Late',
      ),
      //home: LoginPage(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> posts = [
    {
      'title': 'Buổi gặp mặt đầu năm',
      'date': '01/01/2025',
      'image': 'https://via.placeholder.com/400x200',
    },
    {
      'title': 'Dã ngoại cuối tuần',
      'date': '15/03/2025',
      'image': 'https://via.placeholder.com/400x200',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.grey[500],
        actions: [
          TextButton(
              onPressed: () {
                print('go to home page');
              },
              child: const Text('Home', style: TextStyle(color: Colors.white))),
          TextButton(
              onPressed: () {
                print('go to about page');
              },
              child:
                  const Text('About', style: TextStyle(color: Colors.white))),
          TextButton(
              onPressed: () {
                print('go to my blog page');
              },
              child:
                  const Text('My Blog', style: TextStyle(color: Colors.white))),
          TextButton(
              onPressed: () {
                print('go to contact page');
              },
              child:
                  const Text('Contact', style: TextStyle(color: Colors.white))),
          IconButton(
              onPressed: () {
                print('facebook button clicked');
              },
              icon: const Icon(Icons.facebook)),
          IconButton(
              onPressed: () {
                print('camera button clicked');
              },
              icon: const Icon(Icons.camera_alt)),
          IconButton(
              onPressed: () {
                print('share button clicked');
              },
              icon: const Icon(Icons.share)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              child: const Column(
                children: [
                  Text(
                    'HỌ NÓI TÔI "HẠT NHÀI", TÔI THẤY HỌ NÓI ĐÚNG.',
                    style: TextStyle(fontSize: 14, letterSpacing: 2),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '80',
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                      Text(
                        'chơi',
                        style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                      Text(
                        ' / ',
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                      Text(
                        '20',
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                      Text(
                        'học',
                        style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: const Text(
                'FEATURED POST',
                style: TextStyle(fontSize: 18, letterSpacing: 2),
              ),
            ),
            Postpage(),
            const SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: posts.map((post) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(post['image']!),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          post['title']!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(post['date']!),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
