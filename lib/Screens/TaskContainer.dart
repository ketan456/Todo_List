import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/Theme/Color.dart';

class TaskContainer extends StatefulWidget {
   TaskContainer({super.key, required this.item});
  String item;
  @override
  State<TaskContainer> createState() => _TaskContainerState();
}

class _TaskContainerState extends State<TaskContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,

      child: ListTile(
        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        tileColor:darkBlue,
        leading: Icon(Icons.check_box,color: purple,),
        title:  Text(widget.item,style: Theme.of(context).textTheme.labelLarge?.copyWith(color: whiteColor)),
        trailing: Icon(Icons.menu,color: whiteBlue,),
      ),
    );
  }
}
