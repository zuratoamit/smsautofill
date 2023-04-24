import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> fnSendSMS(String mobile, String template) async {
  var url = Uri.parse('https://enterprise.smsgupshup.com/GatewayAPI/rest');
  var sendTo = "91$mobile"; // concatenate '91' and the mobile number variable
  var postFields = {
    'method': 'sendMessage',
    'send_to': sendTo,
    'msg': template,
    'msg_type': 'TEXT',
    'userid': '2000215091',
    'password': 'VLWUmMCH',
    'auth_scheme': 'PLAIN',
    'v': '1.1',
    'format': 'JSON',
  };

  var response = await http.post(url, body: postFields);
  if (response.statusCode == 200) {
    var jsonResponse = json.decode(response.body);
    if (jsonResponse['response']['status'] == 'success') {
      return true;
    }
  }
  return false;
}



class MySendOtpByCurl extends StatelessWidget {
  final String mobileNumber = '9631116311';
  final String messageTemplate = '92182 is the OTP for logging in to your Vehicall account. OTP is valid till for 2 mins. Do not share with anyone. - Vehicall';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send SMS'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            bool sent = await fnSendSMS(mobileNumber, messageTemplate);
            if (sent) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Message sent successfully')),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Failed to send message')),
              );
            }
          },
          child: Text('Send SMS'),
        ),
      ),
    );
  }
}
