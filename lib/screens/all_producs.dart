import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'home_screen.dart';
import 'product_screen.dart';
import 'cart.dart';

class AllProductsScreen extends StatefulWidget {
  const AllProductsScreen({super.key});

  @override
  State<AllProductsScreen> createState() => _AllProductsScreenState();
}

class _AllProductsScreenState extends State<AllProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEEBCA),
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductScreen(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          height: 130,
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Product Name",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Chip(
                                    label: const Text(
                                      "Product Category",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    avatar: const Icon(
                                      Icons.category,
                                      size: 16,
                                    ),
                                    labelPadding: const EdgeInsets.only(
                                      left: 5,
                                      right: 5,
                                    ),
                                    visualDensity: VisualDensity.compact,
                                    backgroundColor: Colors.orangeAccent[100],
                                    elevation: 5,
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "Rs. Product Price",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.red,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Product Discount Price",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  const Text(
                                    "Status: Only 4 left in stock",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: Colors.black,
                        thickness: 1,
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              ],
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
          currentIndex: 1,
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
            } else if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ),
              );
            } else if (index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Cart(),
                ),
              );
            }
          },
          backgroundColor: Color(0xFFFEEBCA),
          type: BottomNavigationBarType.fixed,
        ));
  }
}
