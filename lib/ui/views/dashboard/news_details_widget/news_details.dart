import 'package:bells_mirror/datamodel/news_model.dart';
import 'package:bells_mirror/ui/shared/full_screen_dialog_appbar.dart';
import 'package:bells_mirror/ui/shared/info_snackbar.dart';
import 'package:bells_mirror/ui/views/dashboard/breaking_news_widget/breaking_widget_controller.dart';
import 'package:bells_mirror/ui/views/dashboard/search_widget/search_widget_controller.dart';
import 'package:bells_mirror/utils/constant_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class NewsDetails extends StatelessWidget {

  final String details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
      " Donec eu lacus justo. Donec vitae odio sem. In lacinia risus mauris. Quisque bibendum euismod leo, "
      "sed pharetra ex rhoncus a. Nunc suscipit pellentesque tellus, vel tincidunt tortor dapibus eget. "
      "Cras ultricies luctus semper. Nulla in ligula arcu. Proin dictum massa ligula, "
      "sed vehicula lacus mattis sed. Sed vestibulum tellus eu turpis euismod bibendum.";



  @override
  Widget build(BuildContext context) {

          return Scaffold(
            appBar: fullScreenDialogAppBar(title: ""),
            body: Stack(
              children: [

                Container(
                  height: Get.height,
                ),

                Positioned(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: Get.height/2,

                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft:  Radius.circular(20)
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Constant.lectureFree),
                      )
                    ),

                  ),
                ),

                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: Get.height/3.5 - (20),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft:  Radius.circular(30)
                        ),
                      ),

                      child:SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                                top: 20,
                                right: 20
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text("Lecture free week", style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 23,
                                          fontWeight: FontWeight.w500
                                        ),),
                                      ),


                                      Row(
                                        children: [
                                          IconButton(icon: Icon(Icons.share), onPressed: (){
                                            Get.bottomSheet(
                                              Container(
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(15),
                                                    topRight: Radius.circular(15),
                                                  )
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [

                                                    SizedBox(
                                                      height: 15,
                                                    ),

                                                    Center(
                                                      child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(Constant.shareNews)
                                                          )
                                                        ),
                                                      ),
                                                    ),


                                                    Center(
                                                      child: Text("Share news", style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 17,
                                                        fontWeight: FontWeight.w500
                                                      ),),
                                                    ),

                                                    SizedBox(
                                                      height: 15,
                                                    ),

                                                    Padding(
                                                      padding: const EdgeInsets.only(
                                                        left: 20,
                                                        right: 20
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 70,
                                                            height: 70,
                                                            decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              color: Color(0xffEEEEEE),
                                                            ),
                                                            child: Padding(
                                                              padding: EdgeInsets.all(15),
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                     image: DecorationImage(
                                                                    fit: BoxFit.contain,
                                                                    image: AssetImage(Constant.linkIcon)
                                                                )
                                                                ),
                                                              ),
                                                            ),
                                                          ),


                                                          Container(
                                                            width: 70,
                                                            height: 70,
                                                            decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              color: Color(0xffEEEEEE),
                                                            ),
                                                            child: Padding(
                                                              padding: EdgeInsets.all(15),
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        fit: BoxFit.contain,
                                                                        image: AssetImage(Constant.facebookIcon)
                                                                    )
                                                                ),
                                                              ),
                                                            ),
                                                          ),


                                                          Container(
                                                            width: 70,
                                                            height: 70,
                                                            decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              color: Color(0xffEEEEEE),
                                                            ),
                                                            child: Padding(
                                                              padding: EdgeInsets.all(15),
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        fit: BoxFit.contain,
                                                                        image: AssetImage(Constant.whatsappIcon)
                                                                    )
                                                                ),
                                                              ),
                                                            ),
                                                          ),

                                                          Container(
                                                            width: 70,
                                                            height: 70,
                                                            decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              color: Color(0xffEEEEEE),
                                                            ),
                                                            child: Padding(
                                                              padding: EdgeInsets.all(15),
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        fit: BoxFit.contain,
                                                                        image: AssetImage(Constant.gmailIcon)
                                                                    )
                                                                ),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              )
                                            );

                                          }),

                                          SizedBox(
                                            width: 10,
                                          ),
                                          IconButton(icon: Icon(Icons.bookmark), onPressed: (){
                                            showInfoSnackBar(message: "Bookmark clicked");
                                          })
                                        ],
                                      ),



                                    ],
                                  ),


                                  Text("by the Dean", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic
                                  ),),


                                  SizedBox(
                                    height: 5,
                                  ),

                                  Text("2:22 PM", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal
                                  ),),


                                  SizedBox(
                                    height: 15,
                                  ),


                                  Text(details),


                                ],
                              ),
                            ),



                            Container(
                              height: Get.height * 0.35,
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (c, index) {
                                  return _breakingNewsWidget();
                                },
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ),





              ],
            ),
          );

  }



  Widget _breakingNewsWidget() {
    var data = NewsModel(
        topic: "Update on Busa dinner", author: "admin", date: 1625573454566);


    String date = "4 hours ago";

    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 20, top: 15, left: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: Get.width * 0.65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Constant.lectureFree))),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            data.topic,
            style: TextStyle(
                fontSize: 19, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            date,
            style: TextStyle(
                fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "By ${data.author}",
            style: TextStyle(
                fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _newsWidget({int index, BreakingNewsWidgetController model}) {


    var newsData = model.newsList[index];

    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 15
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Get.width*0.4,
            height: Get.height * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Constant.lectureFree),
              )
            ),
          ),

          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text( newsData.topic, style : TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            )),
          )


        ],
      ),
    );

  }
}
