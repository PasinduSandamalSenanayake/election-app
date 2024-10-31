import 'package:flutter/material.dart';

class SlppPartyVotingWidget extends StatefulWidget {
  const SlppPartyVotingWidget({super.key});

  @override
  State<SlppPartyVotingWidget> createState() => _SlppPartyVotingWidgetState();
}

class _SlppPartyVotingWidgetState extends State<SlppPartyVotingWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xFFC22834),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  PartyLogo(),
                  SizedBox(width: 10),
                  PartyName(),
                  SizedBox(width: 10),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PartySeat(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PartyLogo extends StatelessWidget {
  const PartyLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: const Image(
          image: AssetImage('assets/image/slpp_logo.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class PartyName extends StatelessWidget {
  const PartyName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ශ්‍රී ලංකා පොදුජන පෙරමුණ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Party Leader',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class PartySeat extends StatelessWidget {
  const PartySeat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: const Center(
          child: TextField(
        // text in the center of the box
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Null',
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
