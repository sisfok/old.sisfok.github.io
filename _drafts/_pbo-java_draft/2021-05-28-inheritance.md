---
title       : Inheritance
author      : Deo Valiandro. M
date        : '2021-05-28'
signed-by   : Deo Valiandro. M <valiandrod@gmail.com>
layout      : default
---

Inheritance adalah pewarian sifat. Class yang berisafat umum akan mewariskan
sifatnya ke class yang bersifat khusus. Misalnya class `Manusia` akan memiliki
class turunan seperti `Ayah`, `Ibu` dan `Anak`.

Ketika meng-extend sebuah class, maka semua member non-private termasuk variabel
dan method akan diwariskan ke class tersebut.

Class `Manusia` akan memiliki atribut dan method tersendiri, misalnya `nama`,
`jenisKelamin` dan `umur`. Class `Ayah` misalnya akan memiliki method dan
atribut dari class `Manusia` namun akan memiliki sifat-sifat dan atribut yang
khusus, seperti `suara`, `gayaBerjalan`, `warnaKulit`, dsb.

Untuk mewariskan sifat, digunakan keyword `extend`, dan untuk memanggil atribut
dan method dari class induk, menggunakan keyword `super`. Keyword yang kedua
adalah `implements` untuk inheritance/mewariskan dari sebuah interface.

![Inheritance]
(https://static.studytonight.com/java/images/inheritance-in-java.jpg)

Keyword `super` dapat digunakan untuk memanggil property di class parent, bahkan
bisa memanggil constructor class parent.

Misalnya:

```java
class Manusia {

    private String nama, jenisKelamin;
    int umur;

    public Manusia(String nama, String jenisKelamin, int umur) {
        this.nama = nama;
        this.jenisKelamin = jenisKelamin;
        this.umur = umur;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getJenisKelamin() {
        return jenisKelamin;
    }

    public void setJenisKelamin(String jenisKelamin) {
        this.jenisKelamin = jenisKelamin;
    }

    public int getUmur() {
        return umur;
    }

    public void setUmur(int umur) {
        this.umur = umur;
    }
}

```

Class `Ayah` akan mewarisi sifat-sifat dari class `Manusia`.

```java
class Ayah extends Manusia implements Orang {

    public Ayah(String nama, String jenisKelamin, int umur) {
        super(nama, jenisKelamin, umur);
    }

    public void makan() {
        System.out.println("Ayah makan");
    }

    public void suara() {
        System.out.println("Ayah bersuara");
    }

    public void jalan() {
        System.out.println("Ayah berjalan");
    }
}
```

Keuntungan dari inheritance adalah:
1. Reusability dari code, kita tidak perlu menulis kode berulang-ulang.
2. Mendukung polimorphisme dengan adanya method overriding (dibahas pada bab
   polimorphisme)

Sedangkan kerugiannya adalah class parent dan child akan memiliki kesamaan
identik, sehingga apabila terjadi perubahan di class parent, maka akan otomatis
mengubah juga class child. Hal ini membuat adanya saling ketergantungan.


## Jenis Inheritance

Java hanya mendukung 3 jenis inheritance berikut:
1. Single inheritance
2. Multilevel inheritance
3. Heirarchical inheritance

Java tidak mendukung multiple inheritance dengan alasan keamanan dari masalah
`Deadly Diamond of Death`.

![inheritance-in-java]
(https://static.studytonight.com/java/images/types-of-inheritance.png)

### Single inheritance

Ini misalnya ketika ada pewarisan suatu class ke class lain, misalnya:

```java
class A{
    int a = 10;
    void show() {
        System.out.println("a = "+a);
    }
}

public class B extends A{
    
    public static void main(String[] args) {
        B b = new B();
        b.show();        
    }
}
```

### Multilevel Inheritance

Ini misalnya pada sebuah class C extends class B, lalu class B extends class A.
Misalnya:

```java
class A{
    int a = 10;
    void show() {
        System.out.println("a = "+a);
    }
}

class B extends A{
    int b = 10;
    void showB() {
        System.out.println("b = "+b);
    }
}

public class C extends B{
    
    public static void main(String[] args) {
        C c = new C();
        c.show();
        c.showB();
    }
}
```

### Hierarchical Inheritance

Ini terjadi jika ada dua class memiliki satu parent class yang sama. Misalnya
class B dan class C extends class A. Contohnya:

```java
class A{
    int a = 10;
    void show() {
        System.out.println("a = "+a);
    }
}

class B extends A{
    int b = 10;
    void showB() {
        System.out.println("b = "+b);
    }
}

public class C extends A{   
    public static void main(String[] args) {
        C c = new C();
        c.show();
        B b = new B();
        b.show();
    }
}
```

### Multiple Inheritance [tidak didukung Java]

Multiple inheritance adalah inheritance sebuah class, misalnya class C yang
mempunyai 2 buah parent, misalnya class B dan class A.

Mengapa multiple inheritance tidak didukung, karena:
1. Untuk menghilangkan ambiguitas,
2. Untuk mempermudah review code dan clear design.

![multiple-inheritance]
(https://static.studytonight.com/java/images/multiple-inheritance-problem.jpg)


## Overriding Method
Dalam Java, sebuah method yang sama antara `superclass` dan `subclass`
dibolehkan. Ketika sebuah method dengan nama yang sama dengan method yang ada
pada `superclass` dibuat pada `subclass`, maka method yang ada di `superclass`
ditimpa (`override`) dengan method yang baru.

Sehingga, ketika method tersebut dipanggil pada `subclass`, maka yang akan
dieksekusi adalah method yang ada pada `subclass`.

Contohnya:

```java
class Person{
    String name;
    int yearOfBirth;
    double height;
    double weight;
    int currentYear = 2020;

    Person(String i, int j, double k, double l){
        name = i;
        yearOfBirth = j;
        height = k;
        weight = l;
    }

    int myAge(){
        return currentYear - yearOfBirth;
    }
}

class Deo extends Person{
    Deo(String i, int j, double k, double l){
        super(i,j,k,l);
        super.myAge();
    }

    int myAge(){
        return currentYear + yearOfBirth;
    }
}

class OverridingExample{
    public static void main(String args[]){
        Deo deo = new Deo("Deo", 2002, 170.0, 50.0);
        System.out.println("My name is " + deo.name);
        System.out.println("My ages is " + deo.myAge());
    }
}
```

Dimana terlihat, bahwa terdapat dua method yang sama, yang pertama method
`myAge` di `superclass` dan method `myAge` yang kedua di `subclass`.

Walaupun sudah panggil dengan menggunakan `super.myAge()`, namun ketika di
eksekusi, hasil yang keluar adalah method yang terdapat pada `subclass`, yang
artinya sudah ditimpa/overriding.