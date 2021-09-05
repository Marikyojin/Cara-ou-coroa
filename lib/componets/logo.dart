import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317,
      color: Color(0xFFB32B18),
      child: Column(
      //  mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("images/heads_google.png",
              height: 75,
              ),
              Text("CARA",
              style: TextStyle(
                fontSize: 75,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFE3E3E3),
              ),
              ),
            ],
          ),
            ),
          Text("ou",
          style: TextStyle(
                fontSize: 65,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFE3E3E3),
              ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
               Text("CAROA",
              style: TextStyle(
                fontSize: 75,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFE3E3E3),
              ),
              ),
              Image.asset("images/tails_google.png",
              height: 75,
              ),
            ],
          ),
            )
        ],
      ),
    );
  }
}