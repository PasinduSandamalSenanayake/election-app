import 'package:election_app/src/widgets/voting%20widgets/npp_party_voting_widget.dart';
import 'package:election_app/src/widgets/voting%20widgets/sjb_party_voting_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/voting widgets/gas_party_voting_widget.dart';
import '../widgets/voting widgets/other_party_voting_widget.dart';
import '../widgets/voting widgets/sb_party_voting_widget.dart';
import '../widgets/voting widgets/slpp_party_voting_widget.dart';

class VotingPage extends StatefulWidget {
  const VotingPage({super.key});

  @override
  State<VotingPage> createState() => _VotingPageState();
}

class _VotingPageState extends State<VotingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'General Election 2024 - Voting',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      // vertical scroll view
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NppPartyVotingWidget(),
              SjbPartyVotingWidget(),
              GasPartyVotingWidget(),
              SlppPartyVotingWidget(),
              SbPartyVotingWidget(),
              OtherPartyVotingWidget()
            ],
          ),
        ),
      ),
    );
  }
}
