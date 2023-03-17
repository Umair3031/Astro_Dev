import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget{
  const OtpScreen({Key?key}):super(key: key);

  @override
  _OtpScreenState createState()=> _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color(0xffFEEBCA),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top:100, left: 40, right: 40),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                const Text(
                  'OTP',
                  style: TextStyle(
                    fontFamily: 'Italianno',
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Otp",
                        hintStyle: TextStyle(
                          fontFamily: 'tuffy',
                          color: Colors.blueGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16, vertical: 14)),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: (){
                      //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>const HomeScreen()), (route)=>true);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty
                          .all<Color>(Color(0xff4A148C)),
                      shape: MaterialStateProperty
                          .all<
                          RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius
                                .circular(7)
                        ),
                      ),
                    ),
                    child: const Text(
                      "Verify",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: "tuffy",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}