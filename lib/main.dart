import 'package:blog/controller/login.dart';
import 'package:blog/controller/postPage.dart';
import 'package:blog/views/aboutPage.dart';
import 'package:blog/views/basePage.dart';
import 'package:blog/views/contactPage.dart';
import 'package:blog/views/myBlogPage.dart';
import 'package:blog/views/postBlogPage.dart';
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
      //home: HomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => BasePage(
              child: HomePage(),
            ),
        '/login': (_) => BasePage(child: LoginPage()),
        '/about': (_) => BasePage(child: Aboutpage()),
        '/contact': (_) => BasePage(child: Contactpage()),
        '/myblog': (_) => BasePage(child: Myblogpage()),
        '/postblog': (_) => BasePage(child: Postblogpage()),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: const Text(
                'RECENT POST',
                style: TextStyle(fontSize: 18, letterSpacing: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
