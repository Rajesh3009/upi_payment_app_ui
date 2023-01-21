import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upi_payment_app_ui/widgets/common.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
        GridView.count(
          crossAxisCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            IconTextWidget(
              icon: Icons.send_sharp,
              title: 'Send Money',
            ),
            IconTextWidget(
              icon: Icons.account_balance_rounded,
              title: 'Receive Money',
            ),
            IconTextWidget(
              icon: Icons.currency_rupee_outlined,
              title: 'Check Balance',
            ),
          ],
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
    );
  }
}
