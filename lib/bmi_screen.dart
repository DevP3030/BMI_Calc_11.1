import 'package:flutter/material.dart';

class BMIAppScreen extends StatefulWidget {
  const BMIAppScreen({super.key});

  @override
  State<BMIAppScreen> createState() => _BMIAppScreenState();
}

class _BMIAppScreenState extends State<BMIAppScreen> {
  double bmi=0;
  Color bmiColor=Color(0xff000000);
   String result = "";
  int _age = 30;
  bool _gender = true;
  double _sliderValue = 120;
  int _w = 66;
  String _bmiStr = "Waiting for Result Tap on get BMI";

  Color selectGender() {
    if (_gender) {
      return Color(0xffA9A9A9);
    } else {
      return Color(0xffA9A9A9);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff404040),
      appBar: AppBar(
        backgroundColor: Color(0xff222222),
        centerTitle: false,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _gender = false;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.47,
                    decoration: BoxDecoration(
                        color: _gender ? Color(0xff707070) : selectGender(),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Center(
                      child: Text(
                        "Female",
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _gender = true;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: _gender ? selectGender() : Color(0xff707070),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Center(
                      child: Text(
                        "Male",
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.11,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  color: Color(0xff707070),
                  borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                children: [
                  Text(
                    "Height ${_sliderValue.toStringAsFixed(1)}",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Slider(
                    value: _sliderValue,
                    onChanged: (value) {
                      _sliderValue.toStringAsFixed(1);
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                    max: 250,
                    min: 50,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      color: Color(0xff707070),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: [
                      Text(
                        "Weight $_w",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (_w > 0) {
                                  _w++;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xff808080),
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Icon(
                                Icons.arrow_upward_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (_w > 0) {
                                  _w--;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xff808080),
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      color: Color(0xff707070),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Column(
                    children: [
                      Text(
                        "Age $_age",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (_age > 0) {
                                  _age++;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xff808080),
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Icon(
                                Icons.arrow_upward_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (_age > 0) {
                                  _age--;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xff808080),
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _bmiStr ="";
                      _age = 30;
                      _gender = true;
                      _sliderValue = 120;
                      _w = 66;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.47,
                    decoration: BoxDecoration(
                        color: Color(0xff707070),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Center(
                      child: Text(
                        "Clear",
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      double h =_sliderValue/100;
                      bmi=_w/(h*h);
                      _bmiStr ="\nyour BMI is ${bmi.toStringAsFixed(1)}";

                      if(bmi<18.5)
                      {
                        result="UnderWeight";
                        bmiColor=Color(0xff53C9F7);
                      }
                      else if(bmi<24.9)
                      {
                        result="Normal weight";
                        bmiColor=Color(0xff97CD17);
                      }
                      else if(bmi<29.9)
                      {
                        result="Pre-obesity";
                        bmiColor=Color(0xffFEDA00);
                      }
                      else if(bmi<34.9)
                      {
                        result="Obesity class I";
                        bmiColor=Color(0xffF8931F);
                      }
                      else if(bmi<39.9)
                      {
                        result="Obesity class II";
                        bmiColor=Color(0xffFF0000);
                      }
                      else if(bmi>39.9)
                      {
                        result="Obesity class III";
                        bmiColor=Color(0xffEE0000);
                      }
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Color(0xff4CBB17),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Center(
                      child: Text(
                        "Get BMI",
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  color: Color(0xff707070),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _bmiStr,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Center(
                    child: Text(
                      result,
                      style: TextStyle(
                          fontSize: 39,
                          fontWeight: FontWeight.w700,
                          color: bmiColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
