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

  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

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
      body: SingleChildScrollView(
        child: Container(
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
                                fontWeight: FontWeight.w700,
                                color: whiteColor)),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TODAY'S TASK",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: whiteBlue),
                        ),
                        Text(
                          "4 task",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: whiteBlue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return Dismissible(
                         key: Key(item),
                        onDismissed: (direction) {
                          // Remove the item from the data source.
                          setState(() {
                            items.removeAt(index);
                          });
                          // Then show a snackbar.
                        },
                        background: Container(
                            margin: EdgeInsets.only(top: 10),
                            color: Colors.red),
                        child: Container(
                          padding: EdgeInsets.only(top: 10),
                          child: TaskContainer(item: item,),
                        ),
                      );
                    }),
              )
            ],
          ),
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
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            // height: MediaQuery.of(context).viewInsets.bottom < 200 ? 200.h : 500.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              color: blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Add New Item",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w500, color: whiteBlue),
                ),
                Container(
                 padding: EdgeInsets.symmetric(horizontal: 18,vertical: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                      filled: true,
                      fillColor: whiteColor,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: whiteColor)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: whiteColor,width: 3)
                      ),
                      hintText: "New Item"
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 50,
                  margin: EdgeInsets.only(bottom: 16).r,
                  child: TextButton(
                    style: TextButton.styleFrom(

                      backgroundColor: whiteBlue,
                       shape:  RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(4), // <-- Radius
                       ),
                    ),
                    onPressed: () {},
                    child: Text("Add",style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: whiteColor, fontWeight: FontWeight.w500),),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
