/* import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Wallet Page"),
      ),
    );
  }
}
 */
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import "package:exchange/ui/ui_helper/util/my_button.dart";
import "package:exchange/ui/ui_helper/util/my_card.dart";
import "package:exchange/ui/ui_helper/util/my_list-tile.dart";

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 188, 192),
      body: SafeArea(
        child: Column(children: [
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CoinEx',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 4.0),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.blue,
                    )),
              ],
            ),
          ),
          SizedBox(height: 10),

          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 8950.20,
                  cardNumber: 123456789,
                  expiryMonth: 10,
                  expiryYear: 24,
                  color: Colors.blue,
                ),
                MyCard(
                  balance: 5340.20,
                  cardNumber: 123456789,
                  expiryMonth: 12,
                  expiryYear: 23,
                  color: Colors.red,
                ),
                MyCard(
                  balance: 3330.20,
                  cardNumber: 123456789,
                  expiryMonth: 12,
                  expiryYear: 25,
                  color: Colors.green[400],
                ),
              ],
            ),
          ),
          SizedBox(height: 24),

          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade600,
            ),
          ),

          SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  iconImagePath: './images/icons/credit-card.png',
                  buttonText: 'Pay',
                ),
                MyButton(
                  iconImagePath: 'images/icons/save-money.png',
                  buttonText: 'Send',
                ),
                MyButton(
                  iconImagePath: 'images/icons/bill.png',
                  buttonText: 'Bills',
                ),
              ],
            ),
          ),
          SizedBox(height: 0),

          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(children: [
              MyListTile(
                iconImagePath: 'images/icons/transactions.png',
                tileTitle: 'History',
                tileSubtitle: 'Transactions Made',
              ),
              MyListTile(
                iconImagePath: 'images/icons/graph-file.png',
                tileTitle: 'Payments',
                tileSubtitle: 'Statistics on Payment',
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
