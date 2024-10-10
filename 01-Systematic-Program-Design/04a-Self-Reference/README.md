# Self-Reference (Kendi Kendine Başvuru)

Self-reference, bilgisayar bilimlerinde, özellikle de veri yapıları ve fonksiyonlar söz konusu olduğunda önemli bir kavramdır. **Kendi kendine başvuru**, bir yapının, o yapının başka bir örneğine başvurduğu durumu ifade eder. Bu, özellikle listeler gibi yinelenen (recursive) veri yapılarında sıkça karşımıza çıkar. Bu kavramı anlamak, listeler üzerinde çalışan fonksiyonlar yazmak için çok önemlidir.

## Liste Nedir?

Bir liste, bir dizi veriden oluşan bir yapıdır. Bir listenin iki temel durumu olabilir:

1. **Boş liste**: Hiçbir elemanı yoktur.
2. **Bir eleman ve kalan liste**: Bir eleman ve bir diğer liste içerir.

Bu liste tanımı, aslında kendi kendine başvuru içerir. Çünkü listenin bir elemanı ve geri kalanı da yine bir **liste** olabilir. Dolayısıyla, bir liste ya tamamen boş olur ya da içinde başka bir liste barındırır.

## Kendi Kendine Başvuru Nasıl Çalışır?

Bir listeyle işlem yaparken (örneğin, listenin elemanlarını toplamak, bir eleman aramak gibi), her zaman listenin ilk elemanına bakıp daha sonra kalan kısmını işleme devam edersiniz. **Kendi kendine başvuru** burada devreye girer: Bir listenin geri kalanı yine bir liste olduğundan, aynı işlemi tekrar tekrar, daha küçük listeler üzerinde yapmaya devam ederiz.

## Fonksiyonlarla Self-Reference

Bir liste üzerinde işlem yapan bir fonksiyon yazdığımızı düşünelim. Bu fonksiyonun, iki ana durumu kontrol etmesi gerekir:

1. **Liste boş mu?** Eğer boşsa, hemen sonuç döndürürüz.
2. **Liste boş değilse**, listenin ilk elemanını alır ve geri kalan liste üzerinde aynı işlemi tekrar yapar.

Örneğin, bir fonksiyonun şablonu şöyle olabilir:

```
(define (liste-fonksiyonu liste)
  (cond [(empty? liste) ...] ; Boş listeyse
        [else
         (... (first liste)    ; İlk eleman
              (liste-fonksiyonu (rest liste)))]))  ; Kalan liste üzerinde tekrar çalış
