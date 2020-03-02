import 'package:blog_project/app/modules/home/Post.dart';
import 'package:blog_project/app/modules/home/list_horizontal_image_widget/list_horizontal_image_item_widget/list_horizontal_image_item_widget.dart';
import 'package:blog_project/app/modules/home/list_horizontal_image_widget/list_horizontal_image_widget.dart';
import 'package:blog_project/app/modules/home/menu_widget/menu_item_widget/menu_item_icon_widget.dart';
import 'package:blog_project/app/modules/home/menu_widget/menu_item_widget/menu_item_text_widget.dart';
import 'package:blog_project/app/modules/home/menu_widget/menu_widget.dart';
import 'package:blog_project/app/modules/home/post_list_widget/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final List<Widget> listMenu = <Widget>[
  MenuItemIconWidget(icon: Icons.menu),
  Center(
    child: Container(width: 32.0),
  ),
  MenuItemTextWidget(active: true, texto: "Designe"),
  MenuItemTextWidget(active: false, texto: "Pocess"),
  MenuItemTextWidget(active: false, texto: "Thinking"),
  MenuItemTextWidget(active: false, texto: "Sprint"),
  MenuItemTextWidget(active: false, texto: "Sprint"),
  MenuItemTextWidget(active: false, texto: "Sprint"),
  MenuItemTextWidget(active: false, texto: "Sprint"),
];

final List<Widget> listHorizontalImages = <Widget>[
  ListHorizontalImageItemWidget(
    text: "Cactus",
    image: Image.asset('assets/images/image_rectangle_2.png'),
  ),
  ListHorizontalImageItemWidget(
    text: "Cactus2",
    image: Image.network(
      'https://picsum.photos/250?image=9',
    ),
  ),
  ListHorizontalImageItemWidget(
    text: "Cactus3",
    image: Image.asset('assets/images/image_rectangle_2.png'),
  ),
  ListHorizontalImageItemWidget(
    image: Image.network(
      'https://picsum.photos/250?image=9',
    ),
  ),
];

final List<Post> listPosts = [
  Post(
    image: ImagePost(isAsset: true, src: "assets/images/miniature_post_1.png"),
    title:
        "Let's get acquainted with figma design software popular. Let's get acquainted with figma design software popular in 2020",
    author: "Irfan Kurniawan",
    postedAt: "a few hours ago",
    readingTime: "6 min",
  ),
  Post(
    image: ImagePost(isAsset: true, src: "assets/images/miniature_post_2.png"),
    title: "Let's get acquainted with figma design software popular in 2020",
    author: "Irfan Kurniawan",
    postedAt: "a few hours ago",
    readingTime: "6 min",
  ),
  Post(
    image: ImagePost(isAsset: true, src: "assets/images/miniature_post_3.png"),
    title: "Let's get acquainted with figma design software popular in 2020",
    author: "Irfan Kurniawan",
    postedAt: "a few hours ago",
    readingTime: "6 min",
  ),
  Post(
    image: ImagePost(isAsset: false, src: "https://picsum.photos/250?image=9"),
    title: "Let's get acquainted with figma design software popular in 2020",
    author: "Irfan Kurniawan",
    postedAt: "a few hours ago",
    readingTime: "6 min",
  ),
];

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MenuWidget(listMenu: listMenu),
            Expanded(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    ListHorizontalImageWidget(listItem: listHorizontalImages),
                    PostWidget(listPosts: listPosts)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
