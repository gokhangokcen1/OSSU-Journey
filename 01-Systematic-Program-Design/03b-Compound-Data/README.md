# Compound Data - Bileşik Veri 

Compound data, programlama dillerinde birden fazla değeri bir arada tutmak için kullanılan veri yapılarıdır. Bu tür veri yapılarına, bir nesnenin farklı özelliklerini bir araya getirip yönetmek için başvurulur. Racket gibi fonksiyonel programlama dillerinde, `define-struct` yapısıyla compound data türleri oluşturulur.

Bu yapıyı kullanarak, örneğin bir konum (position) veya bir sporcu (player) gibi yapılar tanımlanabilir. Her bir yapı, birden fazla bileşene sahiptir; bu bileşenlere yapıyı oluşturan veriler denir. Örneğin, bir konum yapısında `x` ve `y` koordinatları tutulabilirken, bir sporcu yapısında ise ad (fn) ve soyad (ln) tutulabilir.

Compound data ile ilgili temel işlevler şunlardır:

1. Constructor (Yapıcı): Bu fonksiyon, yapının bir örneğini (instance) oluşturur. Örneğin, make-pos bir konum yapısının bir örneğini oluşturur.

```
(define P1 (make-pos 3 6)) ; 3 ve 6 değerleriyle bir pos yapısı oluşturur.
```
2. Selectors (Seçiciler): Yapının içinde tutulan verilere erişim sağlar. Örneğin, pos-x fonksiyonu bir konum yapısındaki x değerini alır.

```
(pos-x P1) ; 3 değerini döner
```

3. Predicate (Koşul Fonksiyonu): Bu fonksiyon, verilen değerin belirli bir veri yapısına ait olup olmadığını kontrol eder. Örneğin, pos? fonksiyonu, bir değerin pos yapısında olup olmadığını kontrol eder.

```
(pos? P1) ; true döner
```

Bu prensipler bir sporcu veya başka bir yapı için de benzer şekilde uygulanabilir. İkinci örnekte, `make-player` fonksiyonu bir sporcu yapısı oluşturur ve bu yapının içinde sporcuların ad ve soyad bilgileri tutulur.

Compound data yapılarının kullanım alanları geniştir ve daha büyük programlar yazarken organize ve modüler veri yapılarına ihtiyaç duyduğumuzda büyük fayda sağlar. Örneğin, kodun son bölümünde bir inek yapısı (`cow`) tanımlanmıştır. Bu inek, ekranda hareket eden bir dünya (world) programında kullanılır. İnek ekranda sağa sola gider ve kenara ulaştığında yön değiştirir. İnek yapısındaki `x` koordinatı, ekran üzerindeki konumunu, `dx` ise hızını temsil eder. Bu veri yapısı ve fonksiyonlar sayesinde, ekrandaki inek görselini sürekli güncelleyip hareket ettiren bir simülasyon oluşturulur.

Bu genel yapılar sayesinde, farklı bileşenleri bir arada yönetmek ve karmaşık davranışlar tasarlamak mümkün hale gelir.

