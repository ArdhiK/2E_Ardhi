import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:telkom/home.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 300,
          child: Image(image: AssetImage('image/Layer x0020 1.png')),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Text(
            'Silahkan masuk dengan nomor telkomsel kamu',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Text('Nomor HP', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Cth. 08129011xxxx'),
          ),
        ),
        CheckboxListTile(
            value: true,
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
            title: RichText(
                text: TextSpan(text: 'Saya menyetujui', style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: ' syarat',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('klik syarat');
                    }),
              TextSpan(
                text: ',',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                  text: 'ketentuan',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('klik syarat');
                    }),
              TextSpan(
                text: ', dan',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                  text: ' privasi',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('klik syarat');
                    }),
              TextSpan(
                text: ' Telkomsel',
                style: TextStyle(color: Colors.black),
              ),
            ]))),
        Container(
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              Route route = MaterialPageRoute(builder: (context) => pin());
              Navigator.push(context, route);
            },
            child: Text(
              'MASUK',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.grey),
          ),
        ),
        Center(child: Text('Atau masuk menggunakan')),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image(image: AssetImage('image/Vector.png')),
                    Text(
                      ' Facebook',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))), side: MaterialStateProperty.all(BorderSide(color: Colors.blue)))),
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image(image: AssetImage('image/Vector (1).png')),
                    Text(
                      ' Twitter',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))), side: MaterialStateProperty.all(BorderSide(color: Colors.blue)))),
          ],
        )
      ],
    ));
  }
}

class pin extends StatelessWidget {
  const pin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFEC2028),
        ),
        body: ListView(
          children: [
            Container(
              height: 300,
              child: Image(
                image: AssetImage('image/Layer x0020 1 (1).png'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Masukkan kode unik yang kami kirim',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Silahkan periksa SMS kamu dan masukan kode unik yang kami kirimkan ke 081290112333',
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text('Kode Unik', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Cth. 08129011xxxx'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: RichText(
                  text: TextSpan(text: 'Tidak menerima SMS ?', style: TextStyle(color: Colors.black), children: [
                TextSpan(
                    text: ' Kirim ulang',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('klik kirim ulang');
                      })
              ])),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => home());
                  Navigator.push(context, route);
                },
                child: Text(
                  'MASUK',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.grey),
              ),
            ),
          ],
        ));
  }
}
