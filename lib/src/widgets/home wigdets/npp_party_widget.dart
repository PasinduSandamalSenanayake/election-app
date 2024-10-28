import 'package:flutter/material.dart';

class NPPPartyWidget extends StatefulWidget {
  const NPPPartyWidget({super.key});

  @override
  State<NPPPartyWidget> createState() => _NPPPartyWidgetState();
}

class _NPPPartyWidgetState extends State<NPPPartyWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xFFBE3580),
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
              PartySeat(),
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
          image: AssetImage('assets/image/npp1.webp'),
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
          'ජාතික ජන බලවේගය',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
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
    return const Text(
      '120',
      style: TextStyle(
        color: Colors.black,
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
