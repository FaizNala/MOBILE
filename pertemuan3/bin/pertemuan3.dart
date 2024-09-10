import 'package:pertemuan3/pertemuan3.dart' as pertemuan3;

// void main() {
//   String test = "test2";
//   if (test == "test") {
//     print('Test1');
//   } else if (test == "test2") {
//     print('Test2');
//   } else {
//     print('Something else');
//   }

//   if (test == "test2") {
//     print("Test2 Again");
//   }

//   bool test1 = true;
//   if (test1) {
//     print("Kebenaran");
//   }  
// }

// void main() {
//   int counter = 0;
//   while (counter < 33) {
//     print(counter);
//     counter++;
//   }
// }

// void main() {
//   int counter = 0;
//   do {
//     print(counter);
//     counter++;
//   } while (counter < 77);
// }

// void main() {
//   for (int Index = 10; Index < 27; Index) {
//     print(Index);
//   }
// }

// void main() {
//     for (int Index = 0; Index < 27; Index++) {
//         if (Index == 21) break;
//         else if (Index > 1 && Index < 7)continue;
//         print(Index);
//     }
// }

void main() {
  const namaLengkap = "Faiz Nala Samudera";
  const nim = "2241760043";

  print("Bilangan prima dari 0 sampai 201:");

  for (int i = 2; i <= 201; i++) {
    bool isPrime = true;

    for (int j = 2; j * j <= i; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print("$i");
      print("Ditemukan oleh: $namaLengkap ($nim)");
    }
  }
}