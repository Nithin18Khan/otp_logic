import 'package:flutter/material.dart';
import 'package:otp_field/otp_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //** App Bar **//
      appBar: AppBar(
        centerTitle: true,
        title: const Text("OTP Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Enter OTP to Verify"),
          const SizedBox(
            height: 20,
          ),
          OTPField(
            otpController: controller,
            spaceBetween: 20,
            length: 6,
          )
        ],
      ),

      //** Confirm Button **//
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {
            print("OTP == ${controller.text}");
          },
          child: const Text("Confirm"),
        ),
      ),
    );
  }
}
