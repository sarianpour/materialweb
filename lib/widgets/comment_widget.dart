import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:materialweb/widgets/plain_text.dart';
import 'package:materialweb/widgets/raisedButton.dart';
import 'package:materialweb/widgets/title_text.dart';

class CommentWidget extends StatefulWidget {
  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  String tName;
  String tEmail;
  String tDescription;
  CollectionReference users =
      FirebaseFirestore.instance.collection('ContactMessages');
  String snackMessage = 'Please Enter Your Information';
  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
          'name': tName,
          'email': tEmail,
          'description': tDescription,
          'time': getTime(),
        })
        .then((value) => snackMessage = "Message Send Successfully")
        .catchError((error) => snackMessage = "Failed to send Message: $error");
  }

  String getTime() {
    var dateTime = DateTime.now().toUtc();
    return dateTime.toString();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Container(
//        padding:
//            const EdgeInsets.only(left: 70.0, right: 70.0, top: 70, bottom: 70),
        //color: Colors.white,
        child: Column(
      children: [
        Center(
          child: Card(
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: themeData.colorScheme.onSecondary, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            //color: kGrayColorBackground,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  PlainText(
                    text: 'Status',
                  ),
                  TitleText(
                    text: 'Available',
                    color: themeData.colorScheme.onSecondary,
                  ),
                  PlainText(
                    text: 'I’m currently taking on new projects!',
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        mTextField(
          onChanged: (value) {
            tName = value;
            print('value: $value');
          },
          title: 'NAME',
          maxLines: 1,
        ),
        SizedBox(
          height: 30,
        ),
        mTextField(
          onChanged: (value) {
            tEmail = value;
          },
          title: 'EMAIL',
          maxLines: 1,
        ),
        SizedBox(
          height: 30,
        ),
        mTextField(
          onChanged: (value) {
            tDescription = value;
          },
          title: 'HOW CAN I HELP?',
          maxLines: 7,
        ),
        SizedBox(
          height: 30,
        ),
        WidgetRaisedButton(
          //devicesScreenType: DeviceScreenType.desktop,
          text: 'Send Message',
          onPressed: () {
            addUser();
            final snackBar = SnackBar(
              content: Text(snackMessage),
              // backgroundColor: secondaryColor,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        )

//            AddComment(
//              tName: tName,
//              tDescription: tDescription,
//              tEmail: tEmail,
//            )
      ],
    ));
  }
}

class AddComment extends StatefulWidget {
  final String tName;
  final String tEmail;
  final String tDescription;
  AddComment({this.tName, this.tDescription, this.tEmail});

  @override
  _AddCommentState createState() {
    return _AddCommentState();
  }
}

class _AddCommentState extends State<AddComment> {
  String snackMessage = 'Please Enter Your Information';

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection

    return WidgetRaisedButton(
      text: 'Send Message',
      onPressed: () {
        //addUser();
        final snackBar = SnackBar(
          content: Text(snackMessage),
          //  backgroundColor: secondaryColor,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}

//import 'package:responsive_builder/responsive_builder.dart';

class mTextField extends StatelessWidget {
  mTextField({this.title, this.width, this.maxLines, this.onChanged});
  final String title;
  final double width;
  final int maxLines;
  final Function onChanged;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlainText(
            text: title,
          ),
          SizedBox(height: 10),
          TextField(
            onChanged: onChanged,
            maxLines: maxLines,
            decoration: InputDecoration(
              filled: true,
              //fillColor: kGrayColorBackground,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(color: colorScheme.onSecondary),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(color: colorScheme.onSecondary),
              ),
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
