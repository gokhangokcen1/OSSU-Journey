# How to Design Data - Veriyi nasıl tasarlarsın? 

Öncelikle if karşılaştırmasında şunu görmüştük: 

    (if (< 3 15)    
        "küçük"      
        "büyük")    

Bu karşılaştırmayı yapmanın bir diğer yolu da `cond` fonksiyonudur. 

Onun yazılış şekli de şöyledir.

    (cond   [(1. durum) (true durumunda dönecek ifade)]
            [(2. durum) (true durumunda dönecek ifade)]
            [(else (diğer durumlarda dönecek ifade))])

Cond fonksiyonunda kapalı parantezler [] içerisinde bir koşul ve true dönmesi durumunda gerçekleştirilecek ifade verilir. Eğer ki en üstteki koşul sağlanmazsa bir alttaki kapalı parantez içerisindei koşula bakılır. Böylelikle else (diğer) koşuluna gelene kadar böyle devam eder. Yukarıdaki durumların sağlanmadığı durumda da else bloğunda yazan ifade gerçekleşecektir.

Bir örnek üzerinden bakacak olursak:

    (cond   [(> 1 2) "1, 2'den buyuk"]
            [(= 1 2) "1, 2'ye esit"]
            [(< 1 2) "1, 2'den kucuk"])

Aynı ifade şöyle de yazılabilirdi 

    (cond   [(> 1 2) "1, 2'den buyuk"]
            [(= 1 2) "1, 2'ye esit"]
            [else "1, 2'den kucuk"])

--- 
Fonksiyon tasarlamasında olduğu gibi tarifler verinin tasarlanmasında da var. Burada farklı yapıdaki veriler için farklı tasarım tariflerini takip edeceğiz. 

Fonksiyon tasarımına ek olarak burada kullanılan kurallar da yorum satırı içerisinde yazılır. 

## One Of: Biri 
Adından da anlaşılacağı gibi bu veri tipinde kullanıcından aldığımız değer daha önceden elimizdeki bazı değerlerden "biri" olabilir. Bunun için trafik lambası örneği verilebilir. Trafik lambasının 3 rengi vardır ve o anda bu üç renkten "biri" gözükür. 

* Belli sayıdaki değerlerden birini alacağınız durumlarda one of kullanılabilir. 

[Trafik lambası örneği](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/02-How-To-Design-Data/02-Data-Definition-traffic-light.rkt)

## Atomic non-distinct (bölünemez, ayırt edilemeyen)
Veri basit bir şekilde ifade edilebiliyorsa atomic non-distinct olarak ifade edilebilir. Örneğin bir kelime ile ifade edilebiliyorsa ve bu kelime başka bir kelime ile karşılaştırılıyorsa buradaki verimiz atomic-non distinct bir yapıdadır. 

[Şehir ismi örneği](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/02-How-To-Design-Data/03-atomic-non-distinct.rkt)

## Interval (aralık)
Bu veri tipi belli bir sayı değerlerinden bahsediliyorsa kullanılır. Örneğin 1'den 100'e kadar olan sayılar üzerinden bir işlem yapacaksanız interval kullanılabilir.

[Koltuk numarası örneği BAŞLANGIÇ](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/02-How-To-Design-Data/05-interval.rkt)

[Koltuk numarası örneği TAMAMLANMIŞ](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/02-How-To-Design-Data/09-interval-aisle.rkt)

## Enumeration (seçenek listesi)
Enum (enumeration), sınırlı sayıda sabit ve farklı öğeyi temsil etmek için kullanılır. Bu öğeler genellikle renkler, harf notları veya sabit durumlar gibi kategoriler olabilir. Enum verileri stringler, sayılar veya diğer veri tipleriyle ifade edilebilir; ancak genellikle stringler tercih edilir. Enum yapıları, belli bir öğe kümesini belirtmek için kullanıldığından, çoğu durumda örnek vermek veya açıklama yapmak gereksizdir.

[Okul Harf Notu örneği BAŞLANGIÇ](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/02-How-To-Design-Data/06-enumeration.rkt)

[Okul Harf Notu örneği TAMAMLANMIŞ](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/02-How-To-Design-Data/10-enumeration-bump-up.rkt)

## Itemization (öğeleri sınıflandırma)

Itemization (öğeleri sınıflandırma), en az bir tanesi ayrı bir öğe olmayan 2 veya daha fazla alt sınıftan oluşan veriyi tanımlar. Enumlarda ise alt sınıfların hepsi birbirinden farklıdır. Itemization için kullanılan şablon, enumlar için kullanılan şablona benzerdir: her alt sınıf için bir koşul içeren bir cond yapısı kullanılır. Alt sınıfın kendine ait bir veri tanımı varsa, koşulun cevap kısmı bir yardımcı şablona çağrı içerir; aksi halde sadece parametreyi içerir.

[Trafik ışığı örneği TAMAMLANMIŞ](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/02-How-To-Design-Data/08-itemization-traffic-light.rkt)

[Geri sayım örneği BAŞLANGIÇ](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/02-How-To-Design-Data/08-itemization-traffic-light.rkt)

[Geri sayım örneği TAMAMLANMIŞ](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/02-How-To-Design-Data/11-itemization-countdown.rkt)