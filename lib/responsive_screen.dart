// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness_try/screensize.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Screen'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(screenWidth(context) * 0.05),
        // padding of 0.05 will take 5% of the total screen as padding
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey.shade100,
                    ),
                    width: screenWidth(context) * 0.25,
                    // Screen width 0.25 will take 25% of the total screen width
                    height: 61,
                  ),
                  SizedBox(
                    width: screenWidth(context) * 0.03,
                    // Screen width 0.03 will take 3% of the total screen width
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey.shade100,
                    ),
                    // TODO: "Comment"
                    // Screen width 0.62 will take 62% of the total screen width
                    width: screenWidth(context) * 0.62,
                    // width: screenWidth(context) *(1-0.62)
                    // how to calculate the total screen = screenWidth(context) * (1-0.62)
                    height: 61,
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight(context) * 0.03,
                // Screen width 0.03 will take 3% of the total screen width
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent.shade100,
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/kj.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                width: screenWidth(context) * 0.8,
                height: screenHeight(context) * 0.2,
                // Screen width 0.8 will take 80% of the total screen width
                // Screen height 0.2 will take 20% of the total screen height
              ),
              SizedBox(
                height: screenHeight(context) * 0.03,
              ),
              // TODO: "Comment"
              //The aspect ratio is calculated by dividing the width by the height
              // the widget's width will be adjusted based on its height to maintain the aspect ratio of 5:3
              AspectRatio(
                aspectRatio: 5 / 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent.shade100,
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/kj.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
