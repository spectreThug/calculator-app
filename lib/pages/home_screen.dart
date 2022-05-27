import 'package:calc2/pages/result_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: prefer_final_fields
  TextEditingController _dateController = TextEditingController();
  // ignore: prefer_final_fields
  TextEditingController _costController = TextEditingController();
  // ignore: prefer_final_fields
  TextEditingController _salvageController = TextEditingController();
  // ignore: prefer_final_fields
  TextEditingController _lifeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dateController.text = DateTime.now().year.toString();
    _costController.text = 1000.toString();
    _salvageController.text = 1000.toString();
    _lifeController.text = 1.toString();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff0a0e20),
        appBar: AppBar(
          backgroundColor: const Color(0xff0a0e20),
          title: const Text(
            'Economy Calculator',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.teal,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                            size: 50,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Text(
                            'Date',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: TextField(
                              controller: _dateController,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25),
                              showCursor: false,
                              toolbarOptions: const ToolbarOptions(
                                copy: false,
                                cut: false,
                                paste: false,
                                selectAll: false,
                              ),
                              decoration: InputDecoration(
                                focusColor: Colors.white,
                                hoverColor: Colors.white,
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "fbdateadd",
                                onPressed: () {
                                  setState(() {
                                    _dateController.text =
                                        (int.parse(_dateController.text) + 1)
                                            .toString();
                                  });
                                },
                                child: const Icon(Icons.add),
                                backgroundColor: Colors.green,
                                mini: true,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                              FloatingActionButton(
                                heroTag: "fbdateremove",
                                onPressed: () {
                                  setState(
                                    () {
                                      if (int.parse(_dateController.text) - 1 <=
                                          0) {
                                        _dateController.text = "0";
                                      } else {
                                        _dateController.text =
                                            (int.parse(_dateController.text) -
                                                    1)
                                                .toString();
                                      }
                                    },
                                  );
                                },
                                child: const Icon(Icons.remove),
                                backgroundColor: Colors.green,
                                mini: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.teal,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.attach_money,
                            color: Colors.white,
                            size: 50,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Text(
                            'Cost',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: TextField(
                              controller: _costController,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25),
                              showCursor: false,
                              toolbarOptions: const ToolbarOptions(
                                copy: false,
                                cut: false,
                                paste: false,
                                selectAll: false,
                              ),
                              decoration: InputDecoration(
                                focusColor: Colors.white,
                                hoverColor: Colors.white,
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "fbcostadd",
                                onPressed: () {
                                  setState(() {
                                    _costController.text =
                                        (int.parse(_costController.text) + 1000)
                                            .toString();
                                  });
                                },
                                child: const Icon(Icons.add),
                                backgroundColor: Colors.green,
                                mini: true,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                              FloatingActionButton(
                                heroTag: "fbcostremove",
                                onPressed: () {
                                  setState(() {
                                    if (int.parse(_costController.text) -
                                            1000 <=
                                        0) {
                                      _costController.text = "0";
                                    } else {
                                      _costController.text =
                                          (int.parse(_costController.text) -
                                                  1000)
                                              .toString();
                                    }
                                  });
                                },
                                child: const Icon(Icons.remove),
                                backgroundColor: Colors.green,
                                mini: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.teal,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                            size: 50,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Text(
                            'Salvage value',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: TextField(
                              controller: _salvageController,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25),
                              showCursor: false,
                              toolbarOptions: const ToolbarOptions(
                                copy: false,
                                cut: false,
                                paste: false,
                                selectAll: false,
                              ),
                              decoration: InputDecoration(
                                focusColor: Colors.white,
                                hoverColor: Colors.white,
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "fbsalvageadd",
                                onPressed: () {
                                  setState(() {
                                    _salvageController.text =
                                        (int.parse(_salvageController.text) +
                                                1000)
                                            .toString();
                                  });
                                },
                                child: const Icon(Icons.add),
                                backgroundColor: Colors.green,
                                mini: true,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                              FloatingActionButton(
                                heroTag: "fbsalvageremove",
                                onPressed: () {
                                  setState(
                                    () {
                                      if (int.parse(_salvageController.text) -
                                              1000 <=
                                          0) {
                                        _salvageController.text = "0";
                                      } else {
                                        _salvageController.text = (int.parse(
                                                    _salvageController.text) -
                                                1000)
                                            .toString();
                                      }
                                    },
                                  );
                                },
                                child: const Icon(Icons.remove),
                                backgroundColor: Colors.green,
                                mini: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.teal,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.attach_money,
                            color: Colors.white,
                            size: 50,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Text(
                            'Useful life',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: TextField(
                              controller: _lifeController,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25),
                              showCursor: false,
                              toolbarOptions: const ToolbarOptions(
                                copy: false,
                                cut: false,
                                paste: false,
                                selectAll: false,
                              ),
                              decoration: InputDecoration(
                                focusColor: Colors.white,
                                hoverColor: Colors.white,
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "fblifeadd",
                                onPressed: () {
                                  setState(() {
                                    _lifeController.text =
                                        (int.parse(_lifeController.text) + 1)
                                            .toString();
                                  });
                                },
                                child: const Icon(Icons.add),
                                backgroundColor: Colors.green,
                                mini: true,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                              FloatingActionButton(
                                heroTag: "fbliferemove",
                                onPressed: () {
                                  setState(() {
                                    if (int.parse(_lifeController.text) - 1 <=
                                        0) {
                                      _lifeController.text = "0";
                                    } else {
                                      _lifeController.text =
                                          (int.parse(_lifeController.text) - 1)
                                              .toString();
                                    }
                                  });
                                },
                                child: const Icon(Icons.remove),
                                backgroundColor: Colors.green,
                                mini: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.teal,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 30,
                        ),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          _dateController.text,
                          _costController.text,
                          _salvageController.text,
                          int.parse(_lifeController.text) > 100
                              ? "100"
                              : _lifeController.text,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}



//FocusManager.instance.primaryFocus?.unfocus();