import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

// void main() {
//   var list = [1,2,3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }


// void main() {
//   final List<dynamic> list = List.filled(5, null); // Membuat list dengan panjang 5, nilai default null
//   list[1] = 'Faiz Nala Samudera'; 
//   list[2] = '2241760043'; 
  
//   print(list.length);
//   print(list); 
// }


// Praktikum 2
// ------------------------------------------------
// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);
// }

// void main() {
//   var names1 = <String>{};
//   Set<String> names2 = {}; // This works, too.
//   var names3 = {}; // Creates a map, not a set.

//   print(names1);
//   print(names2);
//   print(names3);
// }

// void main() {
//   var names1 = <String>{};
//   Set<String> names2 = {};

//   names1.add('Faiz Nala Samudera');
//   names2.addAll({'Faiz Nala Samudera', '2241760043'});
  
//   print(names1); 
//   print(names2);
// }


// Praktikum 3
// ------------------------------------------------

// void main() {
//   var gifts = {
//     // Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 2,
//   };

//   print(gifts);
//   print(nobleGases);
// }

// void main () {
//   var mhs1 = Map<String, String>();
//   mhs1['first'] = 'partridge';
//   mhs1['second'] = 'turtledoves';
//   mhs1['fifth'] = 'golden rings';
//   mhs1['nama'] = 'Faiz Nala Samudera';
//   mhs1['nim'] = '2241760043';

//   var mhs2 = Map<int, String>();
//   mhs2[2] = 'helium';
//   mhs2[10] = 'neon';
//   mhs2[18] = 'argon';
//   mhs2[20] = 'Faiz Nala Samudera';
//   mhs2[22] = '2241760043';

//   print(mhs1);
//   print(mhs2);
// }

// Praktikum 4
// ------------------------------------------------

// void main() {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list);
//   print(list2);
//   print(list2.length);
// }

// void main () {
//   var list1 = [1, 2, null];
//   print(list1);
//   var list3 = [0, ...?list1];
//   print(list3.length);
// }

// void main() {
//   var list = [1, 2, 3];
//   var listNIM = ['2241760043']; 
//   var list2 = [0, ...list, ...listNIM];
  
//   print(list); 
//   print(list2); 
//   print(list2.length); 
// }

// void main() {
//   var promoActive = false;
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);
// }

// void main() {
//   var login = 'Staff';
//   var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
//   print(nav2);
// }

// void main () {
//   var listOfInts = [1, 2, 3];
//   var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
//   assert(listOfStrings[1] == '#1');
//   print(listOfStrings);
// }


// Praktikum 4
// ------------------------------------------------
// void main () {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }
// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//     return (b, a);
// }

// Fungsi tukar dideklarasikan di luar main
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

// void main() {
//   var record = (1, 2); // Record yang sesuai dengan (int, int)
//   print('Original record: $record');

//   var swapped = tukar(record);
//   print('Swapped record: $swapped');
// }

// void main() {
//   // Inisialisasi record dengan tipe (String, int)
//   (String, int) mahasiswa = ('Faiz Nala Samudera', 2241760043);
//   print(mahasiswa);

//   (String, int) mahasiswa2; 
//   mahasiswa2 = ('Salam Salami', 2241760044); 
//   print(mahasiswa2);
// }

void main() {
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
