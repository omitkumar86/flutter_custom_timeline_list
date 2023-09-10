import 'package:flutter/material.dart';

class CustomListScreen extends StatefulWidget {
  const CustomListScreen({super.key});

  @override
  State<CustomListScreen> createState() => _CustomListScreenState();
}

class _CustomListScreenState extends State<CustomListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 14,
                              width: 14,
                              decoration: BoxDecoration(shape: BoxShape.circle,
                              color: Colors.green, ),
                            ),
                            SizedBox(width: 15,),
                            Text("Select the service", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 22.5),
                          margin: EdgeInsets.only(left: 7),
                          decoration: BoxDecoration(
                            border: Border(left: BorderSide(width: 1, color: Colors.blueGrey)),
                          ),
                          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.justify,),
                        ),

                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
