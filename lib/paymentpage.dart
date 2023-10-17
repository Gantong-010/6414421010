import 'package:flutter/material.dart';
import 'homepage.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // QR Code
            Image.asset('lib/images/qr_code.png'),
            // ข้อความ
           const Text(
              'Make Payment',
              style: TextStyle(fontSize: 24),
            ),
            // ปุ่ม
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>const HomePage()));}, //เปลี่ยนได้ว่าจะให้หกลับไปหน้าHomePage
              color:const Color.fromARGB(255, 209, 126, 53),
              child: const Text('Pay'),
            ),
          ],
        ),
      ),
    );
  }
}
