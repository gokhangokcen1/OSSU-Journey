# How to design worlds - Dünyaları nasıl tasarlarsın?

Önceki aşamalardan farklı olarak yapımızı iki temel parçaya bölüyoruz
1. Data definitions - yani veri tanımlamaları. Bu kısımda htdd kısmında öğrendiğimiz tariflere göre verilerimizin tanımlamalarını yapıyoruz
2. Functions - fonksiyonlarımızın, testlerimizin olduğu kısım 

Bunları yapabilmek için de öncelikle sabit kalan birimlerimizi ve zamanla değişen birimleri tespit etmemiz gerekir. Soldan sağa giden kedi örneğinde kedi resmi, kedinin çerçeve içerisinde dikey olarak aynı yerde olması, çerçeve sınırları gibi parametreler sabittir ve değişmez. Fakat kedinin yataydaki konumu sürekli olarak değişmektedir. 

Tasarım örneği:

![tasarım ornegi](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/03a-How-to-Design-Worlds/02-domain-analysis.png?raw=true)

"Dünya" tasarlıyorsak şu taslağı kullanırız:

    (define (main ws)
    (big-bang ws                   ; WS
                (on-tick   tock)     ; WS -> WS
                (to-draw   render)   ; WS -> Image
                (stop-when ...)      ; WS -> Boolean
                (on-mouse  ...)      ; WS Integer Integer MouseEvent -> WS
                (on-key    ...)))    ; WS KeyEvent -> WS

Her bir kısım için de ayrı fonksiyon tanımlamaları yaparız. 

## On-tick 
Her bir harekette, adımda, saniyede ne olacağı, neyin değişeceği. Soldan sağa giden bir kedi örneği üzerinden anlamaya çalışırsak, kedi her anda sağa doğru belli birim ilerlemektedir. 

Kedinin konumu = 0

kedinin sonraki konumu = 0 + 3 = 3

kedinin sonraki konumu = 3 + 3 = 6

bir on-tick fonksiyon örneğidir. 

## to-draw
Her adımda fonksiyonumuz ekrana bir görsel veriyorsa ki bunlar şekiller, resimler veya "text" olabilir. Her on-tick sonucuna göre görseli yaratır. Yine kedi örneğinde en başta başlangıç noktasında duran kedir bir sonraki on-tick anında daha sağda bir yerde çizilmelidir. 

## stop-when 
Üstteki fonksiyonlar birer döngüye sahiptir ve durdurulmazlar ise sonsuza kadar giderler. Stop-when (... olduğunda durdur) bizim bu döngüyü kırmak için bir koşul belirlememizi sağlar. Soldan sağa ilerleyen kedi örneğinde, kedi çerçevenin sağ sınırına geldiğinde döngü bitsin ve başa dönsün. Çünkü devam ederse artık kedi görseli ekranda gözükmeyecektir. 

## on-mouse ve on-key
İkisi de aslında stop-when ile aynı işlevi görüyor. stop-when bir koşul gerçekleştiğinde döngüyü kırıp başa dönüyordu; on-mouse fare üzerindeki bir hareket gerçekleştiğinde (örneğin sol tıklandığında) başa dönmeye, on-key ise bir klavye hareketi gerçekleştiğinde (space tuşuna basmak) kedi çerçevenin en sağında olmasa bile döngüyü kırıp başa dönmeye yarar. 

Tüm bu fonksiyonlar ayrı ayrı yazılmalıdır ve fonksiyon tasarım kuralları her biri için ayrı ayrı geçerlidir. 

[Kedi BAŞLANGIÇ](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/03a-How-to-Design-Worlds/03-cat-done.rkt)

[Kedi TAMAMLANMIŞ](https://github.com/gokhangokcen1/OSSU-Journey/blob/main/01-Systematic-Program-Design/03a-How-to-Design-Worlds/01-cat.rkt)