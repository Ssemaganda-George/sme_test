import 'package:flutter/material.dart';
import 'package:charify/screens/welcome_screen.dart';
import 'package:charify/screens/exportsScreens.dart';
import 'package:charify/components/reusable_card.dart';
import 'package:charify/utils/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
        leading: Container(),
        actions: [
          TextButton(
            onPressed: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Return to Welcome Screen'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Yes'),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()),
                          );
                        },
                      ),
                      TextButton(
                        child: Text('No'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  "Start Charifying",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
              ),
              PairOfCards(
                leftCard: ReusableCard(
                  time: 1,
                  image: 'assets/images/edu.jpg',
                  nextChild: EducationPage(),
                ),
                rightCard: ReusableCard(
                  time: 2,
                  image: 'assets/images/blood.jpg',
                  nextChild: Health(),
                ),
              ),
              PairOfCards(
                leftCard: ReusableCard(
                  time: 3,
                  image: 'assets/images/food.jpg',
                  nextChild: EHelp(),
                ),
                rightCard: ReusableCard(
                  time: 4,
                  image: 'assets/images/clothes1.jpg',
                  nextChild: Clothes(),
                ),
              ),
              PairOfCards(
                leftCard: ReusableCard(
                  time: 5,
                  image: 'assets/images/wash.jpg',
                  nextChild: Article(),
                ),
                rightCard: ReusableCard(
                  time: 6,
                  image: 'assets/images/senior.jpg',
                  nextChild: SeniorPage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PairOfCards extends StatelessWidget {
  final Widget leftCard;
  final Widget rightCard;

  PairOfCards({required this.leftCard, required this.rightCard});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          leftCard,
          rightCard,
        ],
      ),
    );
  }
}
