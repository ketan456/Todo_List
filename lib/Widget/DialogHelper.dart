
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class DialogHelper{

  static  showAlert(BuildContext context,String message){
    showDialog(
        builder: (BuildContext context) {
          return  AlertDialog(
              actionsPadding: const EdgeInsets.only(bottom: 16),
              actionsAlignment: MainAxisAlignment.center,
              content: SizedBox(
                width: 300.w,
                child: Text(message,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
              ),
              actions:[
                TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 48).r,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(12).r,
                        )),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Ok",
                      style: Theme.of(context)
                          .textTheme.labelMedium,
                    )),
              ]
          );
        }, context: context);

  }
  static showLoadingIndicator(BuildContext context){
    return showDialog(context: context, builder: (context) =>   Center(
      child: LoadingAnimationWidget.staggeredDotsWave(
        color: Colors.white,
        size: 50,
      ),
    ),);
  }
  static hideDialogHelper(context){
    Navigator.pop(context);
  }
}