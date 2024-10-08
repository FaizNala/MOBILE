<h1>LAPORAN PEMROGRAMAN BERBASIS MOBILE</h1>
Dosen Pembimbing : Ade Ismail S.Kom, M.Ti
<hr>
Nama : Faiz Nala Samudera <br>
NIM : 2241760043 <br>        
Kelas : SIB 3D <br>
<hr>

<h3>Praktikum 1</h3>

1. Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.
    <img src='assets/1.1.png'>
2. Kemudian buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.
3. Buat nama project flutter hello_world (flutter_application_2) seperti berikut, lalu tekan Enter. Tunggu hingga proses pembuatan project baru selesai.
4. Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut. Pesan akan tampil berupa "Your Flutter Project is ready!" artinya Anda telah berhasil membuat project Flutter baru.
    <img src='assets/1.2.png'>


<h3>Praktikum 4</h3>

1. Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart.
    ```
    import 'package:flutter/material.dart';

    class MyTextWidget extends StatelessWidget {
        const MyTextWidget({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return const Text(
            "Nama saya Nala, sedang belajar Pemrograman Mobile",
            style: TextStyle(color: Colors.red, fontSize: 14),
            textAlign: TextAlign.center);
        }
    }
    ``` 
    Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file README.md. <br>
    <img src='assets/4.1.png'>
2. Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.
    ```
    import 'package:flutter/material.dart';

    class MyImageWidget extends StatelessWidget {
        const MyImageWidget({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return const Image(
            image: AssetImage("logo_polinema.jpg")
            );
        }
    }
    ```
    Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.
    ```
    flutter:
    assets:
        - logo_polinema.jpg
    ```
    Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.
    <img src='assets/4.1.png'>

<h3>Praktikum 5</h3>

1. Langkah 1: Cupertino Button dan Loading Bar<br>
    Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.
    ```
    import 'package:flutter/material.dart';
    import 'package:flutter/cupertino.dart';

    class LoadingCupertino extends StatelessWidget {
        const LoadingCupertino({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return MaterialApp(
            home: Container(
                margin: const EdgeInsets.only(top: 30),
                color: Colors.white,
                child: Column(
                children: <Widget>[
                    CupertinoButton(
                    child: const Text("Contoh button"),
                    onPressed: () {},
                    ),
                    const CupertinoActivityIndicator(),
                ],
                ),
            ),
            );
        }
    }
    ```
    <img src='assets/5.1.png'>
2. Langkah 2: Floating Action Button (FAB)<br>
    Button widget terdapat beberapa macam pada flutter yaitu ButtonBar, DropdownButton, TextButton, FloatingActionButton, IconButton, OutlineButton, PopupMenuButton, dan ElevatedButton.<br><br>
    Buat file di basic_widgets > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.
    ```
    import 'package:flutter/material.dart';

    class FabWidget extends StatelessWidget {
        const FabWidget({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return MaterialApp(
            home: Scaffold(
                floatingActionButton: FloatingActionButton(
                onPressed: () {
                    // Add your onPressed code here!
                },
                child: const Icon(Icons.thumb_up),
                backgroundColor: Colors.pink,
                ),
            ),
            );
        }
    }
    ```
    <img src='assets/5.2.png'>
3. Langkah 3: Scaffold Widget <br>
    Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design.
    ```
    import 'package:flutter/material.dart';

    void main() {
        runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
        const MyApp({Key? key}) : super(key: key);

        // This widget is the root of your application.
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.red,
            ),
            home: const MyHomePage(title: 'My Increment App'),
            );
        }
    }

    class MyHomePage extends StatefulWidget {
        const MyHomePage({Key? key, required this.title}) : super(key: key);

        final String title;

        @override
        State<MyHomePage> createState() => _MyHomePageState();
        }

        class _MyHomePageState extends State<MyHomePage> {
        int _counter = 0;

        void _incrementCounter() {
            setState(() {
            _counter++;
            });
        }

        @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
            ),
            body: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    const Text(
                    'You have pushed the button this many times:',
                    ),
                    Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                    ),
                ],
                ),
            ),
            bottomNavigationBar: BottomAppBar(
                child: Container(
                height: 50.0,
                ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment Counter',
                child: const Icon(Icons.add),
            ), 
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            );
        }
    }
    ```
    <img src='assets/5.3.png'>
4. Langkah 4: Dialog Widget<br>
    Dialog widget pada flutter memiliki dua jenis dialog yaitu AlertDialog dan SimpleDialog.<br>
    Ubah isi kode main.dart seperti berikut.<br>
    ```
    import 'package:flutter/material.dart';

    void main() {
        runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
        const MyApp({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return const MaterialApp(
            home: Scaffold(
                body: MyLayout(),
            ),
            );
        }
    }

    class MyLayout extends StatelessWidget {
        const MyLayout({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                child: const Text('Show alert'),
                onPressed: () {
                showAlertDialog(context);
                },
            ),
            );
        }
    }

    showAlertDialog(BuildContext context) {
        // set up the button
        Widget okButton = TextButton(
            child: const Text("OK"),
            onPressed: () {
            Navigator.pop(context);
            },
        );

        // set up the AlertDialog
        AlertDialog alert = AlertDialog(
            title: const Text("My title"),
            content: const Text("This is my message."),
            actions: [
            okButton,
            ],
        );

        // show the dialog
        showDialog(
            context: context,
            builder: (BuildContext context) {
            return alert;
            },
        );
    }
    ```    
    <img src='assets/5.4.png'>
5. Langkah 5: Input dan Selection Widget<br>
    Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField.<br>
    Contoh penggunaan TextField widget adalah sebagai berikut:
    ```
    import 'package:flutter/material.dart';

    class MyApp extends StatelessWidget {
        const MyApp({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: const Text("Contoh TextField")),
                body: const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nama',
                    ),
                ),
                ),
            ),
            );
        }
    }

    void main() {
        runApp(const MyApp());
    }
    ```
    <img src='assets/5.5.png'>
6. Langkah 6: Date and Time Pickers<br>
    Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.
    ```
    import 'dart:async';
    import 'package:flutter/material.dart';

    void main() => runApp(const MyApp());

    class MyApp extends StatelessWidget {
        const MyApp({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return const MaterialApp(
            title: 'Contoh Date Picker',
            home: MyHomePage(title: 'Contoh Date Picker'),
            );
        }
    }

    class MyHomePage extends StatefulWidget {
        const MyHomePage({Key? key, required this.title}) : super(key: key);

        final String title;

        @override
        _MyHomePageState createState() => _MyHomePageState();
        }

        class _MyHomePageState extends State<MyHomePage> {
        // Variable/State untuk mengambil tanggal
        DateTime selectedDate = DateTime.now();

        //  Initial SelectDate FLutter
        Future<void> _selectDate(BuildContext context) async {
            // Initial DateTime FIinal Picked
            final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2015, 8),
                lastDate: DateTime(2101));
            if (picked != null && picked != selectedDate) {
            setState(() {
                selectedDate = picked;
            });
            }
        }

        @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
            ),
            body: Center(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                    Text("${selectedDate.toLocal()}".split(' ')[0]),
                    const SizedBox(
                    height: 20.0,
                    ),
                    ElevatedButton(
                    onPressed: () => {
                        _selectDate(context),
                        // ignore: avoid_print
                        print(selectedDate.day + selectedDate.month + selectedDate.year)
                    },
                    child: const Text('Pilih Tanggal'),
                    ),
                ],
                ),
            ),
            );
        }
    }
    ```
    <img src='assets/5.6.png'>

<h3>Tugas Praktikum</h3>

1. Selesaikan Praktikum 1 sampai 5, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!
2. Selesaikan Praktikum 2 dan Anda wajib menjalankan aplikasi hello_world pada perangkat fisik (device Android/iOS) agar Anda mempunyai pengalaman untuk menghubungkan ke perangkat fisik. Capture hasil aplikasi di perangkat, lalu buatlah laporan praktikum pada file README.md.
3. Pada praktikum 5 mulai dari Langkah 3 sampai 6, buatlah file widget tersendiri di folder basic_widgets, kemudian pada file main.dart cukup melakukan import widget sesuai masing-masing langkah tersebut!
    <img src='assets/1.1.png'><br>
    <img src='assets/1.2.png'><br>
    <img src='assets/4.1.png'><br>
    <img src='assets/4.2.png'><br>
    <img src='assets/5.1.png'><br>
    <img src='assets/5.2.png'><br>
    <img src='assets/5.3.png'><br>
    <img src='assets/5.4.png'><br>
    <img src='assets/5.5.png'><br>
    <img src='assets/5.6.png'><br>
4. Selesaikan Codelabs: Your first Flutter app, lalu buatlah laporan praktikumnya dan push ke repository GitHub Anda!
5. README.md berisi: capture hasil akhir tiap praktikum (side-by-side, bisa juga berupa file GIF agar terlihat proses perubahan ketika ada aksi dari pengguna) dengan menampilkan NIM dan Nama Anda sebagai ciri pekerjaan Anda.
6. Kumpulkan berupa link repository/commit GitHub Anda kepada dosen yang telah disepakati!