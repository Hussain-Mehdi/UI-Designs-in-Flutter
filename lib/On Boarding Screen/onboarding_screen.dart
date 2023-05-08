import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  OnboardingScreen(this.image, this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          const Spacer(),
          Image(
            image: AssetImage(image),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Text(subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Spacer()
        ],
      ),
    );
  }
}

class onboarding extends StatefulWidget {
  const onboarding({
    super.key,
  });

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void deactivate() {
    _pageController.dispose();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(children: [
        Expanded(
          child: PageView.builder(
            itemCount: 3,
            controller: _pageController,
            itemBuilder: (context, index) => OnboardingScreen(
              onboardList[index].image,
              onboardList[index].title,
              onboardList[index].subtitle,
            ),
          ),
        ),
        SizedBox(
          height: 60,
          width: 60,
          child: ElevatedButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: Duration(milliseconds: 500), curve: Curves.ease);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff6c63ff), shape: CircleBorder()),
              child: const Icon(Icons.arrow_forward)),
        ),
      ])),
    );
  }
}

class onboard {
  String title;
  String subtitle;
  String image;

  onboard(this.image, this.title, this.subtitle);
}

List<onboard> onboardList = [
  onboard('./images/onboarding/1.png', "Explore",
      "Travel around the word.Visit the dream place and enjoy your life.Travel around the word.Visit the dream place and enjoy your life.Travel around the word.Visit the dream place and enjoy your life."),
  onboard('./images/onboarding/2.png', "Travel",
      "Travelling the world is a great way to see different cultures and experience new things. There are many different ways to travel, and each has its own set of benefits and regulations. You can explore the world by plane, train, bus, or boat. Or you can take a walk or bike ride from city to city."),
  onboard('./images/onboarding/3.png', "Shopping",
      "Shopping refers to any time that a customer browses products or services from one or more sellers, with the intention of buying something."),
];
