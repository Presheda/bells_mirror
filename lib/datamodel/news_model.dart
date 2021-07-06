class NewsModel{

  String topic;
  String image;
  String author;
  String documentId;
  int date;

  NewsModel({this.topic, this.image, this.author, this.date, this.documentId});

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return new NewsModel(
      topic: map['topic'] as String,
      image: map['image'] as String,
      author: map['author'] as String,
      date: map['date'] as int,
      documentId: map['documentId'] as String
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'topic': this.topic,
      'image': this.image,
      'author': this.author,
      'date': this.date,
      'documentId' : this.documentId
    } as Map<String, dynamic>;
  }
}