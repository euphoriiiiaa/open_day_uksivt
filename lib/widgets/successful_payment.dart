import 'package:flutter/material.dart';

class SuccessfulPayment extends StatefulWidget {
  const SuccessfulPayment({super.key});

  @override
  State<SuccessfulPayment> createState() => _SuccessfulPaymentState();
}

class _SuccessfulPaymentState extends State<SuccessfulPayment> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Успешно куплено!',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            'Спасибо за то, что выбрали нас!',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ],
      ),
    );
  }
}