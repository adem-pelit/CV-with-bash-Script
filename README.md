# CV-with-bash-Script
HTML cv oluşturan bash script algoritması

# Bash Script Nedir
Bash script Linux üzerinde çalışan kabuk programlama arayüzüdür. Final.sh adlı Bash kodunda ek olarak zenity isimli kütüphane kullanılmıştır. Zenity ise kabuk programlama yapılırken görsel arayüze ihtiyaç duyulması durumunda kullanılabilecek bir kütüphanedir.

# Programın çalıştırılması
Bash scriptin çalıştırılması için bilgisayarınıza bir linux dağıtımının kurulu olması gerekmektedir. Zenity arayüzü aşağğıdaki komutlar kullanılarak sisteme yüklenebilir. Terminal açıldıktan sonra:
```
$ sudo apt-get update -y
$ sudo apt-get install -y zenity
```
Yukarıdaki işlemler gerçekleştirilebilir. Ardından Final.sh adlı dosyanın çalıştırılması gerekmektedir. Bu işlem aşağıdaki komut ile sağlanabilir.
```
$ bash final.sh
```
Bu işlem sonrasında açılan ekranlar sayesinde cv içeriğinin doldurulması sağlanmaktadır.

# Çıktı
Program çalıştığında verilerin girildiği cv html formatında kaydedilir. Bu CV içeriğinde: 
- Temel Bilgiler
- iletişim bilgileri
- deneyim
- eğitim
- referans
- beceriler 

Kategorileri bulunmaktadır. html sitesinin yanındas repoda bulunan css dosyaları ve profil resmi gerekmektedir.
