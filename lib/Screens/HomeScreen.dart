import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/Screens/TaskContainer.dart';
import 'package:todo_list/Theme/Color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        leading: Icon(
          Icons.menu,
          color: whiteBlue,
        ),
        actions: [
          const Icon(
            Icons.search,
            color: whiteBlue,
          ),
          SizedBox(
            width: 5.w,
          ),
          const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications_none_outlined,
                color: whiteBlue,
              )),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16.0).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
               color: blue,
              child: Column(
                children: [
                  Text("What's up Anime!",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              fontWeight: FontWeight.w700, color: whiteColor)),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TODAY'S TASK",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w400, color: whiteBlue),
                      ),
                      Text(
                        "4 task",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w400, color: whiteBlue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(top: 10),
                      child: TaskContainer(),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: purple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {
          _shoeBottomSheet();
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }

  Future<void> _shoeBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          print(MediaQuery.of(context).viewInsets.bottom);
          return Container(
            height: MediaQuery.of(context).viewInsets.bottom < 200 ? 200.h : 500.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              color: blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Text("Add New Item"),
                TextFormField(),
                TextButton(onPressed: (){}, child: Text("sample"))
              ],
            ),
          );
        });
  }
}

// Container(
// child: SizedBox(
// height: 200,
// child: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// mainAxisSize: MainAxisSize.min,
// children: <Widget>[
// TextFormField(
// decoration: InputDecoration(
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(color: whiteBlue, width: 1.0.r),
// borderRadius: BorderRadius.all(const Radius.circular(9).r)),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(color: whiteBlue, width: 1.0.r),
// borderRadius: BorderRadius.all(const Radius.circular(9).r)),
// ),
// )
// ],
// ),
// ),
// ),
// );
