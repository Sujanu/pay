import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepagetState();
}

class _HomepagetState extends State<Homepage> {
  String refrenceId = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("khalti payment")),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                payWithKhaltiInApp();
              },
              child: const Text("Pay with Khalti")),
          Text(refrenceId)
        ],
      )),
    );
  }

  payWithKhaltiInApp() {
    KhaltiScope.of(context).pay(
        config: PaymentConfig(
            amount: 1000,
            productIdentity: "product id ",
            productName: "product Name"),
        preferences: [
          PaymentPreference.khalti,
        ],
        onSuccess: onSuccess,
        onFailure: onFailure,
        onCancel: onCancel);
  }

  void onSuccess(PaymentSuccessModel success) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Payment successful"),
            actions: [
              SimpleDialogOption(
                child: const Text("ok"),
                onPressed: () {
                  setState(() {
                    refrenceId = success.idx;
                  });
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  void onFailure(PaymentFailureModel faliure) {
    debugPrint(faliure.toString());
  }

  void onCancel() {
    debugPrint("cancelled");
  }
}
