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

## One Of: Biri 
Adından da anlaşılacağı gibi bu veri tipinde kullanıcından aldığımız değer daha önceden elimizdeki bazı değerlerden "biri" olabilir. Bunun için trafik lambası örneği verilebilir. Trafik lambasının 3 rengi vardır ve o anda bu üç renkten "biri" gözükür. 

* Belli sayıdaki değerlerden birini alacağınız durumlarda one of kullanılabilir. 

(Trafik lambası örneği)[https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/02-How-To-Design-Data/02-Data-Definition-traffic-light.rkt]


