import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _Splashviewstate createState() => _Splashviewstate();
}

class _Splashviewstate extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    // _offsetAnimation = Tween<Offset>(
    //   begin: Offset.zero,
    //   end: Offset(0.0, -1.0),
    // ).animate(CurvedAnimation(
    //   parent: _controller,
    //   curve: Curves.easeInOut,
    // ));

    Future.delayed(Duration(seconds: 5), () {
      // Navigate to the search page after the animation
      Navigator.of(context).pushReplacementNamed('/MyHomePage');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          Image.asset('assets/images/internshala_ss_below.png', width: 150),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              child: Image.asset('assets/images/internshala_ss_logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
