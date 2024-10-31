import 'package:election_app/src/widgets/home%20wigdets/gas_party_widget.dart';
import 'package:election_app/src/widgets/home%20wigdets/npp_party_widget.dart';
import 'package:election_app/src/widgets/home%20wigdets/other_parties_widget.dart';
import 'package:election_app/src/widgets/home%20wigdets/sb_party_widget.dart';
import 'package:election_app/src/widgets/home%20wigdets/sjb_party_widget.dart';
import 'package:election_app/src/widgets/home%20wigdets/slpp_party_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'General Election 2024',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            NPPPartyWidget(),
            SjbPartyWidget(),
            GasPartyWidget(),
            SlppPartyWidget(),
            SbPartyWidget(),
            OtherPartyWidget(),
          ],
        ),
      ),
    );
  }
}
