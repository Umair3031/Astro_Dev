import 'package:flutter/material.dart';
import 'package:tribal_trove/screens/checkout.dart';
import 'all_producs.dart';
import 'home_screen.dart';
import 'checkout.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  var counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff9D5146),
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
          child: ListView(
            children: [
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
              ),
              ListTile(
                title: const Text("Home"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("All Products"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProductsScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("Categories"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProductsScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("Cart"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProductsScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("My Orders"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProductsScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("My Account"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProductsScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("About Us"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProductsScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("Contact Us"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProductsScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: Container(
          alignment: Alignment.centerLeft,
          color: Color(0xffFEEBCA),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      " Cart",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "  Unique Id : xxxxxxxxxxxxxx",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              " Product",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Text(
                              " Quantity",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Icon(
                                    Icons.image,
                                    size: 30,
                                    color: Colors.brown,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Product name",
                                  style: TextStyle(
                                    fontFamily: 'tuffy',
                                  ),
                                ),
                                Text(
                                  "Strore: XYZ store",
                                  style: TextStyle(
                                    fontFamily: 'tuffy',
                                  ),
                                ),
                                Text(
                                  "Price : 2000",
                                  style: TextStyle(
                                    fontFamily: 'tuffy',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                              color: Colors.grey[200],
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 40,
                                    width: 40,
                                    margin: const EdgeInsets.only(right: 10),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.remove,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (counter > 1) {
                                            counter--;
                                          }
                                        });
                                      },
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    counter.toString(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    margin: const EdgeInsets.only(left: 10),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        size: 20,
                                      ),
                                      color: Colors.black,
                                      onPressed: () {
                                        setState(() {
                                          counter++;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        alignment: Alignment.center,
                        child: Text(
                          "Coupon",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text("Subtotal"),
                            SizedBox(
                              width: 150,
                            ),
                            Text("Rs 2000"),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text("Product name"),
                            SizedBox(
                              width: 115,
                            ),
                            Text("Rs 2000"),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text("Delivery Charges"),
                            SizedBox(
                              width: 115,
                            ),
                            Text("Free"),
                          ],
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Billing(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      height: 50,
                      width: 450,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.widgets_outlined,
                size: 40,
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 40,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 40,
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          onTap: (index) {
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            } else if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AllProductsScreen(),
                ),
              );
            } else if (index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ),
              );
            }
          },
          backgroundColor: Color(0xFFFEEBCA),
          type: BottomNavigationBarType.fixed,
        ));
  }
}
