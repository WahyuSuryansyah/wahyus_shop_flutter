Nama : Mochammad Wahyu Suryansyah
NPM  : 2206083142
Kelas: PBP E
Kode Asdos: LKS

Tugas 8
(Dengan Bonus: Halaman baru lihat item produk)

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

    - Navigator.push()
        Metode ini digunakan untuk menambahkan halaman baru ke tumpukan navigasi di mana halaman baru ditambahkan ke atas tumpukan navigasi, dan pengguna dapat kembali ke halaman sebelumnya dengan tombol kembali.

    Contoh penggunaan Navigator.push():

    import 'package:flutter/material.dart';

    class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text('Home Page'),
        ),
        body: Center(
            child: ElevatedButton(
            onPressed: () {
                // Navigasi ke halaman baru
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
                );
            },
            child: Text('Go to Second Page'),
            ),
        ),
        );
    }
    }

    class SecondPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text('Second Page'),
        ),
        body: Center(
            child: Text('This is the second page.'),
        ),
        );
    }
    }

    void main() {
    runApp(MaterialApp(
        home: HomePage(),
    ));
    }


    - Navigator.pushReplacement()
        Metode ini juga menambahkan halaman baru ke tumpukan navigasi, tetapi dengan menggantikan halaman saat ini di tumpukandi mana halaman saat ini akan diganti dengan halaman baru dan menghapus halaman saat ini dari tumpukan navigasi.

    Contoh penggunaan Navigator.pushReplacement():

    import 'package:flutter/material.dart';

    class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text('Home Page'),
        ),
        body: Center(
            child: ElevatedButton(
            onPressed: () {
                // Navigasi ke halaman baru dan menggantikan halaman saat ini
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
                );
            },
            child: Text('Go to Second Page (replace)'),
            ),
        ),
        );
    }
    }

    class SecondPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text('Second Page'),
        ),
        body: Center(
            child: Text('This is the second page.'),
        ),
        );
    }
    }

    void main() {
    runApp(MaterialApp(
        home: HomePage(),
    ));
    }

    
2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

    - Container
    Container digunakan untuk mengatur tata letak dan dekorasi dari suatu widget atau sekelompok widget. Ini dapat mengandung widget lain dan memberikan kontrol terhadap properti seperti padding, margin, dan warna latar.
    
    Container(
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text('Hello, Flutter!'),
    )

    - Row dan Column
    Row digunakan untuk mengatur widget secara horizontal, sedangkan Column digunakan untuk mengatur widget secara vertikal. Kedua widget ini membantu dalam mengatur tata letak untuk sejumlah widget yang ingin ditampilkan dalam satu arah.
    
    Row(
    children: [
        Icon(Icons.star),
        Text('5 Stars'),
    ],
    )

    Column(
    children: [
        Text('First Item'),
        Text('Second Item'),
    ],
    )

    - ListView
    ListView digunakan untuk menampilkan daftar widget yang dapat di-scroll. Ini berguna ketika Anda memiliki sejumlah besar data atau daftar item yang ingin ditampilkan dalam satu scrollable view.
    
    ListView(
    children: [
        ListTile(
        title: Text('Item 1'),
        ),
        ListTile(
        title: Text('Item 2'),
        ),
        // ...
    ],
    )

    - Stack
    Stack digunakan untuk menumpuk widget di atas satu sama lain. Ini memungkinkan penempatan widget secara bebas satu di atas yang lain, seringkali digunakan untuk menggabungkan beberapa widget dalam satu tata letak.
   
    Stack(
    children: [
        Image.network('https://example.com/image.jpg'),
        Positioned(
        bottom: 10.0,
        right: 10.0,
        child: Text('Overlay Text'),
        ),
    ],
    )

    - Expanded dan Flexible
    Expanded dan Flexible digunakan untuk mengatur bagaimana ruang tersedia dibagi di antara widget-child dalam Row atau Column. Mereka membantu dalam memberikan fleksibilitas dalam tata letak dan memungkinkan widget untuk mengisi ruang yang tersedia dengan proporsi yang didefinisikan.
    
    Row(
    children: [
        Expanded(
        child: Container(color: Colors.red),
        ),
        Expanded(
        child: Container(color: Colors.green),
        ),
        // ...
    ],
    )

    - GridView
    GridView digunakan untuk menampilkan daftar widget dalam susunan dua dimensi. Ini sangat berguna ketika Anda memiliki sejumlah besar data dan ingin menampilkannya dalam grid.

    GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
    ),
    itemBuilder: (context, index) {
        return Card(
        child: Image.network('https://example.com/image-$index.jpg'),
        );
    },
    )

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

    Pada tugas ini digunakan Textdformfield unutk nama, harga, jumlah, dan deskripsi. Input tersebut berupa string untuk nama dan deskripsi dan integer untuk harga dan jumlah di mana setelah user memasukkan mengetik sesuatu pada labekl input maka selnajutnya akan dilakukukan validasi. Input tersbeut digunakan untuk memudahkan user dalam mengisi form tersebut.

4. Bagaimana penerapan clean architecture pada aplikasi Flutter?

    - Domain Layer
        lapisan inti dari aplikasi yang berisi aturan bisnis, entitas, dan objek nilai. Define model entitas, objek nilai, dan aturan bisnis di dalam direktori domain. Jangan menyertakan kode yang terkait dengan Flutter di dalamnya.

    - Data Layer
        Lapisan ini bertanggung jawab untuk mengambil dan menyimpan data. Ini dapat mencakup implementasi repositori dan sumber data eksternal seperti API atau database. Buat repositori dan sumber data di dalam direktori data. Implementasikan sumber data eksternal, misalnya API client, di dalam direktori data/source.

    - Presentation Layer (Flutter UI)
        lapisan yang menangani tampilan dan antarmuka pengguna. Lapisan ini harus menjadi yang paling luar dan hanya mengandung logika yang berhubungan dengan tampilan. Gunakan direktori presentation atau ui untuk menyimpan widget, halaman, dan tampilan. Implementasikan logika tampilan di dalam widget/widget tree.

    - Application Layer
        Lapisan ini bertindak sebagai jembatan antara lapisan domain dan data. Ini berisi logika penggunaan kasus atau interaksi antara lapisan domain dan data. Buat kelas atau fungsi yang berfungsi sebagai penghubung antara tampilan dan lapisan domain, di dalam direktori application atau usecase.

    - Dependency Rule:
        Prinsip ini menyatakan bahwa arah ketergantungan harus selalu menuju ke dalam, dari lapisan yang lebih luar ke dalam yang lebih dalam. Artinya, lapisan presentasi tidak boleh bergantung pada lapisan data atau domain, dan seterusnya.
        Pastikan dependensi mengikuti aturan arah yang benar, dengan lapisan presentasi berada di paling luar dan lapisan data berada di paling dalam.

    Contoh struktur proyek Flutter dengan penerapan Clean Architecture:
        lib/
        |-- application/
        |   |-- usecase.dart
        |
        |-- data/
        |   |-- repository.dart
        |   |-- source/
        |       |-- remote_data_source.dart
        |
        |-- domain/
        |   |-- model/
        |       |-- entity.dart
        |       |-- value_object.dart
        |
        |-- presentation/
        |   |-- pages/
        |       |-- home_page.dart
        |   |-- widgets/
        |       |-- product_list_widget.dart
        |
        |-- main.dart


5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

    checklist 1. Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:

    - Pada folder lib buatlah file dengan nama itemlist_form.dart

        1. Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.

        Pertama, kita perlu menginisiasi variabel-variabel tersebut sesuai dengan jenisnya masing-masing dengan kode sebagai berikut.

            class _InventoryFormPageState extends State<InventoryFormPage> {
                final _formKey = GlobalKey<FormState>();
                String _name = "";
                int _amount = 0;
                String _description = "";
                String _price = 0;
                
        Lalu, Kita child berupa textfromfield untuk menerima input tersebut.
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Nama Item",
                            labelText: "Nama Item",
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        onChanged: (String? value) {
                            setState(() {
                            _name = value!;
                            });
                        },
                       
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Jumlah",
                            labelText: "Jumlah",
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        onChanged: (String? value) {
                            setState(() {
                            _amount = int.parse(value!);
                            });
                        },
                      
                        
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Deskripsi",
                            labelText: "Deskripsi",
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        onChanged: (String? value) {
                            setState(() {
                            _description = value!;
                            });
                        },
                    
          
        2. Memiliki sebuah tombol Save.
            Lalu buatlah sebuah child dari Column. Bungkus tombol ke widget Padding dan Align. Berikut kodenya:
            Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.indigo),
                ),
                onPressed: () {
                    if (_formKey.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (context) {
                        return AlertDialog(
                            title: const Text('Item berhasil tersimpan'),
                            content: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                Text('Nama: $_name'),
                                Text('Jumlah: $_amount'),
                                Text('Deskripsi: $_description'),
                                Text('Rarity: $_rarity'),
                                ],
                            ),
                            ),
                            actions: [
                            TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                Navigator.pop(context);
                                },
                            ),
                            ],
                        );
                        },
                    );
                    _formKey.currentState!.reset();
                    }
                },
                child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                ),
                ),
            ),
            ),

        3. Setiap elemen input di formulir juga harus divalidasi 

            Buat kode untuk melakukan validasi input agar tidak bisa kosong dan sesuai denhgan jenisnya masing-masing.
                validator: (String? value) {
                if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong!";
                }
                return null;
                },

                validator: (String? value) {
                if (value == null || value.isEmpty) {
                    return "Jumlah tidak boleh kosong!";
                }
                if (int.tryParse(value) == null) {
                    return "Jumlah harus berupa angka!";
                }
                return null;
                },

    Checklist 2. Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.

        Pada card yang terdapat pada halaman utama saya menambahkan Navigator untuk push page InventoryFormPage ke stack. Berikut kodenya:
        if (item.name == "Tambah Item") {
        Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const InventoryFormPage(),
        ));
        }`

    Checklist 3. Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.

        Tambahkan fungsi showDialog() pada bagian onPressed() dan munculkan widget AlertDialog pada fungsi tersebut. Pada widget tambahkan child berupa widget Column yang berisi children dengan widget Text untuk menampilkan data-data yang sesuai. Kemudian, tambahkan juga fungsi untuk reset form. Berikut kodenya:
        onPressed: () {
            if (_formKey.currentState!.validate()) {
            showDialog(
                context: context,
                builder: (context) {
                return AlertDialog(
                    title: const Text('Item berhasil tersimpan'),
                    content: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                        Text('Nama: $_name'),
                        Text('Jumlah: $_amount'),
                        Text('Deskripsi: $_description'),
                        Text('Rarity: $_rarity'),
                        ],
                    ),
                    ),
                    actions: [
                    TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                        Navigator.pop(context);
                        },
                    ),
                    ],
                );
                },
            );
            _formKey.currentState!.reset();
            }
        },

    Checklist 4. Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
        Pada folder lib buatlah folder widgets yang bernama left_drawer.dart. Lalu tambahkan kode berikut:
        import 'package:flutter/material.dart';
        import 'package:inventory_flutter/screens/itemlist_form.dart';
        import 'package:inventory_flutter/screens/menu.dart';


        class LeftDrawer extends StatelessWidget {
        const LeftDrawer({super.key});

        @override
        Widget build(BuildContext context) {
            return Drawer(
            child: ListView(
                children: [
                const DrawerHeader(
                    decoration: BoxDecoration(
                    color: Colors.indigo,
                    ),
                    child: Column(
                    children: [
                        Text(
                        'Inventory management ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                        ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Catat seluruh keperluan di sini!",
                                style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white
                            ),
                            ),
                    ],
                    ),
                ),
                ListTile(
                    leading: const Icon(Icons.home_outlined),
                    title: const Text('Halaman Utama'),
                    // Bagian redirection ke MyHomePage
                    onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                        ));
                    },
                ),
                ListTile(
                    leading: const Icon(Icons.add_shopping_cart),
                    title: const Text('Tambah Item'),
                    // Bagian redirection ke ItemFormPage
                    onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InventoryFormPage(),
                        ));
                    },
                ),
                ],
            ),
            );
        }
        }

        1. Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.
            Saya menambahkan ListView berisi ListTile yang dimana disini akan digunakan untuk menampilkan secara berurut opsi untuk ke Halaman Utama dan Tambah Item. Berikut kodenya di dalam ListView:
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Halaman Utama'),
                // Bagian redirection ke MyHomePage
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                    ));
                },
            ),
            ListTile(
                leading: const Icon(Icons.add_shopping_cart),
                title: const Text('Tambah Item'),
                // Bagian redirection ke ItemFormPage
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InventoryFormPage(),
                    ));
                },
            ),

        2. Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.

            Pada widget ListTile 'Halaman Utama' saya menambahkan Navigator.pushReplacement didalam fungsi onTap yang berarti saat ditekan akan menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan route ke Halaman Utama. Berikut kodenya:
            onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                builder: (context) => MyHomePage(),
                ));
            },

        3. Ketika memiih opsi (Tambah Item), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.
            Pada widget ListTile 'Tambah Item' saya menambahkan Navigator.pushReplacement didalam fungsi onTap yang berarti saat ditekan akan menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan route ke form tambah item baru. Berikut kodenya:
            onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const InventoryFormPage(),
                ));
            },



TUGAS 7 
(Dengan Bonus: Warna berbeda pada setiap tombol)

1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

    - StatelessWidget
    Stateless widget tidak memiliki keadaan internal (state) yang berubah. Hal ini dikarenakan stateless widget dibuat satu kali saat widget dirender pertama kali dan tampilan UI yang dihasilkan tidak dapat berubah setelahnya sehingga cocok untuk tampilan statis atau perubagan yang perlu diperbarui berdasarkan event dari user.

    - StatefulWidget
    StatefulWidget memiliki keadaan internal (state) yang dapat berubah selama waktu. Hal ini dikarenakan StatefulWidget dapat merespons perubahan data atau interaksi pengguna, dan tampilan UI dapat diperbarui sesuai dengan perubahan tersebut sehingga cocok untuk tampilan dinmais atau yang memerlukan pembaruan saat data berubah atau tindakan pengguna terjadi.

2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

    - MyHomePage (StatelessWidget)
    Widget utama dengan menggunakan ListView dan GridView untuk tata letak tampilan yang mewakili halaman utama aplikasi yang mencakup AppBar dan daftar item toko.

    - Scaffold
    Struktur dasar yang digunakan untuk membangun tampilan aplikasi dengan AppBar dan body.
    
    - AppBar
    Menampilkan judul aplikasi di bagian atas layar.
   
    - SingleChildScrollView
    Mengatur konten tampilan agar dapat discroll jika kontennya lebih besar dari layar.
   
    - Padding
    Menambahkan jarak (padding) di sekitar tampilan anaknya.
    
    - Column
    Mengatur tampilan anaknya secara vertikal.
    
    - Text
    Menampilkan teks "Gadget Store" sebagai judul toko.
    
    - GridView.count
    Mengatur tampilan item toko dalam bentuk grid dengan jumlah kolom yang telah ditentukan.

    - ShopItem
    Kelas model yang mewakili item toko yang berisi informasi tentang nama item, ikon, dan warna latar belakang.
    
    - ShopCard
    Menampilkan setiap item toko. Widget ini menggunakan InkWell untuk membuat area yang responsif terhadap sentuhan dan material untuk memberikan warna latar belakang sesuai dengan item.   

3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

    Checklist 1. Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.

        Pertama, kita perlu melakukan instalasi fluter dan android studio. Lalu generate proyek flutter baru dengan perintah flutter create <APP_NAME> dan masuk ke dalam direktori tersebut. Selanjutnya, kita perlu membuat file menu.dart dan melakukan modifikasi pada menu.dart serta main.dart yang sudah ada dari awal. Tidak lupa kita juga perlu untuk merapikan struktur proyek.

    Checklist 2. Membuat tiga tombol sederhana dengan ikon dan teks.

         Untuk membuat tiga tombol kita perlu melakukan modifikasi pada file main.dart dengan mengubah kode pada main.dart untuk mengubah sifat widget halaman menu menjadi stateless. Lakukan jug hal yang sama pada menu.dart dengan melakukan perubahan pada bagian ({super.key, required this.title}) menjadi ({Key? key}) : super(key: key);. Dilanjutkan dengan menambahkan teks dan card untuk memperlihatkan barang yang dijual. Untuk menambahkan teks dan card, kita perku memulai dengan define tipe pada list kamu seperti berikutL:

            class ShopItem {
            final String name;
            final IconData icon;

            ShopItem(this.name, this.icon);
            }

        Lalu dibawah kode MyHomePage({Key? key}) : super(key: key);, kita perlu menambahkan barang-barang yang dijual (nama, harga, dan icon barang tersebut).

            final List<ShopItem> items = [
                ShopItem("Lihat Produk", Icons.checklist),
                ShopItem("Tambah Produk", Icons.add_shopping_cart),
                ShopItem("Logout", Icons.logout),
            ];

        Selanjutnya menambahkan kode di bawah ini didalam Widget build.

        return Scaffold(
            appBar: AppBar(
                title: const Text(
                'Shopping List',
                ),
            ),
            body: SingleChildScrollView(
                // Widget wrapper yang dapat discroll
                child: Padding(
                padding: const EdgeInsets.all(10.0), // Set padding dari halaman
                child: Column(
                    // Widget untuk menampilkan children secara vertikal
                    children: <Widget>[
                    const Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                        child: Text(
                        'Gadget Store Shop', // Text yang menandakan toko
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                    // Grid layout
                    GridView.count(
                        // Container pada card kita.
                        primary: true,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        children: items.map((ShopItem item) {
                        // Iterasi untuk setiap item
                        return ShopCard(item);
                        }).toList(),
                    ),
                    ],
                ),
                ),
            ),
            );

    Checklist 3. Memunculkan Snackbar dengan tulisan.

        Untuk menambahkan snackbar kita pelru melakukan modifikasi pada StatelessWidget dengan kod eberikut:

        // Memunculkan SnackBar ketika diklik
                ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("Kamu telah menekan tombol ${item.name}!")));

        Sehingga saat tombol diklik, akan muncul text Kamu telah menekan tombol ${item.name}!

Tugas 6
Link: mochammad-wahyu21-tugas.pbp.cs.ui.ac.id

1. Jelaskan perbedaan antara asynchronous programming dengan synchronous programming.

    - Synchronous Programming
    Setiap tugas dieksekusi satu per satu secara berurutan. Saat satu tugas sedang menunggu operasi yang memerlukan waktu maka seluruh program akan terhenti sampai operasi itu selesai. Hal ini dapat menyebabkan program terasa lambat dan tidak responsif, terutama dalam aplikasi yang melakukan banyak operasi I/O.

    - Asynchronous Programming
    Berbeda dengan synchronus programming, tugas-tugas yang memerlukan waktu dapat berlanjut ke tugas berikutnya tanpa harus menunggu tugas sebelumnya selesai. Ketika tugas asinkron menunggu operasi yang memerlukan waktu, seperti I/O atau jaringan, ia tidak akan menghentikan seluruh program. Sebaliknya, ia akan melepaskan CPU dan mengizinkan tugas-tugas lain untuk berjalan. Hal ini lah yang membuat program menjadi lebih responsif dan dapat meningkatkan kinerja dalam situasi di mana ada banyak tugas yang memerlukan waktu.

2. Dalam penerapan JavaScript dan AJAX, terdapat penerapan paradigma event-driven programming. Jelaskan maksud dari paradigma tersebut dan sebutkan salah satu contoh penerapannya pada tugas ini.

    Sebuah pendekatan dalam pemrograman di mana program merespons events yang terjadi secara asinkron. Biasanya, berupa interaksi pengguna seperti mengklik tombol, mengisi formulir, atau merespons data eksternal seperti respons dari server atau data sensor. Program yang dibangun dengan paradigma event-driven akan mengeksekusi fungsi atau tindakan tertentu ketika peristiwa-peristiwa ini terjadi.

    Contoh:
    Penggunaan tombol "Delete" untuk menghapus produk adalah salah satu contoh penerapan paradigma event-driven programming. Saat pengguna mengklik tombol "Delete" pada suatu produk, sebuah event (klik) terjadi. Hal ini memicu fungsi JavaScript deleteProduct(productId) yang telah ditetapkan sebagai respons terhadap event tersebut. Fungsi ini kemudian mengirim permintaan AJAX DELETE ke server untuk menghapus produk yang dipilih.

3. Jelaskan penerapan asynchronous programming pada AJAX.

    Penerapan asynchrinus pada AJAX berupa data transfer (HTTP request) yang dilakukan di belakang  tanpa perlu refresh halaman atau postback antara browser dan web server sehingga halaman web dapat memanggil bit yang keicl atau seluruh data/informasi dari server tersebut. Dengan demikian, aplikasi web dapat menjadi lebih cepat dan user friendly.

4. Pada PBP kali ini, penerapan AJAX dilakukan dengan menggunakan Fetch API daripada library jQuery. Bandingkanlah kedua teknologi tersebut dan tuliskan pendapat kamu teknologi manakah yang lebih baik untuk digunakan.

    - JQuery
        ~ Tidak perlu membuat instance objek dari XMLHTTPRequest. 
        ~ Kita perlu menambahkan library JQuery pada project. 
        ~ Response handling dapat dilakukan secara langsung dengan memanggil fungsi done dan fail.
        ~ Perlu menulis lebih banyak baris kode sehingga memperlambat kecepatan waktu muat karena terjadi pemuatan file yang tidak perlu.

    - Fetch API
        ~ Menggunakan Promises yang memungkinkan API lebih sederhana sehingga menghindari callback hell dan harus mengingat API kompleks XMLHttpRequest.
        ~ Response handling dengan memnggunakan fungsi then (jika Promise tersebut mengembalikan resolve) dan catch (jika Promise tersebut mengembalikan reject).
        ~ Dapat digunkan untuk mealkukan fetch berbagai tipe data, hal ini dikarenakan Fetch API tidak mengasumsikan tipe data respon yang akan diperloeh.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

    Checklist 1. Mengubah tugas 5 yang telah dibuat sebelumnya menjadi menggunakan AJAX. 

     - AJAX GET

        Ubahlah kode cards data item agar dapat mendukung AJAX GET.
            Kita perlu membuat fungsi pada views yaitu get_product_json yang menerima parameter request. untuk mengembalikan data JSON. Fungsi ini akan digunakan untuk menampilkan data produk pada HTML dengan menggunakan fetch

     - AJAX POST

        1. Buatlah sebuah tombol yang membuka sebuah modal dengan form untuk menambahkan item.

            Pertama, kita perlu membuat fungsi baru pada block dengan nama addProduct().
            Fungsi tersebut digunakan untuk membuat sebuah FormData baru yang datanya diambil dari form pada modal sehingga data dapat dikirimkan dari form tersebut ke server. Lalu, document.getElementById("form").reset() digunakan untuk mengosongkan isi field form modal setelah di-submit. Agar dapat menambahkan product, kita juga perplu menambahkan tombol sebagai berikut:
            
            document.getElementById("button_add").onclick = addProduct

        2. Buatlah fungsi view baru untuk menambahkan item baru ke dalam basis data.

            Agar kita dapat menambahkan item baru, maka kita perlu membuat sebuah fungsi dengan nama add_product_ajax yang menerima parameter request. Dengan fungsi tersebut kita dapat mengambil value name pada request, begitu juga membuat objek Product baru dengan parameter sesuai values dari request.

        3. Buatlah path /create-ajax/ yang mengarah ke fungsi view yang baru kamu buat.

            Setelah berhaisl membuat funsgi pada views, selanjutnya kita perlu mengimpor fungsi tersebut pada urls.py. Lalu kita tambahkan path url dari kedua fungsi ke dalam urlpatterns.

            path('get-product/', get_product_json, name='get_product_json'),
            path('create-ajax/', add_product_ajax, name='add_product_ajax')

        4. Hubungkan form yang telah kamu buat di dalam modal kamu ke path /create-ajax/.

            Untuk menambahkan path kita perlu menambahkan kode fetch("{% url 'main:add_product_ajax' %}", pada fungsi addPRoduct

            function addProduct() {
                fetch("{% url 'main:add_product_ajax' %}", {
                    method: "POST",
                    body: new FormData(document.querySelector('#form'))
                }).then(refreshProducts)
                document.getElementById("form").reset()
                return false
            }
            
        5. Lakukan refresh pada halaman utama secara asinkronus untuk menampilkan daftar item terbaru tanpa reload halaman utama secara keseluruhan.
            Kita perlu membuat fungsi baru dengan nama refreshProducts() yang digunakan untuk me-refresh data produk secara asynchronous. Lalu memanggil fungsi tersebut yaitu refreshProducts() pada setiap kali membuka halaman web.

    Checklist 2. Melakukan perintah collectstatic.
        PErintah tersebut dapat dilakukan hanya dengan mengetik berikut pada command line:
        python manage.py collectstatic
        Maka file static akan tersimpan pada direktoti yang sudah ditentukan.



Referensi:
https://www.dicoding.com/blog/mengenal-fungsi-asynchronous-request-pada-javascript/
https://medium.com/@reemshakes/is-ajax-getting-replaced-by-fetch-api-55207234793f
https://wesbos.com/javascript/13-ajax-and-fetching-data/74-ajax-and-apis
