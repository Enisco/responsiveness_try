import 'package:flutter/material.dart';

class Responsive2 extends StatefulWidget {
  const Responsive2({super.key});

  @override
  State<Responsive2> createState() => _Responsive2State();
}

class _Responsive2State extends State<Responsive2> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // TODO: "Comment"
    // The media query of size is use to calculate both height and width
    print('width: ${screenSize.width}\t height: ${screenSize.height}');
    // To Check screen height and width
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.yellow,
                  height: 20,
                  // TODO: "COMMENT"
                  // this screenSize.width * 0.9 is said to occupied 90% of the screen width
                  width: screenSize.width * 0.8,
                ),
                Icon(
                  Icons.people,
                  size: screenSize.width * 0.1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 205, 201, 169),
                  ),
    
                  height: 61,
                  // TODO: "COMMENT"
                  //Static width with is 122
                  
                  width: 122,
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 183, 177, 131),
                  ),
                  height: 61,
                  // TODO: "COMMENT"
                  // this screenSize.width - 174, the -174 comes from the width of the first item
                  // which is 122 + the sizedBox width + padding, which is equal to 174
                  width: screenSize.width - 174,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
