import 'package:flutter/material.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';


class NewsListScreen extends StatelessWidget {
  final List<News> newsList = [
    News(
      title: 'В Московском Политехе накануне 8 марта прошел праздничный концерт',
      imageUrl: 'assets/images/img_rectangle_20_279x349.png',
      content: 'Creates a widget that displays an ImageStream obtained from the network.Either the width and height arguments should be specified, or the widget should be placed in a context that sets tight layout '
          'constraints. Otherwise, the image dimensions will change as the image is loaded, which will result in ugly layout changes.',
    ),
    News(
      title: 'Директор Передовой инженерной школы электротранспорта Московского Политеха выступил на Всероссийском фестивале молодежи',
      imageUrl: 'assets/images/img_rectangle_20.png',
      content: 'Creates a widget that displays an ImageStream obtained from the network.Either the width and height arguments should be specified, or the widget should be placed in a context that sets tight layout '
          'constraints. Otherwise, the image dimensions will change as the image is loaded, which will result in ugly layout changes.',
    ),
    // Add more news items here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsDetailScreen(news: newsList[index]),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.only(
                left:13,
                right: 13,
                bottom: 13,
              ),
              child: Container(
                padding: EdgeInsets.all(5.0),
                // height: 250, // увеличиваем высоту карточки
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 430, // устанавливаем ширину изображения
                      height: 200, // устанавливаем высоту изображения
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(newsList[index].imageUrl), // Используем AssetImage для загрузки изображения из assets
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),
                    Text(
                      newsList[index].title,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
  }
}

class News {
  final String title;
  final String imageUrl;
  final String content;

  News({
    required this.title,
    required this.imageUrl,
    required this.content,
  });
}

class NewsDetailScreen extends StatelessWidget {
  final News news;

  NewsDetailScreen({required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Подробнее о новости',style: CustomTextStyles.titleSmallWhiteA700,),
        backgroundColor: appTheme.blueGray800,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              news.title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              news.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              news.content,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}