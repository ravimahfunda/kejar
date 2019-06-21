import 'package:flutter/material.dart';

class KejarCard extends StatelessWidget {
  // This widget is the root of your application.

  VoidCallback onPressed;
  String title;
  String categories;
  String date;
  String organizer;
  Color color;

  KejarCard(this.onPressed, this.title, this.categories, this.date,
      this.organizer, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 24,
            width: 400,
            color: color,
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  Text(categories, style: TextStyle(fontSize: 14),),
                  SizedBox(
                    height: 12,
                  ),
                  Text(date, style: TextStyle(fontSize: 16),),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        child: Text(
                          organizer[0],
                          style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),

                        ),
                        backgroundColor: color,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(organizer, style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
