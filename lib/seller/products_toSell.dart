import 'package:flutter/material.dart';

import 'billing.dart';

class ProductToSell extends StatefulWidget {
  const ProductToSell({Key? key}) : super(key: key);

  @override
  State<ProductToSell> createState() => _ProductToSellState();
}

class _ProductToSellState extends State<ProductToSell> {
  @override
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
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Hi Priyanka',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    // borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter product name',
                            // border: InputBorder.none,
                          ),
                        ),
                        SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter category',
                            //  border: InputBorder.none,
                          ),
                        ),
                        SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter tribe',
                            // border: InputBorder.none,
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Billing(),
                              ),
                            );
                          },
                          child: Text('Add Product Details'),
                          style: ElevatedButton.styleFrom(
                            primary: Color(
                                0x9D5146), // Change the button's background color
                            //onPrimary: Colors.white, // Change the button's text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
