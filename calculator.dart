

import 'package:calcc/Model/CatFact.dart';
import 'package:flutter/material.dart';

class calci extends StatefulWidget {
  const calci({Key? key}) : super(key: key);

  @override
  State<calci> createState() => _calciState();
}

class _calciState extends State<calci> {
  TextEditingController textController = TextEditingController();
  String firstNum = "";
  String secNum = "";
  bool clicked = false;
  String selOp = "";

  initState()
  {
    var obj = new Catfact("test", 100);
    obj.Display();
  }

  NumClick(String val)
  {
    if (clicked == true) {
      secNum += val;
      textController.text = secNum;
    } else {
      firstNum += val;
      textController.text = firstNum;
    }
    print("First:" + firstNum);
    print("Sec:" + secNum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "CALCULATOR",
            style: TextStyle(color: Colors.greenAccent),
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Icon(
        //       Icons.close_outlined,
        //       color: Colors.red,
        //       size: 30,
        //     ),
        //   )
        // ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // SizedBox(
          //   height: 100,
          // ),
          Container(

            height: 50,
            width: 500,

            child: TextFormField(
              controller: textController,
              style: TextStyle(
                  color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),
              textAlign: TextAlign.end,
              decoration: InputDecoration(),
            ),
          ),
          Container(

            height: 500,
            width: 400,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  firstNum="";
                                  secNum="";
                                  textController.text="";
                                  clicked==false;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.red),
                              child: Text("C")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {

                                String str=textController.text;
                                int len = str.length;
                                firstNum=str.substring(0,len-1);
                                textController.text=firstNum;



                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.red),
                              child: Icon(Icons.backspace_outlined)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {

                                double value=double.parse(textController.text);
                                textController.text=(value/100).toString();
                                firstNum=textController.text;
                                secNum="";
                                clicked==false;
                                selOp="%";

                                // firstNum=(firstNum/100).toString();
                                // firstNum=textController.text;
                                // secNum="";
                                // clicked=false;
                                // selOp = "%";
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.red),
                              child: Text("%")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                clicked = true;
                                textController.text += "/";
                                selOp = "/";
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.red),
                              child: Text("/")),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                NumClick("7");
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.purple),
                              child: Text("7")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                NumClick("8");
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.purple),
                              child: Text("8")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                if (clicked == true) {
                                  secNum += "9";
                                  textController.text =secNum;
                                } else {
                                  firstNum += "9";
                                  textController.text =firstNum;
                                }
                                print("First:" + firstNum);
                                print("Sec:" + secNum);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.purple),
                              child: Text("9")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(
                                      () {
                                    clicked = true;
                                    textController.text += "*";
                                    selOp = "*";
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.red),
                              child: Text("*")),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                if (clicked == true) {
                                  secNum += "4";
                                  textController.text =secNum;
                                } else {
                                  firstNum += "4";
                                  textController.text =firstNum;
                                }

                                print("First:" + firstNum);
                                print("Sec:" + secNum);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.purple),
                              child: Text("4")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                if (clicked == true) {
                                  secNum += "5";
                                  textController.text =secNum;
                                } else {
                                  firstNum += "5";
                                  textController.text =firstNum;
                                }

                                print("First:" + firstNum);
                                print("Sec:" + secNum);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.purple),
                              child: Text("5")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                if (clicked == true) {
                                  secNum += "6";
                                  textController.text =secNum;
                                } else {
                                  firstNum += "6";
                                  textController.text =firstNum;
                                }

                                print("First:" + firstNum);
                                print("Sec:" + secNum);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.purple),
                              child: Text("6")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(
                                      () {
                                    clicked = true;
                                    selOp = "-";
                                    textController.text += "-";
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.red),
                              child: Text("-")),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                if (clicked) {
                                  secNum += "1";
                                  textController.text =secNum;
                                } else {
                                  firstNum += "1";
                                  textController.text =firstNum;
                                }

                                print("First:" + firstNum);
                                print("Sec:" + secNum);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.purple),
                              child: Text("1")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                if (clicked == true) {
                                  secNum += "2";
                                  textController.text =secNum;
                                } else {
                                  firstNum += "2";
                                  textController.text =firstNum;
                                }

                                print("First:" + firstNum);
                                print("Sec:" + secNum);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.purple),
                              child: Text("2")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                if (clicked == true) {
                                  secNum += "3";
                                  textController.text =secNum;
                                } else {
                                  firstNum += "3";
                                  textController.text = firstNum;
                                }

                                print("First:" + firstNum);
                                print("Sec:" + secNum);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.purple),
                              child: Text("3")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(
                                      () {
                                    clicked = true;
                                    textController.text += "+";
                                    selOp = "+";
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.red),
                              child: Text("+")),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                double a=double.parse(textController.text);
                                if(a.isNegative)
                                {
                                  textController.text=a.abs().toString();
                                }
                                else{
                                  textController.text=(a*-1).toString();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.red),
                              child: Text("+/-")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                if (clicked == true) {
                                  secNum += "0";
                                  textController.text =secNum;
                                } else {
                                  firstNum += "0";
                                  textController.text =firstNum;
                                }
                                print("First:" + firstNum);
                                print("Sec:" + secNum);
                                setState(() {
                                  firstNum = "";
                                  secNum = "";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.purple),
                              child: Text("0")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                if (clicked==true) {
                                  secNum = ".";
                                  textController.text =secNum;
                                } else {
                                  firstNum = ".";
                                  textController.text =firstNum;
                                }

                                print("First:" + firstNum);
                                print("Sec:" + secNum);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.purple),
                              child: Text(".")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child:
                          //c
                          ElevatedButton(
                              onPressed: () {
                                double f = double.parse(firstNum);
                                double s = double.parse(secNum);
                                double res = 0;
                                if (selOp == "+") {
                                  res = f + s;
                                } else if (selOp == "-") {
                                  res = f - s;
                                } else if (selOp == "*") {
                                  res = f * s;
                                } else if (selOp == "/") {
                                  res = f / s;
                                }


                                textController.text = res.toString();
                                firstNum = textController.text;
                                clicked = false;
                                secNum = "";
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: CircleBorder()),
                              child: Text(
                                "=",

                              )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class calll extends StatefulWidget {
//   const calll({Key? key}) : super(key: key);
//
//   @override
//   State<calll> createState() => _calllState();
// }
//
// class _calllState extends State<calll> {
//
//
//   TextEditingController txt=TextEditingController();
//   String f1="";
//   String f2="";
//   bool cli=false;
//   String op="";
//
//
//   @override
//
//
//   Widget build(BuildContext context) {
//
//
//
//     return Scaffold(
//       body: Column(
//         children: [
//           TextFormField(
//             controller: txt,
//           ),
//          ElevatedButton(onPressed: (){
//            if(cli)
//              {
//                f2 += "1";
//                txt.text = f2;
//              }
//            else
//              {
//                f1 += "1";
//                txt.text = f1;
//              }
//          }, child: Text("1")),
//           ElevatedButton(onPressed: (){
//
//             if(cli)
//             {
//               f2 += "2";
//               txt.text = f2;
//             }
//             else
//             {
//               f1 += "2";
//               txt.text = f1;
//             }
//           }, child: Text("2")),
//           ElevatedButton(onPressed: (){
//             cli =  true ;
//             txt.text += "+";
//             op = " +";
//           }, child: Text("+")),
//           ElevatedButton(onPressed: (){
//
//
//
//
//             if(op == "+")
//               {
//                 int a = int.parse(f1);
//                 int b = int.parse(f2);
//                 int res = (a+b);
//                 txt.text = res.toString() ;
//
//               }
//           }, child: Text("=")),
//
//         ],
//       ),
//     );
//   }
// }
