# Doğal Sayılar ve Racket ile Fonksiyonlar

Bu notlar, Racket kullanarak doğal sayılarla nasıl çalışılacağını ve temel fonksiyonların nasıl tanımlanacağını açıklamaktadır.

## Doğal Sayılar (Naturals) Tanımı

Bir doğal sayı ya `0` ya da `add1` fonksiyonuyla elde edilen bir sayıdır. Bu tanım, doğal sayıların sıfırdan başlayıp her seferinde bir artırılarak oluşturulabileceğini anlatır.

```racket
;; Natural is one of:
;;  - 0
;;  - (add1 Natural)
;; interp. a natural number
(define N0 0)         ; 0
(define N1 (add1 N0)) ; 1
(define N2 (add1 N1)) ; 2
```

# Temel Fonksiyon Şablonu
Doğal sayılar üzerinde tanımlanan bir fonksiyonun şablonu, sayının sıfır olup olmadığına göre iki durum içerir.
```
(define (fn-for-natural n)
  (cond [(zero? n) (...)]  ; sıfırsa
        [else              ; değilse
         (... n
              (fn-for-natural (sub1 n)))]))  ; önceki sayıya dön
```

