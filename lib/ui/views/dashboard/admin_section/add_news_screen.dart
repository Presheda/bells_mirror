import 'package:bells_mirror/ui/shared/full_screen_dialog_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (model){

      return Scaffold(
        appBar: fullScreenDialogAppBar(title: "Add News"),

        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(

            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 5
            ),
          ),
        ),

      );
    });
  }
}
