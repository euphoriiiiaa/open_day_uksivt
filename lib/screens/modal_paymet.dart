import 'package:flutter/material.dart';
import 'package:open_day_uksivt/widgets/loading_payment.dart';
import 'package:open_day_uksivt/widgets/successful_payment.dart';

class ModalPayment extends StatefulWidget {
  const ModalPayment({super.key});

  @override
  State<ModalPayment> createState() => _ModalPaymentState();
}

bool _isLoading = true;

class _ModalPaymentState extends State<ModalPayment> {
  @override
  void initState() {
    super.initState();
    _isLoading = true;
    getPaymnet();
  }

  Future<void> getPaymnet() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: AnimatedCrossFade(
            firstChild: const LoadingPayment(),
            secondChild: const SuccessfulPayment(),
            crossFadeState: _isLoading ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 200)));
  }
}
