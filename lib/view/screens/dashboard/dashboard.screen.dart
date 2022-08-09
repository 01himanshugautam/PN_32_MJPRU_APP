// ignore_for_file: avoid_print

import 'package:app/data/repository/data.repository.dart';
import 'package:app/view/basewidget/custom-buttom.widget.dart';
import 'package:app/view/basewidget/custom-text-field.widget.dart';
import 'package:flutter/material.dart';
import 'package:app/utils/constants/colors.constant.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final TextEditingController _roomId = TextEditingController();
  final TextEditingController _message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var text2 = "Add";
    return Scaffold(
      backgroundColor: AppColors.backgroundColor2,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'App',
                style: TextStyle(
                  fontSize: 5.h,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomTextField(
                hintText: 'Enter Room Id',
                backgroundColor: AppColors.whiteColor,
                width: 70.w,
              ),
              CustomButtom(
                text: "text2",
                width: 50.w,
                fontSize: 3.h,
                onPressed: () {
                  Map<String, dynamic> data = {
                    "category": "book,notes,paper",
                    "department": "csit",
                    "id": 123,
                    "name": "dsfsd",
                    "semester": 1,
                    "type": "image",
                    "url":
                        "file:///C:/Users/usar/Desktop/All%20Semester%20Syllabus.pdf"
                  };
                  DataRepository().storeData(data);
                },
              ),
              // StreamBuilder(
              //   stream: socket.onevent(),
              //   builder: (BuildContext context, AsyncSnapshot snapshot) {
              //     return Container(
              //       child: Text('data'),
              //     );
              //   },
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
