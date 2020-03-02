class Post {
  ImagePost image;
  String title;
  String author;
  String postedAt;
  String readingTime;

  Post({this.image, this.title, this.author, this.postedAt, this.readingTime});
}

class ImagePost {
  bool isAsset;
  String src;

  ImagePost({this.isAsset, this.src});
}
