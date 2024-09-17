import 'package:flutter/material.dart';

// Widget utama untuk Bottom Navigation
class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

// State untuk MyBottomNavigation
class _MyBottomNavigationState extends State<MyBottomNavigation> {
  // Menyimpan indeks item yang dipilih di BottomNavigationBar
  int _selectedIndex = 0;

  // Fungsi yang dipanggil ketika salah satu item di BottomNavigationBar ditekan
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Memperbarui indeks yang dipilih
    });
  }

  // Gaya teks untuk nama
  static const TextStyle nameStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  // Gaya teks untuk detail
  static const TextStyle detailStyle = TextStyle(
    fontSize: 18,
  );

  // Fungsi untuk membuat Card dengan isi
  static Widget buildCard(Widget child) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      elevation: 5, // Menambahkan efek bayangan pada Card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Sudut melengkung
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0), // Padding di dalam Card
        child: child,
      ),
    );
  }

  // Daftar widget yang akan ditampilkan di setiap tab
  static final List<Widget> _widgetOptions = <Widget>[
    // Tab Menu Makanan dengan tata letak dua kolom
    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Menggunakan Row untuk membuat dua kolom kiri dan kanan
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Kolom kiri
              Expanded(
                child: Column(
                  children: [
                    // Makanan 1
                    buildCard(Column(
                      children: const [
                        Text('Panada', style: nameStyle),
                        Text('Harga: Rp 20.000', style: detailStyle),
                      ],
                    )),
                    // Makanan 2
                    buildCard(Column(
                      children: const [
                        Text('Ayam Rica-Rica', style: nameStyle),
                        Text('Harga: Rp 60.000', style: detailStyle),
                      ],
                    )),
                    // Makanan 3
                    buildCard(Column(
                      children: const [
                        Text('Bubur Manado', style: nameStyle),
                        Text('Harga: Rp 35.000', style: detailStyle),
                      ],
                    )),
                    // Makanan 4
                    buildCard(Column(
                      children: const [
                        Text('Mi Cakalang', style: nameStyle),
                        Text('Harga: Rp 22.000', style: detailStyle),
                      ],
                    )),
                  ],
                ),
              ),
              const SizedBox(width: 10), // Jarak antara kolom kiri dan kanan
              // Kolom kanan
              Expanded(
                child: Column(
                  children: [
                    // Makanan 5
                    buildCard(Column(
                      children: const [
                        Text('Siobak', style: nameStyle),
                        Text('Harga: Rp 70.000', style: detailStyle),
                      ],
                    )),
                    // Makanan 6
                    buildCard(Column(
                      children: const [
                        Text('Fu Yung Hai ', style: nameStyle),
                        Text('Harga: Rp 45.000', style: detailStyle),
                      ],
                    )),
                    // Makanan 7
                    buildCard(Column(
                      children: const [
                        Text('Lo tu kha ', style: nameStyle),
                        Text('Harga: Rp 45.000', style: detailStyle),
                      ],
                    )),
                    // Makanan 8
                    buildCard(Column(
                      children: const [
                        Text('bak kut teh', style: nameStyle),
                        Text('Harga: Rp 45.000', style: detailStyle),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    // Tab Staf
    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Staf 1
          buildCard(Column(
            children: const [
              Text('Indah Cahya Nabilla', style: nameStyle),
              Text('Tanggal Lahir : 20/03/2001', style: detailStyle),
              Text('Tempat Asal : Jambi', style: detailStyle),
              Text('Bagian : Manajer Toko', style: detailStyle),
            ],
          )),
          // Staf 2
          buildCard(Column(
            children: const [
              Text('Olivia Lim', style: nameStyle),
              Text('Tanggal Lahir : 10/7/2006', style: detailStyle),
              Text('Tempat Asal : Surabaya', style: detailStyle),
              Text('Bagian : Kasir', style: detailStyle),
            ],
          )),
          // Staf 3
          buildCard(Column(
            children: const [
              Text('Faqih Steven Rafif', style: nameStyle),
              Text('Tanggal Lahir : 11/09/2001', style: detailStyle),
              Text('Tempat Asal : Kutai Barat', style: detailStyle),
              Text('Bagian : Staff Gudang', style: detailStyle),
            ],
          )),
          // Staf 4
          buildCard(Column(
            children: const [
              Text('Oline Manuel Chay', style: nameStyle),
              Text('Tanggal Lahir : 03/11/2007', style: detailStyle),
              Text('Tempat Asal : Jakarta', style: detailStyle),
              Text('Bagian : Pelayan Pelanggan', style: detailStyle),
            ],
          )),
          // Staf 5
          buildCard(Column(
            children: const [
              Text('Hanni Pham', style: nameStyle),
              Text('Tanggal Lahir : 06/10/2004', style: detailStyle),
              Text('Tempat Asal : Melbourne', style: detailStyle),
              Text('Bagian : Quality Control', style: detailStyle),
            ],
          )),
          // Staf 6
          buildCard(Column(
            children: const [
              Text('Gilbeth Arisyaldi', style: nameStyle),
              Text('Tanggal Lahir : 29/12/2004', style: detailStyle),
              Text('Tempat Asal : Kutai Barat', style: detailStyle),
              Text('Bagian : Staff Kebersihan', style: detailStyle),
            ],
          )),
        ],
      ),
    ),
    // Tab Owner
    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Owner 1
          buildCard(Column(
            children: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.discordapp.com/attachments/1280127069203730433/1284920467966136423/remix-ae917ece-676d-4d9e-b1e0-d61afcfefc6d.png?ex=66e862f0&is=66e71170&hm=e98577cd8fb00bf47c5c419b846e09df8b9d7e73e78d66f6e6372fb48f0a9d7f&'),
                radius: 50,
              ),
              SizedBox(height: 10), // Jarak antara avatar dan teks
              Text('Rheza Gerard Altama', style: nameStyle),
              Text('NIM : 2209106103', style: detailStyle),
              Text('Tanggal Lahir : 14/06/2004', style: detailStyle),
              Text('Tempat Asal : Tarakan', style: detailStyle),
            ],
          )),
          // Owner 2
          buildCard(Column(
            children: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.discordapp.com/attachments/1280127069203730433/1284780828722855987/Rangga.jpg?ex=66e7e0e3&is=66e68f63&hm=25d33406ee84a89700dec68df24b2457615751e3824544b86a57bda288adaaab&'),
                radius: 50,
              ),
              SizedBox(height: 10), // Jarak antara avatar dan teks
              Text('Rangga Kristiawan', style: nameStyle),
              Text('NIM : 2209106116', style: detailStyle),
              Text('Tanggal Lahir : 27/08/2004', style: detailStyle),
              Text('Tempat Asal : Kutai Barat', style: detailStyle),
            ],
          )),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Toko ChinManad"), // Judul di AppBar
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex), // Menampilkan widget yang sesuai dengan tab yang dipilih
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu), // Ikon untuk tab Menu Makanan
            label: "Menu Makanan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group), // Ikon untuk tab Staf
            label: "Staff",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box), // Ikon untuk tab Owner
            label: "Owner",
          ),
        ],
        currentIndex: _selectedIndex, // Indeks tab yang dipilih
        selectedItemColor: Colors.amber[800], // Warna item yang dipilih
        onTap: _onItemTapped, // Fungsi yang dipanggil ketika item di-klik
      ),
    );
  }
}

// Fungsi main untuk menjalankan aplikasi
void main() {
  runApp(const MaterialApp(
    home: MyBottomNavigation(),
  ));
}
