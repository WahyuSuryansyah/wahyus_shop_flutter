Nama : Mochammad Wahyu Suryansyah
NPM  : 2206083142
Kelas: PBP E
Kode Asdos: LKS


Tugas 9 
(Dengan Bonus: Register)

1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
    Ya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Ini bisa dilakukan dengan langsung mem-parsing data JSON ke dalam struktur data seperti dictionary atau array, tergantung pada struktur data JSON itu sendiri. 
    
    - apakah ini lebih baik daripada membuat model terlebih dahulu? 
        Tergantung pada konteks dan kebutuhan aplikasi kta. Berikut adalah beberapa pertimbangan:

    Keuntungan menggunakan model:
    - Validasi data
        Model dapat membantu dalam validasi data. Misalnya, jika kita tahu bahwa suatu nilai harus berupa integer dan model kita mencerminkan hal ini, maka jika data JSON berisi nilai non-integer untuk bidang ini, kesalahan akan terjadi saat parsing.
    - Ease of Use
        Dengan model, kita dapat mengakses data menggunakan properti objek, yang bisa lebih intuitif dan mudah dibaca daripada mengakses nilai melalui kunci dictionary.
    - Dokumentasi dan struktur
        Model memberikan struktur yang jelas untuk data kita, yang bisa sangat membantu dalam dokumentasi dan pemahaman data.

    Keuntungan tidak menggunakan model:
    - Fleksibilitas
        Jika struktur data JSON sangat dinamis dan berubah-ubah, mungkin lebih mudah untuk bekerja dengan dictionary atau array daripada mencoba menyesuaikan model kita setiap kali struktur berubah.
    - Kecepatan pengembangan
        Dalam beberapa kasus, mungkin lebih cepat dan lebih mudah untuk mulai bekerja dengan data tanpa menghabiskan waktu untuk mendefinisikan model terlebih dahulu.

2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

    Kelas CookieRequest merupakan bagian dari implementasi manajemen otentikasi (authentication) di aplikasi Flutter dengan menggunakan cookies. 
    Terdapat beberapa fungsionalitas utama dari kelas sebagai berikut:

    - Inisialisasi dan Pemeliharaan Cookies
        sudah tersimpan, memeriksa apakah sesi pengguna sudah login, dan mengelola headers yang berisi informasi cookie.
     - Request HTTP dengan Otentikas
        Kelas ini memiliki beberapa metode untuk melakukan permintaan HTTP seperti get, post, dan postJson. Semua metode ini menyertakan informasi otentikasi dalam header HTTP jika pengguna sudah login.
     
    - Manajemen Sesi Pengguna
        Kelas ini menyediakan fungsionalitas untuk login dan logout. Metode login digunakan untuk mengirimkan permintaan login ke server, dan jika berhasil, menyimpan cookies dan status login. Metode logout digunakan untuk melakukan logout, menghapus cookies, dan mengubah status login.
    
    - Penanganan Cookies
         Kelas ini memiliki fungsi-fungsi untuk mengelola cookies, termasuk pembacaan dari penyimpanan lokal (shared preferences), pembaruan berdasarkan respons HTTP, dan pembuatan header cookie.
    
    - Keamanan dan Pengaturan Cookies
        Fungsi _setCookie digunakan untuk menguraikan dan menyimpan properti cookies, termasuk waktu kedaluwarsa (max-age). Fungsi _generateCookieHeader digunakan untuk membuat header cookie yang akan disertakan dalam setiap permintaan HTTP.

    Mengapa perlu dibagikan ke semua komponen di aplikasi Flutter?

    Terdapat beberapa alasan sebagai berikut:
    - Pemeliharaan Status Login
        Dengan membagikan instance CookieRequest ke semua komponen, kita dapat memastikan bahwa status login pengguna dapat diakses dan diperbarui secara konsisten di seluruh aplikasi. Hal ini penting agar komponen-komponen yang berbeda dapat merespons perubahan status login dengan benar.
    - Pengelolaan Otentikasi
        Instance CookieRequest menyimpan informasi otentikasi dan cookies. Dengan membagikannya ke berbagai komponen, kita dapat mengakses informasi otentikasi ini dari mana saja dalam aplikasi, memungkinkan komunikasi yang efektif dengan server dan pemeliharaan otentikasi.
    - Pemrosesan Permintaan HTTP
        Dengan menyediakan instance CookieRequest ke berbagai komponen, setiap komponen dapat melakukan permintaan HTTP dengan otentikasi tanpa perlu mengulang kembali proses autentikasi. Ini meningkatkan efisiensi dan mengurangi redundansi kode.
    - Manajemen Cookies yang Konsisten
        Melalui instance CookieRequest, komponen-komponen dapat mengakses dan memanipulasi cookies secara konsisten. Ini membantu dalam penanganan cookies dan menjaga konsistensi antara komponen-komponen yang berbeda.

3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

Data diambil melalui respons URL yang telah ditentukan dalam proyek Django. Respons tersebut kemudian diuraikan (decoded) menjadi format JSON. Selanjutnya, dibuatlah sebuah daftar (list) item yang berisi elemen-elemen Item, di mana setiap elemen ini berasal dari hasil dekoding JSON yang tadi. Proses ini dilakukan dengan menggunakan iterasi, di mana setiap item dimasukkan ke dalam list item.

Untuk mengambil hasil dari pengambilan item, FutureBuilder digunakan. FutureBuilder memberikan kemampuan untuk memanggil hasil dari fungsi asinkron (async) yang mengambil item. Hasil dari proses ini kemudian ditampilkan menggunakan ListView.builder, yang memungkinkan pembuatan tampilan dinamis berdasarkan data yang diterima.

4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

    Pengguna menginputkan username dan password melalui TextField dalam framework Flutter, dan data ini disimpan dalam variabel username dan password. Ketika tombol login ditekan, aplikasi mengirimkan HTTP POST request ke endpoint /auth/login/ di server Django. Data username dan password dikirimkan sebagai bagian dari body request dalam format JSON.

    Server Django menerima request dan melakukan proses autentikasi terhadap pengguna. Jika autentikasi berhasil, Django mengirimkan respon berisi pesan sukses dan data pengguna. Namun, jika autentikasi gagal, Django mengirimkan respon dengan pesan kesalahan. Aplikasi Flutter menerima respon dari Django dan memeriksa apakah autentikasi berhasil. Jika berhasil, aplikasi akan mengarahkan pengguna ke halaman utama (MyHomePage); sebaliknya, jika gagal, aplikasi akan menampilkan pesan kesalahan.

    Setelah pengguna berhasil login, mereka akan diarahkan ke halaman utama aplikasi di mana menu aplikasi ditampilkan.

5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

    AppBar
        AppBar menampilkan widget toolbar, leading, title, dan actions di atas bagian bawah (jika ada).
    Column
        Widget yang menampilkan children dalam susunan vertikal.
    Scaffold
        Scaffold adalah kelas di Flutter yang menyediakan banyak widget atau API seperti Drawer, Snack-Bar, Bottom-Navigation-Bar, Floating-Action-Button, App-Bar, dll. Scaffold akan memperluas atau mengisi seluruh layar perangkat. Ini akan mengisi ruang yang tersedia. Scaffold akan memberikan kerangka untuk mengimplementasikan tata letak desain material dasar dari aplikasi.     
    Container
        Widget yang memudahkan dengan menggabungkan widget umum untuk melukis, menempatkan, dan menentukan ukuran.
    TextField
        TextField memungkinkan pengguna memasukkan teks, baik dengan keyboard fisik atau dengan keyboard di layar.
    ElevatedButton
        Elevated button adalah label anak yang ditampilkan pada widget Material yang Material.elevation-nya meningkat ketika tombol ditekan.
    FutureBuilder
        Widget yang membangun dirinya berdasarkan snapshot terbaru dari interaksi dengan Future.
    SnackBar
        SnackBar adalah widget Flutter yang memungkinkan Anda untuk sementara menampilkan pesan pop-up dalam aplikasi Anda.
    Navigator
        Widget yang mengelola sekelompok widget child dengan disiplin tumpukan.
    ListView.builder
        Konstruktor ListView.builder mengambil IndexedWidgetBuilder, yang membangun anak-anak secara on demand.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

        Membuat file login.dart di dalam lib/screens/:
        Pertama kita perlu mengimport beberapa modul dan halaman yang dibuthkan, Lalu membuat file login.dart dengan kode sebagai berikut:

        void main() {
        runApp(const LoginApp());
        }

        class LoginApp extends StatelessWidget {
        const LoginApp({super.key});

        @override
        Widget build(BuildContext context) {
            return MaterialApp(
                title: 'Login',
                theme: ThemeData(
                primarySwatch: Colors.indigo,
                ),
                home: const LoginPage(),
            );
        }
        }

        class LoginPage extends StatefulWidget {
        const LoginPage({super.key});

        @override
        _LoginPageState createState() => _LoginPageState();
        }

        class _LoginPageState extends State<LoginPage> {
        final TextEditingController _usernameController = TextEditingController();
        final TextEditingController _passwordController = TextEditingController();

        @override
        Widget build(BuildContext context) {
            final request = context.watch<CookieRequest>();
            return Scaffold(
                appBar: AppBar(
                title: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.indigo[900],
                foregroundColor: Colors.white,
                ),
                body: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.indigo),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo),
                        ),
                    ),
                    ),
                    const SizedBox(height: 12.0),
                    TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.indigo),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo),
                        ),
                    ),
                    obscureText: true,
                    ),
                    const SizedBox(height: 24.0),
                    ElevatedButton(
                    onPressed: () async {
                        String username = _usernameController.text;
                        String password = _passwordController.text;
                        final response = await request.login(
                            "http://127.0.0.1:8080/auth/login/",
                            // "http://mochammad-wahyu21-tugas.pbp.cs.ui.ac.id/auth/login/", 
                        {
                            'username': username,
                            'password': password,
                        });

                        if (request.loggedIn) {
                            String message = response['message'];
                            String uname = response['username'];
                            
                            // ignore: use_build_context_synchronously
                            Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => MyHomePage()),
                            );
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text("$message Welcome, $uname.")));
                        } else {
                            // ignore: use_build_context_synchronously
                            showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                title: const Text('Login failed'),
                                content: Text(response['message']),
                                actions: [
                                TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                    Navigator.pop(context);
                                },
                                ),
                                ],
                            ),
                            );
                        }
                    },
                    child: const Text('Login'),
                    ),
                    const SizedBox(height: 12.0),
                    ElevatedButton(
                    onPressed: () {
                        // Navigate to Register Page
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                    },
                    child: const Text('Register'),
                    )
                    ],
                ),
                ),
            );
        }
        }

        Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
        Membuat app authentication dengan perintah python manage.py startapp authentication
        Memodifikasi requirements.txt sebegai berikut:
            django
            gunicorn
            whitenoise
            psycopg2-binary
            requests
            urllib3
            django-environ
            django-tailwind
            django-cors-headers
        Melakukan pip install -r requirements.txt

        Memodifikasi settings.py project Django dengan menambahkan nama app dan beberap setting yang diperlukan

        Memodifikasi views.py pada app authentication dengan menambahkan beberap fungsi sebagai beirkut:

                @csrf_exempt
                def login(request):
                username = request.POST['username']
                password = request.POST['password']
                user = authenticate(username=username, password=password)
                if user is not None:
                    if user.is_active:
                            auth_login(request, user)
                            # Status login sukses.
                            return JsonResponse({
                            "username": user.username,
                            "status": True,
                            "message": "Login successful!"
                            # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
                            }, status=200)
                    else:
                            return JsonResponse({
                            "status": False,
                            "message": "Login failed, account deactivated."
                            }, status=401)

                else:
                    return JsonResponse({
                            "status": False,
                            "message": "Login failed, recheck your username and password."
                    }, status=401)
                
                @csrf_exempt
                def register(request):
                username = request.POST.get('username')
                password = request.POST.get('password')

                if User.objects.filter(username=username).exists():
                    return JsonResponse({"status": False, "message": "Username already used."}, status=400)

                user = User.objects.create_user(username=username, password=password)
                user.save()

                return JsonResponse({"username": user.username, "status": True, "message": "Register successful!"}, status=201)
                
                
                @csrf_exempt
                def logout(request):
                username = request.user.username

                try:
                    auth_logout(request)
                    return JsonResponse({"username": username, "status": True, "message": "Logout successful!"}, status=200)
                except:
                    return JsonResponse({"status": False, "message": "Logout failed!"}, status=401)
                Membuat file urls.py pada app authentication
                from django.urls import path
                from authentication.views import *

                app_name = 'authentication'

                urlpatterns = [
                path('login/', login, name='login'),
                path('logout/', logout, name='logout'),
                path('register/', register, name='register'),
                ]


        Memodifikasi urls.py pada folder project Django seuai dengan fungsi yang tyelah dibuat sebelumnya
        
        Memodifikasi lib/widgets/left_drawer.dart dan lib/widgets/menu_card.dart 

        import 'package:battlechar_mobile/screens/operatorlist_items.dart';
        import 'package:flutter/material.dart';
        import 'package:battlechar_mobile/screens/operatorlist_form.dart';
        import 'package:pbp_django_auth/pbp_django_auth.dart';
        import 'package:provider/provider.dart';
        import 'package:battlechar_mobile/screens/login.dart';

        class MenuItem {
        final String name;
        final IconData icon;
        final Color color;

        MenuItem(this.name, this.icon, this.color);
        }

        class MenuCard extends StatelessWidget {
        final MenuItem item;

        const MenuCard(this.item, {super.key}); // Constructor

        @override
        Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Material(
            color: item.color,
            child: InkWell(
            // Area responsive terhadap sentuhan
            onTap: () async {
                // Memunculkan SnackBar ketika diklik
                ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                    content: Text("You've pressed the ${item.name} button!")));

                // Navigate ke route yang sesuai (tergantung jenis tombol)
                if (item.name == "Add Operators") {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OperatorFormPage()));
                }

                if (item.name == "See Operators") {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const OperatorsPage()));
                }

                if (item.name == "Logout") {
                    final response = await request.logout(
                    // "http://mochammad-wahyu21-tugas.pbp.cs.ui.ac.id/auth/logout/",
                    "http://127.0.0.1:8080/auth/logout/");
                    String message = response["message"];
                    if (response['status']) {
                    String uname = response["username"];
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$message See you again, $uname!"),
                    ));
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                    } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$message"),
                    ));
                    }
                }
            },
            child: Container(
                // Container untuk menyimpan Icon dan Text
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(
                        item.icon,
                        color: Colors.white,
                        size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                        item.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                    ),
                    ],
                    ),
                ),
            ),
            ),
        );
        }
        }
        Menambah file lib/screens/login.dart
        import 'package:battlechar_mobile/screens/menu.dart';
        import 'package:battlechar_mobile/screens/register.dart';
        import 'package:flutter/material.dart';
        import 'package:pbp_django_auth/pbp_django_auth.dart';
        import 'package:provider/provider.dart';

        void main() {
        runApp(const LoginApp());
        }

        class LoginApp extends StatelessWidget {
        const LoginApp({super.key});

        @override
        Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Login',
            theme: ThemeData(
            primarySwatch: Colors.indigo,
            ),
            home: const LoginPage(),
        );
        }
        }

        class LoginPage extends StatefulWidget {
        const LoginPage({super.key});

        @override
        _LoginPageState createState() => _LoginPageState();
        }

        class _LoginPageState extends State<LoginPage> {
        final TextEditingController _usernameController = TextEditingController();
        final TextEditingController _passwordController = TextEditingController();

        @override
        Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
            appBar: AppBar(
            title: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.indigo[900],
            foregroundColor: Colors.white,
            ),
            body: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.indigo),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo),
                    ),
                    ),
                    ),
                    const SizedBox(height: 12.0),
                    TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.indigo),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo),
                    ),
                    ),
                    obscureText: true,
                    ),
                    const SizedBox(height: 24.0),
                    ElevatedButton(
                    onPressed: () async {
                    String username = _usernameController.text;
                    String password = _passwordController.text;
                    final response = await request.login(
                        "http://127.0.0.1:8080/auth/login/",
                        // "http://mochammad-wahyu21-tugas.pbp.cs.ui.ac.id/auth/login/", 
                    {
                        'username': username,
                        'password': password,
                    });

                    if (request.loggedIn) {
                        String message = response['message'];
                        String uname = response['username'];
                        
                        // ignore: use_build_context_synchronously
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(SnackBar(
                                content: Text("$message Welcome, $uname.")));
                    } else {
                        // ignore: use_build_context_synchronously
                        showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            title: const Text('Login failed'),
                            content: Text(response['message']),
                            actions: [
                                TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                Navigator.pop(context);
                                },
                                ),
                            ],
                        ),
                        );
                    }
                    },
                    child: const Text('Login'),
                    ),
                    const SizedBox(height: 12.0),
                    ElevatedButton(
                    onPressed: () {
                    // Navigate to Register Page
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                    },
                    child: const Text('Register'),
                    )
                ],
            ),
            ),
        );
        }
        }
        Menambah file lib/screens/register.dart

        import 'package:battlechar_mobile/screens/login.dart';
        import 'package:flutter/material.dart';
        import 'package:pbp_django_auth/pbp_django_auth.dart';
        import 'package:provider/provider.dart';

        void main() {
        runApp(const RegisterApp());
        }

        class RegisterApp extends StatelessWidget {
        const RegisterApp({super.key});

        @override
        Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Register',
            theme: ThemeData(
            primarySwatch: Colors.indigo,
            ),
            home: const RegisterPage(),
        );
        }
        }

        class RegisterPage extends StatefulWidget {
        const RegisterPage({super.key});

        @override
        _RegisterPageState createState() => _RegisterPageState();
        }

        class _RegisterPageState extends State<RegisterPage> {
        final TextEditingController _usernameController = TextEditingController();
        final TextEditingController _passwordController = TextEditingController();
        final TextEditingController _passwordConfirmationController =
            TextEditingController();

        @override
        Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
            appBar: AppBar(
            title: const Text(
                'Register',
                style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.indigo[900],
            foregroundColor: Colors.white,
            ),
            body: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.indigo),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo),
                    ),
                    ),
                    ),
                    const SizedBox(height: 12.0),
                    TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.indigo),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo),
                    ),
                    ),
                    obscureText: true,
                    ),
                    const SizedBox(height: 12.0),
                    TextField(
                    controller: _passwordConfirmationController,
                    decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.indigo),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo),
                    ),
                    ),
                    obscureText: true,
                    ),
                    const SizedBox(height: 24.0),
                    ElevatedButton(
                    onPressed: () async {
                    String username = _usernameController.text;
                    String password = _passwordController.text;
                    String passwordConfirmation =
                        _passwordConfirmationController.text;

                    if (password != passwordConfirmation) {
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(const SnackBar(
                                content: Text(
                                "Register failed, password confimation incorrect.")));
                        return;
                    }
                    final response = await request.post(
                        "http://127.0.0.1:8080/auth/register/",
                        // "http://mochammad-wahyu21-tugas.pbp.cs.ui.ac.id/auth/register/",
                        {
                            'username': username,
                            'password': password,
                        });

                    if (response['status']) {
                        String message = response['message'];
                        
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(SnackBar(content: Text("$message")));
                    } else {
                        showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            title: const Text('Register failed.'),
                            content: Text(response['message']),
                            actions: [
                                TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                Navigator.pop(context);
                                },
                                ),
                            ],
                        ),
                        );
                    }
                    },
                    child: const Text('Register'),
                    ),
                    const SizedBox(height: 12.0),
                    ElevatedButton(
                    onPressed: () {
                    // Navigate to Login
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                    },
                    child: const Text('Login'),
                    )
                ],
            ),
            ),
        );
        }
        }
        Membuat file lib/models/operator.dart dengan bantuan website http://app.quicktype.io/
        // To parse this JSON data, do
        //
        //     final operator = operatorFromJson(jsonString);

        import 'dart:convert';

        Operator operatorFromJson(String str) => Operator.fromJson(json.decode(str));

        String operatorToJson(Operator data) => json.encode(data.toJson());

        class Operator {
        String model;
        int pk;
        Fields fields;

        Operator({
            required this.model,
            required this.pk,
            required this.fields,
        });

        factory Operator.fromJson(Map<String, dynamic> json) => Operator(
            model: json["model"],
            pk: json["pk"],
            fields: Fields.fromJson(json["fields"]),
        );

        Map<String, dynamic> toJson() => {
            "model": model,
            "pk": pk,
            "fields": fields.toJson(),
        };
        }

        class Fields {
        int user;
        String name;
        String unit;
        String primaryWeapon;
        String secondaryWeapon;
        int primaryWeaponAmmoAmount;
        int secondaryWeaponAmmoAmount;
        int armor;
        int speed;
        String description;
        int price;

        Fields({
            required this.user,
            required this.name,
            required this.unit,
            required this.primaryWeapon,
            required this.secondaryWeapon,
            required this.primaryWeaponAmmoAmount,
            required this.secondaryWeaponAmmoAmount,
            required this.armor,
            required this.speed,
            required this.description,
            required this.price,
        });

        factory Fields.fromJson(Map<String, dynamic> json) => Fields(
            user: json["user"],
            name: json["name"],
            unit: json["unit"],
            primaryWeapon: json["primary_weapon"],
            secondaryWeapon: json["secondary_weapon"],
            primaryWeaponAmmoAmount: json["primary_weapon_ammo_amount"],
            secondaryWeaponAmmoAmount: json["secondary_weapon_ammo_amount"],
            armor: json["armor"],
            speed: json["speed"],
            description: json["description"],
            price: json["price"],
        );

        Map<String, dynamic> toJson() => {
            "user": user,
            "name": name,
            "unit": unit,
            "primary_weapon": primaryWeapon,
            "secondary_weapon": secondaryWeapon,
            "primary_weapon_ammo_amount": primaryWeaponAmmoAmount,
            "secondary_weapon_ammo_amount": secondaryWeaponAmmoAmount,
            "armor": armor,
            "speed": speed,
            "description": description,
            "price": price,
        };
        }
        Memodifikasi lib/screens/operatorlist_form.dart agar bisa membuat Operator dan menyimpannya ke dalam
        import 'package:flutter/material.dart';
        import 'package:battlechar_mobile/widgets/left_drawer.dart';
        import 'package:pbp_django_auth/pbp_django_auth.dart';
        import 'package:provider/provider.dart';
        import 'dart:convert';
        import 'package:battlechar_mobile/screens/menu.dart';

        class OperatorFormPage extends StatefulWidget {
        const OperatorFormPage({super.key});

        @override
        State<OperatorFormPage> createState() => _OperatorFormPageState();
        }


        class _OperatorFormPageState extends State<OperatorFormPage> {
        final _formKey = GlobalKey<FormState>();

        String _name = "";
        String _unit = "";
        int _price = 0;
        String _primaryWeapon = "";
        int _primaryWeaponAmmo = 0;
        String _secondaryWeapon = "";
        int _secondaryWeaponAmmo = 0;
        int _armor = 0;
        int _speed = 0;
        String _description = "";

        @override
        Widget build(BuildContext context) {
            final request = context.watch<CookieRequest>();

            return Scaffold(
                appBar: AppBar(
                    title: const Center(
                    child: const Text(
                    'Add Operator',
                    style: TextStyle(color: Colors.white),
                    ),
                    ),
                    backgroundColor: Colors.indigo.shade900,
                    foregroundColor: Colors.white,
                ),
                drawer: const LeftDrawer(),
                body: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Operator Name",
                                labelText: "Operator Name",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            onChanged: (String? value) {
                                setState(() {
                                _name = value!;
                                });
                            },
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                return "Name cannot be empty!";
                                }
                                return null;
                            },
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Operator Unit",
                                labelText: "Operator Unit",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            onChanged: (String? value) {
                                setState(() {
                                _unit = value!;
                                });
                            },
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                return "Unit cannot be empty!";
                                }
                                return null;
                            },
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Price",
                                labelText: "Price",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            onChanged: (String? value) {
                                setState(() {
                                _price = int.parse(value!);
                                });
                            },
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                return "Price cannot be empty!";
                                }
                                if (int.tryParse(value) == null) {
                                return "Price must be a valid integer!";
                                }
                                return null;
                            },
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Primary Weapon",
                                labelText: "Primary Weapon",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            onChanged: (String? value) {
                                setState(() {
                                _primaryWeapon = value!;
                                });
                            },
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                return "Primary weapon cannot be empty!";
                                }
                                return null;
                            },
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Primary Weapon Ammo Amount",
                                labelText: "Primary Weapon Ammo Amount",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            onChanged: (String? value) {
                                setState(() {
                                _primaryWeaponAmmo = int.parse(value!);
                                });
                            },
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                return "Primary weapon ammo amount cannot be empty!";
                                }
                                if (int.tryParse(value) == null) {
                                return "Primary weapon ammo amount must be a valid integer!";
                                }
                                return null;
                            },
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Secondary Weapon",
                                labelText: "Secondary Weapon",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            onChanged: (String? value) {
                                setState(() {
                                _secondaryWeapon = value!;
                                });
                            },
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                return "Secondary weapon cannot be empty!";
                                }
                                return null;
                            },
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Secondary Weapon Ammo Amount",
                                labelText: "Secondary Weapon Ammo Amount",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            onChanged: (String? value) {
                                setState(() {
                                _secondaryWeaponAmmo = int.parse(value!);
                                });
                            },
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                return "Secondary weapon ammo amount cannot be empty!";
                                }
                                if (int.tryParse(value) == null) {
                                return "Secondary weapon ammo amount must be a valid integer!";
                                }
                                return null;
                            },
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Armor",
                                labelText: "Armor",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            onChanged: (String? value) {
                                setState(() {
                                _armor = int.parse(value!);
                                });
                            },
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                return "Armor value cannot be empty!";
                                }
                                if (int.tryParse(value) == null) {
                                return "Armor value must be a valid integer!";
                                }
                                if (int.tryParse(value)! > 3 || int.tryParse(value)! < 1) {
                                return "Armor value must be in interval 1-to-3!";
                                }
                                return null;
                            },
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Speed",
                                labelText: "Speed",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            onChanged: (String? value) {
                                setState(() {
                                _speed = int.parse(value!);
                                });
                            },
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                return "Speed value cannot be empty!";
                                }
                                if (int.tryParse(value) == null) {
                                return "Speed value must be a valid integer!";
                                }
                                if (int.tryParse(value)! > 3 || int.tryParse(value)! < 1) {
                                return "Speed value must be in interval 1-to-3!";
                                }
                                return null;
                            },
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Description",
                                labelText: "Description",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            onChanged: (String? value) {
                                setState(() {
                                _description = value!;
                                });
                            },
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                return "Description cannot be empty!";
                                }
                                return null;
                            },
                        ),
                        ),
                        Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(Colors.indigo),
                                    ),
                                    onPressed: () async {
                                        if (_formKey.currentState!.validate()) {
                                            // Kirim ke Django dan tunggu respons
                                            // DONE: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                                            final response = await request.postJson(
                                            "http://127.0.0.1:8080/create-flutter/",
                                            // "http://mochammad-wahyu21-tugas.pbp.cs.ui.ac.id/create-flutter/",
                                            jsonEncode(<String, String>{
                                            'name': _name,
                                            'price': _price.toString(),
                                            'primary_weapon': _primaryWeapon,
                                            'secondary_weapon': _secondaryWeapon,
                                            'primary_weapon_ammo_amount': _primaryWeaponAmmo.toString(),
                                            'secondary_weapon_ammo_amount': _secondaryWeaponAmmo.toString(),
                                            'armor': _armor.toString(),
                                            'speed': _speed.toString(),
                                            'description': _description,
                                            'unit': _unit,
                                            }));
                                            if (response['status'] == 'success') {
                                            print(response['status']);
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(const SnackBar(
                                            content: Text("New operator has been saved!"),
                                            ));
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(builder: (context) => MyHomePage()),
                                            );
                                            } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(const SnackBar(
                                                content:
                                                        Text("ERROR, please try again!"),
                                            ));
                                            }
                                        }
                                    },
                                    child: const Text(
                                        "Save",
                                        style: TextStyle(color: Colors.white),
                                    ),
                                    ),
                        ),
                        ),
                    ]
                    ),
                    ),
                ),
            );
        }
        }
        Memodifikasi lib/screens/operatorlist_items.dart agar dapat melihat Operator yang di buat User yang sedang logged-in dari database
        import 'package:battlechar_mobile/screens/detail_operator.dart';
        import 'package:flutter/material.dart';
        import 'package:battlechar_mobile/widgets/left_drawer.dart';
        import 'package:http/http.dart' as http;
        import 'dart:convert';
        import 'package:battlechar_mobile/models/operator.dart';

        class OperatorsPage extends StatefulWidget {
        const OperatorsPage({super.key});

        @override
        State<StatefulWidget> createState() => _OperatorsPageState();
        }

        class _OperatorsPageState extends State<OperatorsPage> {
        Future<List<Operator>> fetchOperator() async {
        var url = Uri.parse('http://127.0.0.1:8080/json-by-user/');
        // var url = Uri.parse('http://mochammad-wahyu21-tugas.pbp.cs.ui.ac.id/json-by-user/');
        var response = await http.get(
            url,
            headers: {
            "Content-Type": "application/json",
            },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // melakukan konversi data json menjadi object Operator
        List<Operator> listOperator = [];
        for (var d in data) {
            if (d != null) {
            // print(d.fields);
            listOperator.add(Operator.fromJson(d));
            }
        }
        return listOperator;
        }

        @override
        Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text(
                    'Operators',
                    style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.indigo[900],
                foregroundColor: Colors.white,
            ),
            drawer: const LeftDrawer(),
            body: FutureBuilder(
                    future: fetchOperator(),
                    builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                    } else {
                    if (!snapshot.hasData) {
                        return const Column(
                        children: [
                            Text(
                                "No operators.",
                                style:
                                TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                            ),
                            SizedBox(height: 8),
                        ],
                        );
                    } else {
                        return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) => InkWell(
                            onTap: () {
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) =>
                                    DetailOperatorPage(item: snapshot.data![index]),
                                ),
                                );
                            },
                            child: Card(
                                margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                                child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(
                                    "${snapshot.data![index].fields.name}",
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                        "Unit : ${snapshot.data![index].fields.unit}"),
                                    const SizedBox(height: 10),
                                    Text(
                                        "Description : ${snapshot.data![index].fields.description}")
                                ],
                                ),
                                ),
                            ),
                        ),
                        );
                    }
                    }
                    }));
        }
        }
        
        Menambah file lib/screens/detail_operator.dart untuk melihat detail dari Operator secara lebih mendalam

                import 'package:flutter/material.dart';
                import 'package:battlechar_mobile/models/operator.dart';

                class DetailOperatorPage extends StatelessWidget {
                final Operator item;

                DetailOperatorPage({required this.item});

                @override
                Widget build(BuildContext context) {
                return Scaffold(
                    appBar: AppBar(
                    title: Text(
                            '${item.fields.name}',
                            style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.indigo[900],
                        foregroundColor: Colors.white,
                    ),
                    body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Text(
                            item.fields.name,
                            style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 10),
                            Text("Unit: ${item.fields.unit}"),
                            const SizedBox(height: 10),
                            Text("Primary Weapon : ${item.fields.primaryWeapon}    Ammo : ${item.fields.primaryWeaponAmmoAmount}"),
                            const SizedBox(height: 10),
                            Text("Secondary Weapon : ${item.fields.secondaryWeapon}    Ammo : ${item.fields.secondaryWeaponAmmoAmount}"),
                            const SizedBox(height: 10),
                            Text("Armor : ${item.fields.armor}    Speed : ${item.fields.speed}"),
                            const SizedBox(height: 10),
                            Text("Price : ${item.fields.price}"),
                            const SizedBox(height: 10),
                            Text("Description : ${item.fields.description}"),
                        ],
                    ),
                    ),
                );
                }
                }


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
