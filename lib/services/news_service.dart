import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final dio = Dio();
  Future<List<ArticlesModel>> getGeneralNews() async {
    try {
      var response = await dio.get(
          "https://newsdata.io/api/1/news?apikey=pub_42955ddc2896b4ece565f2f26776a8ca30a00&category=other&Language=ar");
      Map jsonData = response.data;
      List<dynamic> articles = jsonData["results"];
      List<ArticlesModel> articlesModel = [];
      for (var element in articles) {
        articlesModel.add(ArticlesModel(
            url: element["link"],
            img: element["image_url"] ??
                "https://library.ceu.edu/wp-content/uploads/news-2444778_960_720.jpg",
            title: element["title"],
            subtitle: element["description"] ?? ""));
      }
      // print(articlesModel);

      return articlesModel;
    } catch (e) {
      // TODO
      return [];
    }
  }

  Future<List<ArticlesModel>> getPalestineNews() async {
    try {
      var response = await dio.get(
          "https://newsdata.io/api/1/news?apikey=pub_42955ddc2896b4ece565f2f26776a8ca30a00&q=palestine&Language=ar");
      Map jsonData = response.data;
      List<dynamic> articles = jsonData["results"];
      List<ArticlesModel> articlesModel = [];
      for (var element in articles) {
        articlesModel.add(ArticlesModel(
            url: element["link"],
            img: element["image_url"] ??
                "https://library.ceu.edu/wp-content/uploads/news-2444778_960_720.jpg",
            title: element["title"],
            subtitle: element["description"] ?? ""));
      }
      // print(articlesModel);
      return articlesModel;
    } catch (e) {
      // TODO
      return [];
    }
  }

  Future<List<ArticlesModel>> getTechNews() async {
    try {
      var response = await dio.get(
          "https://newsdata.io/api/1/news?apikey=pub_42955ddc2896b4ece565f2f26776a8ca30a00&category=technology&Language=ar");
      Map jsonData = response.data;
      List<dynamic> articles = jsonData["results"];
      List<ArticlesModel> articlesModel = [];
      for (var element in articles) {
        articlesModel.add(ArticlesModel(
            url: element["link"],
            img: element["image_url"] ??
                "https://library.ceu.edu/wp-content/uploads/news-2444778_960_720.jpg",
            title: element["title"],
            subtitle: element["description"] ?? ""));
      }
      // print(articlesModel);
      return articlesModel;
    } catch (e) {
      // TODO
      return [];
    }
  }

  Future<List<ArticlesModel>> getSportsNews() async {
    try {
      var response = await dio.get(
          "https://newsdata.io/api/1/news?apikey=pub_42955ddc2896b4ece565f2f26776a8ca30a00&category=sports&Language=ar");
      Map jsonData = response.data;
      List<dynamic> articles = jsonData["results"];
      List<ArticlesModel> articlesModel = [];
      for (var element in articles) {
        articlesModel.add(ArticlesModel(
            url: element["link"],
            img: element["image_url"] ??
                "https://library.ceu.edu/wp-content/uploads/news-2444778_960_720.jpg",
            title: element["title"],
            subtitle: element["description"] ?? ""));
      }
      // print(articlesModel);
      return articlesModel;
    } catch (e) {
      // TODO
      return [];
    }
  }

  Future<List<ArticlesModel>> getTopNews() async {
    try {
      var response = await dio.get(
          "https://newsdata.io/api/1/news?apikey=pub_42955ddc2896b4ece565f2f26776a8ca30a00&category=top&Language=ar");
      Map jsonData = response.data;
      List<dynamic> articles = jsonData["results"];
      List<ArticlesModel> articlesModel = [];
      for (var element in articles) {
        articlesModel.add(ArticlesModel(
            url: element["link"],
            img: element["image_url"] ??
                "https://library.ceu.edu/wp-content/uploads/news-2444778_960_720.jpg",
            title: element["title"],
            subtitle: element["description"] ?? ""));
      }
      // print(articlesModel);
      return articlesModel;
    } catch (e) {
      // TODO
      return [];
    }
  }

  Future<List<ArticlesModel>> getEducationNews() async {
    try {
      var response = await dio.get(
          "https://newsdata.io/api/1/news?apikey=pub_42955ddc2896b4ece565f2f26776a8ca30a00&category=education&Language=ar");
      Map jsonData = response.data;
      List<dynamic> articles = jsonData["results"];
      List<ArticlesModel> articlesModel = [];
      for (var element in articles) {
        articlesModel.add(ArticlesModel(
            url: element["link"],
            img: element["image_url"] ??
                "https://library.ceu.edu/wp-content/uploads/news-2444778_960_720.jpg",
            title: element["title"],
            subtitle: element["description"] ?? ""));
      }
      // print(articlesModel);
      return articlesModel;
    } catch (e) {
      // TODO
      return [];
    }
  }

  Future<List<ArticlesModel>> getBusinessNews() async {
    try {
      var response = await dio.get(
          "https://newsdata.io/api/1/news?apikey=pub_42955ddc2896b4ece565f2f26776a8ca30a00&category=business&Language=ar");
      Map jsonData = response.data;
      List<dynamic> articles = jsonData["results"];
      List<ArticlesModel> articlesModel = [];
      for (var element in articles) {
        articlesModel.add(ArticlesModel(
            url: element["link"],
            img: element["image_url"] ??
                "https://library.ceu.edu/wp-content/uploads/news-2444778_960_720.jpg",
            title: element["title"],
            subtitle: element["description"] ?? ""));
      }
      // print(articlesModel);
      return articlesModel;
    } catch (e) {
      // TODO
      return [];
    }
  }
}
