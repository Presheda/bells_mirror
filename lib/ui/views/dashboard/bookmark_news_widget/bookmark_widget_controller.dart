import 'package:bells_mirror/datamodel/news_model.dart';
import 'package:bells_mirror/utils/test_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BookmarkNewsWidgetController extends GetxController {
  TextEditingController editingController = TextEditingController();

  List<NewsModel> newsList = TestData.fakeNews();

  void filterSearch(String value) {
    if (value.isEmpty) {
      newsList = TestData.fakeNews();
      update();
      return;
    }

    newsList = TestData.fakeNews()
        .where((element) =>
            element.topic.toLowerCase().contains(value.toLowerCase()))
        .toList();

    update();
  }
}
