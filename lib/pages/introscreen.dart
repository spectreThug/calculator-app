import 'package:flutter/material.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class IntroScreen extends StatelessWidget {
  final _list = [
    'Ahmed Abdelmoaty',
    'Ahmed Mohamed Saleh',
    'Ahmed Saleh',
    'Ahmed Khaled ahmed',
    'Saad Eldin Mohamed',
    'Ahmed Mohamed Dawood',
    'Ahmed Abdallah abdalhakim',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff0a0e20),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                const Text(
                  'Economy Calculator',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const Text(
                  'Benha University',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  'Faculty of Engineering',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Image.asset(
                  'assets/unv.png',
                  height: MediaQuery.of(context).size.height * 0.20,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const Text(
                  'Dr. Ibrahim Sabry',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const Text(
                  "Developed by :-",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Expanded(
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        childAspectRatio: 3 / 0.7,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 12,
                      ),
                      itemCount: _list.length,
                      itemBuilder: (BuildContext ctx, index) {
                        double innerSize =
                            _list[index].split(" ").length > 2 ? 18 : 20;
                        return Text(
                          ' ${index + 1} - ${_list[index]}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.3,
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal),
                    ),
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/home'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_right_alt),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            )),
      ),
    );
  }
}
