---
title: Jump Statement
author: Deo Valiandro
date: '2021-05-18'
layout: default
---

Jump statement adalah perintah untuk memindahkan alur program ke program yang
lain.

Java mengenal tiga buah perintah tersebut yaitu `break`, `continue` dan
`return`.

## Break

Break merupakan perintah yang dapat digunakan untuk menghentikan proses
perulangan dengan paksa.

Berikut ini contoh penggunaan break dalam while, program akan berhenti ketika
nilai i = 2.

Contoh:

```java
int n = 10;
int i = 0;

while (i<n) {
    System.out.println(i);
    i++;
    
    if (i == 2) {
        break;
    }
}
```

## Continue

Continue adalah perintah yang dapat digunakan untuk meloncati proses perulangan.

Continue hanya akan meloncati proses perulangan satu kali proses perulangan
masih tetap berjalan selama hasil lompatannya itu masih berlaku dalam perulangan
tersebut.

Contoh:

```java
for (int i=0; i<10; i++) {
    if (i == 5) {
        continue;
    }

    System.out.println(i);
}
```

Program di atas akan menampilkan bilangan mulai dari 0 sampai 10, tetapi angka 5
tidak akan ditampilkan karena ketika nilai i = 5 maka perintah `continue` akan
dijalankan.

## Return

Return adalah perintah dalam java yang digunakan di dalam method. Return akan
mengembalikan suatu nilai dari sebuah method yang dipanggil.

Return akan dibahas di pembahasan tentang method.