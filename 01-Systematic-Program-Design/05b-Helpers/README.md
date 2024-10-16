# Yardımcı Fonksiyonlar (Helpers) Nedir ve Nasıl Kullanılır?

## Yardımcı Fonksiyonlar Nedir?
Yardımcı fonksiyonlar (helpers), büyük ve karmaşık bir fonksiyonun daha küçük, yönetilebilir parçalara ayrılmasına yardımcı olan fonksiyonlardır. Yardımcı fonksiyonlar, kodun okunabilirliğini ve sürdürülebilirliğini artırır. Her yardımcı fonksiyon, belirli bir görevi gerçekleştirir ve genellikle birden fazla kez kullanılabilir.

## Yardımcı Fonksiyonların Faydaları
1. **Karmaşıklığı Azaltır:** Büyük fonksiyonlar, farklı işlevlere sahip alt görevler içeriyorsa, bunları ayrı fonksiyonlara bölmek, kodun daha anlaşılır ve yönetilebilir olmasını sağlar.
   
2. **Yeniden Kullanılabilirlik:** Yardımcı fonksiyonlar, belirli görevleri yerine getiren modüller olarak kullanılabilir. Aynı işlem farklı yerlerde gerektiğinde, bu fonksiyonlar tekrar çağrılabilir.

3. **Test Edilebilirlik:** Küçük fonksiyonlar daha kolay test edilebilir. Her fonksiyon, belirli bir giriş için doğru çıktıyı üretip üretmediği açısından kolayca sınanabilir.

4. **Kodun Okunabilirliği:** Bir fonksiyonun içinde başka fonksiyonlar çağrıldığında, kod daha temiz ve anlaşılır hale gelir. Fonksiyon adları, işlevleri hakkında bilgi verir, böylece ne yaptıkları daha hızlı anlaşılabilir.

5. **Hata Ayıklamayı Kolaylaştırır:** Kod bölündüğünde, her bir parça ayrı ayrı test edilebilir ve hatalar daha hızlı bulunup düzeltilebilir.

## Yardımcı Fonksiyonlar Nasıl Kullanılır?

Yardımcı fonksiyonlar, ana fonksiyonun gerçekleştireceği görevleri küçük alt görevler olarak ele alır. Ana fonksiyon, bu alt görevler için yardımcı fonksiyonları çağırır. Aşağıda bir örnek üzerinden açıklayalım:

### Örnek:
Bir resim galerisinde resimleri boyutlarına göre sıralayıp yan yana dizmek istiyoruz.

```racket
(define (arrange-images images)
  (layout-images (sort-images images)))

(define (sort-images images)
  (cond
    [(empty? images) empty]
    [else (insert (first images) (sort-images (rest images)))]))

(define (insert img sorted-images)
  (cond
    [(empty? sorted-images) (list img)]
    [(larger? img (first sorted-images)) 
     (cons img sorted-images)]
    [else (cons (first sorted-images) 
                (insert img (rest sorted-images)))]))

(define (larger? img1 img2)
  (> (* (image-width img1) (image-height img1))
     (* (image-width img2) (image-height img2))))
