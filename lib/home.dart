import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEC2028),
        elevation: 0,
        centerTitle: false,
        title: RichText(
            text: TextSpan(text: 'Hai, ', style: TextStyle(fontSize: 18, color: Colors.white), children: [
          TextSpan(text: 'Ardhi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white))
        ])),
        actions: [
          Container(margin: EdgeInsets.only(right: 20), width: 30, height: 30, child: Icon(Icons.qr_code))
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: 400,
            height: 180,
            child: Image(image: AssetImage('image/Background Header.png'), fit: BoxFit.fill),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  height: 330,
                  child: Column(
                    children: [
                      ClipPath(
                        clipper: ClipInfo(),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          height: 230,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0xFFE52027),
                            Color(0XFF831217)
                          ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '0812908112333',
                                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  Image.asset('image/SimPATI_Logo 1.png'),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Sisa Pulsa Anda',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rp 14.000',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Isi Pulsa',
                                      style: TextStyle(color: Colors.black, fontSize: 16),
                                    ),
                                    style: ElevatedButton.styleFrom(primary: Color(0xFFF78731)),
                                  )
                                ],
                              ),
                              SizedBox(height: 5),
                              Divider(
                                color: Colors.black,
                              ),
                              SizedBox(height: 5),
                              RichText(
                                text: TextSpan(
                                    text: 'Berlaku sampai ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(text: '19 April 2020', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold))
                                    ]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Telkomsel POIN  ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(color: Color(0xFFF78731), borderRadius: BorderRadius.circular(10)),
                                    child: Text(
                                      '172',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            StatusCard(
                              title: 'internet',
                              data: '12.19',
                              satuan: 'GB',
                            ),
                            StatusCard(
                              title: 'Telpon',
                              data: '0',
                              satuan: 'Min',
                            ),
                            StatusCard(
                              title: 'SMS',
                              data: '23',
                              satuan: 'SMS',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 7,
                  color: Colors.grey[400],
                ),
                Expanded(
                    child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Kategori Paket',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ItemKategori(title: 'Internet', ikon: 'image/Group 1.png'),
                        ItemKategori(title: 'Telpon', ikon: 'image/Group 16.png'),
                        ItemKategori(title: 'Sms', ikon: 'image/Group 17.png'),
                        ItemKategori(title: 'Roaming', ikon: 'image/Group 18.png'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ItemKategori(title: 'Hiburan', ikon: 'image/Group 20.png'),
                        ItemKategori(title: 'Unggulan', ikon: 'image/Group 19.png'),
                        ItemKategori(title: 'Tersimpan', ikon: 'image/Group 21.png'),
                        ItemKategori(title: 'Riwayat', ikon: 'image/Group 106.png'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Terbaru dari Telkomsel',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          'Lihat semua',
                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          itembaru(
                            item: 'image/Group 22.png',
                          ),
                          itembaru(
                            item: 'image/Group 22.png',
                          ),
                          itembaru(
                            item: 'image/Group 22.png',
                          ),
                          itembaru(
                            item: 'image/Group 22.png',
                          )
                        ],
                      ),
                    )
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class itembaru extends StatelessWidget {
  const itembaru({Key? key, required this.item}) : super(key: key);

  final String item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 200,
      height: 75,
      child: Image.asset(
        item,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.title,
    required this.ikon,
  }) : super(key: key);

  final String title;
  final String ikon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.all(10),
            width: 50,
            height: 50,
            child: Image.asset(
              ikon,
              fit: BoxFit.fill,
            )),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 110,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            RichText(
                text: TextSpan(text: data, style: TextStyle(color: Colors.red, fontSize: 22, fontWeight: FontWeight.bold), children: [
              TextSpan(text: ' $satuan', style: TextStyle(color: Color(0xFF74708C), fontSize: 16))
            ]))
          ],
        ),
      ),
    );
  }
}

class ClipInfo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 100, size.height);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
