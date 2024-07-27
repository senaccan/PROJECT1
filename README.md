SORU:1 Birinci programlama projenizin birinci sorusu MATLAB düzyazı-m programı şeklinde yazılması beklenen ve müşterilerin yatırım portföylerini optimize etmeye çalışan bir yatırım danışmanı yazılımı ile ilgilidir. 
Müşteriler, belirli bir risk seviyesiyle (örneğin, düşük riskli bir portföy) en yüksek getiriyi elde etmek isterler. Bu nedenle yatırım danışmanı yazılımı, farklı varlık sınıflarından(hisse senetleri, tahviller,
emtialar vb.) oluşan bir portföy oluşturmalıdır ve bu varlıkların getirileri ile risklerini dikkate alarak en uygun dağılımı bulunmalıdır.

Opsiyonlar, belirli bir tarihte veya öncesinde, önceden belirlenmiş bir fiyat üzerinden belirli bir varlığı alma veya satma hakkı veren finansal sözleşmelerdir. Opsiyon fiyatlandırması, bu tür bir sözleşmeyi almak 
veya satmak isteyen kişilerin ödemeleri gereken primin belirlenmesi sürecidir. Fiyatlandırma işlemi, opsiyonun vade süresini, dayanak varlığın mevcut fiyatını, kullanım fiyatını ve diğer piyasa koşullarını dikkate 
alarak gerçekleştirilir. Bu faktörler, opsiyonun değerini ve dolayısıyla alıcıların veya satıcıların ödeyeceğiz prim fiyatına etkiler.

Black-Scholes modeli, opsiyon fiyatlandırmasında yaygın olarak kullanılan bir modeldir. Modelin formülü şu şekildedir: 
C= S x N(d1) - K x (e)^(-rT) x N(d2) 
Burada :
C= opsiyon fiyatı
S= hisse senedinin mevcut fiyatı
K= kullanım fiyatı
r= risksiz faiz oranı
T= Vade süresi
N(d1) ve N(d2) = kümülatif standart normal dağılım değerleri

Kümülatif standart normal dağılım tablosu kullanarak bulunan  N(d1) ve N(d2) terimlerinin değerleri ise aşağıda verilmiştir.
N(d1)= N(1.46)=0.93
N(d2)=N(1.03)=0.85
Yukarıda verilen bilgiler ışığında yatırım danışmanı yazılımımızın kullanıcıdan imput konusuyla satın almak istediği hisse senedinin mevcut fiyatını (S) almalıdır. Bu aşamada kullanıcı negatif bir veri girişi 
yaparsa “ Lütfen pozitif değer giriniz!” şeklinde bir uyarı mesajı ekrana yazdırılmalı ve kullanıcı yeni bir veri girişi yapmaya zorlanmalıdır. Aşağıdaki kabulleri yaparak opsiyon fiyatını Black-Scholes modeli 
ile hesaplayınız.
• Vade süresi altı ay kabul edilmelidir.
• ⁠Kullanım fiyatının(opsiyonunu kullanabileceği fiyat) hisse senedinin mevcut fiyatının %10 fazlası olacağı kabul edilmelidir.
• ⁠Hisse senedinin risksiz faiz oranı %5 kabul edilmelidir.

SORU 2: Birinci programlama projesinin ikinci sorusu MATLAB  düzyazı-m programı şeklinde yazılması beklenen çok seviyeli bir sayı tahmin oyunudur. Söz konusu oyun üç seviyeden oluşmaktadır ve her bir seviyede 
bilgisayar tarafından rastgele bir tamsayı üretebilmektedir. Seviyeli sayı tahmin oyununa ait tüm detaylar aşağıda maddeler halinde verilmiştir:
• Her bir seviye için önceden belirlenmiş aralıklarda bilgisayar tarafından rastgele bir tamsayı üretilmelidir.
• ⁠Birinci seviye için rastgele sayı aralığı 1(dahil)-5(dahil), ikinci seviye için 1(dahil)-10(dahil), üçüncü seviye için ise 1(dahil)-20(dahil) olacak şekilde ayarlanmalıdır. Eğer kullanıcı bu aralıklar dışında
bir veri girişi yaparsa "Lütfen aralık dahilinde bir değer giriniz!” şeklinde bir uyarı mesajı ekrana yazdırılmalı ve kullanıcı yeni bir veri girişi yapmaya zorlanmalıdır.
• ⁠Kullanıcıya birinci seviyede en fazla 3, ikinci seviyede en fazla 4 ve üçüncü seviyede de en fazla 5 tahmin hakkı verilmelidir.
• ⁠Her bir seviyede tahmin işleminden sonra kullanıcıya kalan tahmin hakları ile ilgili bir bilgilendirme yapılmalıdır.
• ⁠Bir seviyede kullanıcı tüm tahmin haklarını kullandığında ve rastgele sayı doğru tahmin edemediğinde oyun sonlandırılmamalıdır. Doğru tahmin yapildiginda ise bir sonraki seviyeye geçilmelidir.
• ⁠Oyunun herhangi bir anında oyuna devam etmek istemeyen oyuncunun -1 girerek oyunu sonlandırabilmesine izin verilmelidir. 
• ⁠Oyun sona erdiğinde kullanıcının oyunu hangi seviyede ve kaçıncı tahmin sonrasında tamamladığı bilgisi ekrana yansıtılmalıdır.
