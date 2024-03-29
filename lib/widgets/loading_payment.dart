import 'package:flutter/material.dart';

class LoadingPayment extends StatefulWidget {
  const LoadingPayment({super.key});

  @override
  State<LoadingPayment> createState() => _LoadingPaymentState();
}

class _LoadingPaymentState extends State<LoadingPayment> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: Colors.black,
    ));
  }
}