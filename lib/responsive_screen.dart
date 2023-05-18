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
                    height: 61,
                  ),
                  SizedBox(
                    width: screenWidth(context) * 0.03,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey.shade100,
                    ),
                    // TODO: "Comment"
                    width: screenWidth(context) * 0.62,
                    height: 61,
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight(context) * 0.03,
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
              ),
              SizedBox(
                height: screenHeight(context) * 0.03,
              ),
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
