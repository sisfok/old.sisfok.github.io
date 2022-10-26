---
title: Penyeleksian Kondisi
author: Deo Valiandro
date: '2021-05-16'
layout: default
---

Peyeleksian adalah pilihan atau opsi dengan suatu syarat tertentu.

Jika syarat yang diberikan memenuhi, maka semua statement dalam blok kondisi
tersebut akan dijalankan, namun jika tidak maka semua stetement dalam blok itu
dilewati dan tidak dijalankan.

Contohnya, jika nilai sama dengan atau lebih dari 90 maka mahasiswa tersebut
mendapatkan nilai A, jika nilainya adalah dalam rentang 80-90 maka mahasiswa
tersebut mendapatkan nilai B, dan seterusnya.

Disini dilakukan perulangan dengan mengecek nilai mahasiswa tersebut, jika
memenuhi atau terdapat dalam rentang tertentu, maka mahasiswa tersebut akan
mendapat nilai ini.

Dalam Java terdapat dua macam penyeksian kondisi yaitu "If-else" dan "Switch".

## If-Else

Bentuk if-else adalah bentuk jika-maka, jika memenuhi syarat ini, lakukan ini,
jika tidak maka cek ke syarat berikutnya.

Bentuk umumnya adalah:

```java
if ( syarat1 ) {
    //statement yang akan dijalankan ketika syarat1 = true
} if else ( syarat2 ) {
    //statement yang akan dijalankan ketika syarat2 = true
} else {
    //statement yang akan dijalankan ketika semua syarat false
}
```

Aturannya:

Berikut ini hal yang harus diketahui ketika menggunakan "If-else":

1.  If statement bisa tidak memiliki "else" statement, "else" statement harus
    terletak setelah semua "else If" statement (jika ada).
2.  If statement bisa memiliki banyak "else if" statement dan semuanya harus
    terletak sebelum "else" statement.
3.  Ketika salah satu "else if" statement dijalankan, tidak ada "else if"
    lainnya yang akan dijalankan.

Contoh:

```java
int nilai = 50;

if (nilai <= 50) {
    System.out.println("C");
} if else (nilai <= 85) {
    System.out.println("B");
} if else (nilai > 85) {
    System.out.println("A");
} else {
    System.out.println("Eror");
}
```

## Switch

Pada switch terdapat syarat yang digunakan untuk pengujian terhadap daftar nilai
yang ada.

Setiap nilai (daftar nilai) ini disebut case, dan syarat akan diperiksa untuk
setiap case. Jika daftar case tidak ada yang memenuhi, maka akan otomatis
ke `default`.

Bentuk umumnya:

```java
switch ( test_variable) {
    case value :
        //statement
        break;
    case value :
        //statement
        break;
    default :
        //statement
}
```

Switch memerlukan `break` untuk menghentikan pengujian ketika pengujian itu
sudah memenuhi persyaratan yang diberikan.

`break` digunakan untuk menghentikan pencarian jika kondisi yang dicari sudah
memenuhi (Baca bagian [Jump Statement](/2021/05/18/jump-statement.html)).

Contoh penggunaan:

```java
int a = 5;
switch (a) {
    case 1:
        System.out.println("You chose One");
        break;
    case 2:
        System.out.println("You chose Two");
        break;
    case 3:
        System.out.println("You chose Three");
        break;
    case 4:
        System.out.println("You chose Four");
        break;
    case 5:
        System.out.println("You chose Five");
        break;
    default:
        System.out.println("Invalid Choice");
}
```

