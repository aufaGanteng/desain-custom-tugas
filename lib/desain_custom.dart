import 'package:flutter/material.dart';

void main() => runApp(BelajarCoding());

class BelajarCoding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi, Aufa",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    backgroundImage: (AssetImage('assets/muka aufa.jpg')), 
                    radius: 30,
                  ),
                ],
              ),
              SizedBox(height: 16),
              
              
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 20),
              
              
              Text(
                "Best Seller",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('assets/basic.jpg'), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              SizedBox(height: 20),
              

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Show all",
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ],
              ),
              
              SizedBox(height: 10),
              
              
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  CourseTile(
                    title: "Basic HTML and CSS",
                    subtitle: "24.4k+ students\n24 modules",
                    price: "IDR 299.000",
                    image: 'assets/basic.jpg', 
                  ),
                  CourseTile(
                    title: "JavaScript",
                    subtitle: "2.5k+ students\n47 modules",
                    price: "IDR 200.000",
                    image: 'assets/JS.png', 
                  ),
                  CourseTile(
                    title: "PHP",
                    subtitle: "2k+ students\n45 modules",
                    price: "IDR 150.000",
                    image: 'assets/php.jpeg', 
                  ),
                  CourseTile(
                    title: "Python",
                    subtitle: "5.4k+ students\n31 modules",
                    price: "IDR 189.000",
                    image: 'assets/download (2).png', 
                  ),
                  CourseTile(
                    title: "Ruby",
                    subtitle: "2 students\n111 modules",
                    price: "IDR 1.990.000",
                    image: 'assets/images.jpeg', 
                  ),
                  CourseTile(
                    title: "Java",
                    subtitle: "999 students\n76 modules",
                    price: "IDR 170.000",
                    image: 'assets/download (3).png', 
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String image;

  CourseTile({required this.title, required this.subtitle, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 60,
            height: 60,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Text(
            price,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}