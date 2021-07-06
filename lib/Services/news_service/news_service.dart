import 'package:bells_mirror/datamodel/news_model.dart';
import 'package:bells_mirror/utils/test_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class NewsService {
  Stream<List<NewsModel>> listenForNewsService();

  Future<void> addNews({NewsModel news});

  Future<void> deleteNews({String documentId});
}

class NewsServiceFake extends NewsService {
  @override
  Future<void> addNews({NewsModel news}) {}

  @override
  Future<void> deleteNews({String documentId}) {}

  @override
  Stream<List<NewsModel>> listenForNewsService() async* {
    yield TestData.fakeNews();
  }
}

class NewsServiceReal extends NewsService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addNews({NewsModel news}) async {
    await firestore.collection("admin").doc(news.documentId).set(news.toMap());
  }

  @override
  Future<void> deleteNews({String documentId}) async {
    await firestore.collection("admin").doc(documentId).delete();
  }

  @override
  Stream<List<NewsModel>> listenForNewsService() async* {
    yield* firestore
        .collection("admin")
        .snapshots()
        .map((event) => mapData(event.docs));
  }

  List<NewsModel> mapData(List<QueryDocumentSnapshot> docs) {
    List<NewsModel> news = [];

    docs.forEach((element) {
      news.add(NewsModel.fromMap(element.data()));
    });

    return news;
  }
}
