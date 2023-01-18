import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        primary: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// A Text widget with a text of 'Dashboard' and a style of fontWeight: FontWeight.bold,
                /// fontSize: 18, color: Color(0xFF1E1F4A).
                const Text(
                  'Dashboard',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF1E1F4A),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.shade100,
                        offset: const Offset(
                          3.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: const Icon(
                    Icons.approval,
                    size: 34,
                  ),
                )
              ],
            ),
          ),

          //* hello
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: const Center(
                child: Text(
                  'Hello',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          //* check balance and send payment
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                IconTextWidget(
                  icon: Icons.send_sharp,
                  title: 'Send Money',
                ),
                SizedBox(width: 5),
                IconTextWidget(
                  icon: Icons.account_balance_rounded,
                  title: 'Receive Money',
                ),
              ],
            ),
          ),

          //* Services Section
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Services',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            // height: 500,
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              children: const [
                ServiceListItem(),
                ServiceListItem(),
                ServiceListItem(),
                ServiceListItem(),
                ServiceListItem(),
                ServiceListItem(),
                ServiceListItem(),
                ServiceListItem(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.groups_rounded),
            label: 'Peoples',
          ),
          NavigationDestination(
            icon: Icon(Icons.history_rounded),
            label: 'History',
          ),
        ],
      ),
    );
  }
}

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.blue[100]),
            const SizedBox(height: 5),
            Text(
              title,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceListItem extends StatelessWidget {
  const ServiceListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.grey,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.account_balance),
              Text("Service"),
            ],
          ),
        ),
      ),
    );
  }
}
