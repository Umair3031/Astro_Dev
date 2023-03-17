import 'package:flutter/material.dart';
import 'products_toSell.dart';
import 'billing.dart';

class HomeScreenSeller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dropdown Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFEEBCA),
        appBar: AppBar(
          title: Text('Dropdown Demo'),
          backgroundColor: Color(0x9D5146),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildDropDown(
                  "Product to sell", ["Product 1", "Product 2", "Product 3"]),
              buildDropDown(
                  "Shipping Charges", ["Option 1", "Option 2", "Option 3"]),
              buildDropDown(
                  "Bank Account Details", ["Option 1", "Option 2", "Option 3"]),
              buildDropDown(
                  "Enter Tax Details", ["Option 1", "Option 2", "Option 3"]),
              buildDropDown(
                  "Verify Tax Details", ["Option 1", "Option 2", "Option 3"]),
              buildDropDown(
                  "Default GST Rate", ["Option 1", "Option 2", "Option 3"]),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color(0x9D5146), // Change the button's background color
                    //onPrimary: Colors.white, // Change the button's text color
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductToSell()),
                    );
                  },
                  child: Text("Launch Your Business"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDropDown(String label, List<String> items) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: DropdownButton<String>(
        isExpanded: true,
        hint: Text(label),
        items: items.map((String item) {
          return new DropdownMenuItem<String>(
            value: item,
            child: new Text(item),
          );
        }).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
