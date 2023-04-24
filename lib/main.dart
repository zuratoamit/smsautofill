import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smsautofill/send_message_by_curl.dart';
import 'package:smsautofill/send_otp.dart';

void main() {
  runApp(const MyApp());
    // Random random = Random();
    // int randomNumber = random.nextInt(90000) + 10000; // generate a random 5-digit number
    // String messageTemplate =
    //     '$randomNumber is the OTP for logging in to your Vehicall account. OTP is valid till for 2 mins. Do not share with anyone. - Vehicall';
    // print(messageTemplate); // prints something like "67890 is the OTP for logging in to your Vehicall account. OTP is valid till for 2 mins. Do not share with anyone. - Vehicall"
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SendOTPScreen(),
      // home: MySendOtpByCurl(),
    );
  }
}

