import 'package:flutter/material.dart';

class Billing extends StatefulWidget {
  const Billing({Key? key}) : super(key: key);

  @override
  State<Billing> createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  @override
  dynamic v;
  dynamic u;
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xFFFEEBCA),
            appBar: AppBar(
              backgroundColor: Color(0x9D5146),
              toolbarHeight: 70,
              title: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "I'm shopping for...",
                    hintStyle: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.only(
                        left: 20, right: 20, top: 15, bottom: 10),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ),
            drawer: Drawer(
              child: ListView(children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                  ),
                  child: Center(
                    child: Text(
                      "Tribal Trove",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ]),
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'Checkout',
                )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Align(
                      child: Text(
                        'Billing Details',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
                Container(
                    height: 500,
                    width: 500,
                    decoration: new BoxDecoration(color: Color(0xD9D9D9)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          TextField(
                            decoration:
                                InputDecoration(labelText: "First Name"),
                          ),
                          TextField(
                            decoration: InputDecoration(labelText: "Last Name"),
                          ),
                          TextField(
                            decoration: InputDecoration(labelText: "Address"),
                          ),
                          TextField(
                            decoration:
                                InputDecoration(labelText: "Phone Number"),
                          ),
                          TextField(
                            decoration:
                                InputDecoration(labelText: "Email Address"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text('Payment Method')),
                          Column(
                            children: [
                              RadioListTile(
                                  title: Text('PayUMoney'),
                                  value: "PayUmoney",
                                  groupValue: v,
                                  onChanged: (val) {
                                    setState(() {
                                      v = val.toString();
                                    });
                                  }),
                              RadioListTile(
                                  title: Text('Cash On Delivery'),
                                  value: "PayUmoney",
                                  groupValue: u,
                                  onChanged: (val) {
                                    setState(() {
                                      u = val.toString();
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            )));
  }
}
