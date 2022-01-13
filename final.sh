#!/bin/bash

ppPath=`zenity --file-selection --title="Profil fotosu secin!"`

kimsin=$(zenity --forms --title="Kimsiniz" \
	--text="Kendiniz hakkında bilgileri giriniz." \
	--separator="|" \
	--add-entry="isim" \
	--add-entry="Sizi tanımlayan kelime" \
	--add-entry="aciklama")
    
IFS='|' read -ra ADDR <<< "$kimsin"

isim=${ADDR[0]}

tanim=${ADDR[1]}

aciklama=${ADDR[2]}

# iletişim --------------------------------------------------------------------------------------------------------
contact=$(zenity --forms --title="iletişim" \
	--text="İletişim bilgilerini giriniz." \
	--separator="|" \
	--add-entry="E-posta" \
	--add-entry="telefon" \
    --add-entry="github" \
	--add-entry="linkedIn" \
	--add-entry="adres")
IFS='|' read -ra ADDR <<< "$contact"
eposta=${ADDR[0]}
telefon=${ADDR[1]}
github=${ADDR[2]}
linkedIn=${ADDR[3]}
adres=${ADDR[4]}

iletisim="<div class=\"my-3 p-3 bg-body rounded shadow-sm bg-dark\">
    <h2 class=\"text-dark\">İletişim</h2>
    <br>
    <h4 class=\"text-dark\">E-posta</h4>
    <p class=\"text-dark\"><a href=\"$eposta\">$eposta</a></p>

    <h4 class=\"text-dark\">Telefon</h4>
    <p class=\"text-dark\">$telefon</p>

    <h4 class=\"text-dark\">Github</h4>
    <p class=\"text-dark\"><a href=\"$github\">$github</a></p>

    <h4 class=\"text-dark\">LinkedIn</h4>
    <p class=\"text-dark\"><a href=\"$linkedIn\">$linkedIn</a></p>

    <h4 class=\"text-dark\">Adres</h4>
    <p class=\"text-dark\">$adres</p>
</div>\n"
#--------------------------------------------------------------------------------------------------------
innerDeneyim=""

zenity --width 500 --question --text="DENEYİM EKLEMEK ISTIYOR MUSUNUZ?"
deger=$?

while [ "$deger" == "0" ]
do
  
  deneseim=$(zenity --forms --title="DENEYİM" \
	--text="DENEYİM bilgileri giriniz." \
	--separator="|" \
	--add-entry="Çalıştığınız yerdeki ünvanınız:" \
	--add-entry="İşvereniniz:" \
    --add-entry="Çalıştığınız şehir:" \
	--add-entry="İş açıklamasını giriniz:")
IFS='|' read -ra ADDR <<< "$deneseim"

    unvan=${ADDR[0]}
    isveren=${ADDR[1]}
    sehir=${ADDR[2]}
    aciklamasi=${ADDR[3]}

    baslangic="$(zenity --calendar \
       --title="Tarih seçin" \
       --text="Çalışmaya başlama tarihiniz:")"

    bitis="$(zenity --calendar \
       --title="Tarih seçin" \
       --text="Çalışmanın bitiş tarihi:")"
       

  innerDeneyim="$innerDeneyim
            <div class=\"d-flex text-muted pt-3\">
                <svg class=\"bd-placeholder-img flex-shrink-0 me-2 rounded\" width=\"64\" height=\"64\"
                    xmlns=\"http://www.w3.org/2000/svg\" role=\"img\" aria-label=\"Placeholder: 32x32\"
                    preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\">
                    <title>Placeholder</title>
                    <rect width=\"100%\" height=\"100%\" fill=\"#007bff\"></rect><text x=\"50%\" y=\"50%\" fill=\"#007bff\"
                        dy=\".3em\">32x32</text>
                </svg>

                <div class=\"pb-3 mb-0 small lh-sm border-bottom w-100\">
                    <div class=\"d-flex justify-content-between\">
                        <h4>$unvan</h4>

                        <a href=\"#\"><strong> Tarih: </strong> $baslangic - $bitis</a>
                    </div>
                    <span class=\"d-block\"><strong> İşveren: </strong> $isveren </span>
                    <span class=\"d-block\"><strong> Şehir: </strong> $sehir </span>
                    <span class=\"d-block\"><strong> Açıklama: </strong> $aciklamasi </span>
                </div>
            </div>
        \n"
    zenity --question --width 500 --text="DENEYİM EKLEMEYE DEVAM ETMEK ISTIYOR MUSUNUZ?"
    deger=$?
done

deneyim="<div class=\"my-3 p-3 bg-body rounded shadow-sm bg-dark\">
            <h4 class=\"border-bottom pb-2 mb-0\">DENEYİM</h4>
            $innerDeneyim
        </div>"
#--------------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------------
inneregitim=""

zenity --width 500 --question --text="EĞİTİM BİLGİSİ EKLEMEK ISTIYOR MUSUNUZ?"
deger=$?

while [ "$deger" == "0" ]
do
  
  eytim=$(zenity --forms --title="EĞİTİM" \
	--text="Eğitiminiz hakkında bilgileri giriniz." \
	--separator="|" \
	--add-entry="Okulun adı:" \
	--add-entry="okulun bulunduğu şehir:" \
    --add-entry="dereceniz:" \
	--add-entry="Açıklamasını giriniz:")
IFS='|' read -ra ADDR <<< "$eytim"

${ADDR[0]}

    okul=${ADDR[0]}
    sehir=${ADDR[1]}
    derece=${ADDR[2]}
    aciklamasi=${ADDR[3]}
    
    baslangic="$(zenity --calendar \
       --title="Tarih seçin" \
       --text="okulun başlama tarihini:")"

    bitis="$(zenity --calendar \
       --title="Tarih seçin" \
       --text="okulun bitiş tarihi:")"
       

  inneregitim="$inneregitim
            <div class=\"d-flex text-muted pt-3\">
                <svg class=\"bd-placeholder-img flex-shrink-0 me-2 rounded\" width=\"64\" height=\"64\"
                    xmlns=\"http://www.w3.org/2000/svg\" role=\"img\" aria-label=\"Placeholder: 32x32\"
                    preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\">
                    <title>Placeholder</title>
                    <rect width=\"100%\" height=\"100%\" fill=\"#007bff\"></rect><text x=\"50%\" y=\"50%\" fill=\"#007bff\"
                        dy=\".3em\">32x32</text>
                </svg>

                <div class=\"pb-3 mb-0 small lh-sm border-bottom w-100\">
                    <div class=\"d-flex justify-content-between\">
                        <h4>$okul</h4>

                        <a href=\"#\"><strong> Tarih: </strong>$baslangic - $bitis</a>
                    </div>
                    <span class=\"d-block\"><strong> Derece: </strong> $derece </span>
                    <span class=\"d-block\"><strong> Şehir: </strong> $sehir </span>
                    <span class=\"d-block\"><strong> Açıklama: </strong> $aciklamasi </span>
                </div>
            </div>
        \n"
    zenity --width 500 --question --text="EĞİTİM BİLGİSİ EKLEMEYE DEVAM ETMEK ISTIYOR MUSUNUZ?"
    deger=$?
done

egitim="<div class=\"my-3 p-3 bg-body rounded shadow-sm bg-dark\">
            <h4 class=\"border-bottom pb-2 mb-0\">EĞİTİM</h4>
            $inneregitim
        </div>"
#referans--------------------------------------------------------------------------------------------------------

innerReferans=""

zenity --width 500 --question --text="REFERANS BİLGİSİ EKLEMEK ISTIYOR MUSUNUZ?"
deger=$?

while [ "$deger" == "0" ]
do
  
  reficin=$(zenity --forms --title="REFERANS" \
	--text="Referansınız hakkında bilgileri giriniz." \
	--separator="|" \
	--add-entry="Referans adı:" \
	--add-entry="Çalıştığı şirket:" \
    --add-entry="telefon numarası:" \
    --add-entry="maili:")
    IFS='|' read -ra ADDR <<< "$reficin"

    referansAd=${ADDR[0]}
    sirketAd=${ADDR[1]}
    referansTel=${ADDR[2]}
    referansMail=${ADDR[3]}

  innerReferans="$innerReferans
            <tr>
                <th>$referansAd</th>
                <td>$sirketAd</td>
                <td>$referansTel</td>
                <td>$referansMail</td>
            </tr>
        \n"
    zenity --width 500 --question --text="REFERANS BİLGİSİ EKLEMEYE DEVAM ETMEK ISTIYOR MUSUNUZ?"
    deger=$?
done

referans="<div class=\"my-3 p-3 bg-body rounded shadow-sm bg-dark\">

    <h2 class=\"text-dark\">Referanslar</h2>

    <table class=\"table table-light table-hover\">
        <thead>
            <tr>
                <th scope=\"col\">Referans adı</th>
                <th scope=\"col\">Çalıştığı şirket</th>
                <th scope=\"col\">telefon numarası</th>
                <th scope=\"col\">maili</th>
            </tr>
        </thead>
        <tbody>
            $innerReferans
        </tbody>
    </table>
</div>"

#--------------------------------------------------------------------------------------------------------

#beceriler--------------------------------------------------------------------------------------------------------

innerBeceri=""

zenity --width 500 --question --text="BECERİ BİLGİSİ EKLEMEK ISTIYOR MUSUNUZ?"
deger=$?

while [ "$deger" == "0" ]
do
  qual=$(zenity --forms --title="BECERİ" \
	--text="Beceri bilgileri giriniz." \
	--separator="|" \
	--add-entry="beceri adı:" \
	--add-entry="açıklaması:" \
    --add-entry="Beceri seviyesi:")
IFS='|' read -ra ADDR <<< "$qual"

    beceriAd=${ADDR[0]}
    beceriAciklama=${ADDR[1]}
    beceriSeviye=${ADDR[2]}

  innerBeceri="$innerBeceri
            <tr>
                <th>$beceriAd</th>
                <td>$beceriAciklama</td>
                <td>$beceriSeviye</td>
            </tr>
        \n"
    zenity --width 500 --question --text="BECERİ BİLGİSİ EKLEMEYE DEVAM ETMEK ISTIYOR MUSUNUZ?"
    deger=$?
done

beceri="<div class=\"my-3 p-3 bg-body rounded shadow-sm bg-dark\">

    <h2 class=\"text-dark\">BECERİLER</h2>

    <table class=\"table table-light table-hover\">
        <thead>
            <tr>
                <th scope=\"col\">Beceri adı</th>
                <th scope=\"col\">açıklamsı</th>
                <th scope=\"col\">seviyesi</th>
            </tr>
        </thead>
        <tbody>
            $innerBeceri
        </tbody>
    </table>
</div>"

#--------------------------------------------------------------------------------------------------------

html="<!doctype html>
<html lang=\"tr\">

<head>
    <meta charset=\"utf-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <meta name=\"description\" content=\"\">
    <meta name=\"author\" content=\"Adem PELİT\">
    <meta name=\"generator\" content=\"Hugo 0.88.1\">
    <title>$isim-CV</title>



    <link href=\"bootstrap.min.css\" rel=\"stylesheet\">
    <link href=\"offcanvas.css\" rel=\"stylesheet\">
</head>


<main class=\"container\">
    <div class=\"d-flex align-items-center p-3 my-3 text-white bg-purple rounded shadow-sm\">
        <img class=\"me-3 rounded-circle\" src=\"$ppPath\" alt=\"\" width=\"150\">
        <div class=\"lh-1\">
            <h1 class=\"h1 mb-0 text-white lh-1\">$isim</h1> <small>$tanim</small>
        </div>
    </div>

    <body class=\"bg-light\">
    <div class=\"my-3 p-3 bg-body rounded shadow-sm bg-dark\">
            <h2 class=\"text-dark\">Açıklama</h2>
            <p class=\"text-dark\">
            $aciklama
            <br>
            </p>
        </div>
        
$iletisim
$deneyim
$egitim
$beceri
$referans 
</main>


<script src=\"../assets/dist/js/bootstrap.bundle.min.js\"></script>

<script src=\"offcanvas.js\"></script>
</body>

</html>"

echo -e $html > "$isim-CV.html"

zenity --info \
       --title "Başarı" \
       --width 500 \
       --height 100 \
       --text "CV başarılı bir şekilde oluşturuldu."