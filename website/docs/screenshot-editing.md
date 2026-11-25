# إضافة صور شاشات Kuymo

المعرض يعرض **40 صفحة**. كل صفحة لها عنوان وعنوان فرعي ووصف بالعربي والإنجليزي، مع صورة واحدة عند توفرها أو Placeholder واضح.

1. ضع صورة الشاشة داخل `website/src/assets/product/`، مثل `compression-setup.png`.
2. افتح `website/src/features/product/data/screen-catalog.json` وابحث عن `id` الخاص بالصفحة.
3. غيّر `"image": null` إلى `"image": "compression-setup.png"`.
4. لو لديك نسخة عربية مختلفة، ضع اسمها في `imageAr`. وإلا سيستخدم الموقع الصورة المشتركة.
5. عدّل `title` و`subtitle` و`description` للغتين عند الحاجة، ثم شغّل البناء. أي اسم صورة غير موجود يُظهر خطأ بناء واضحًا.

لا تغيّر مصدر التطبيق أو مكوّنات المعرض. لا تحتاج لنسختين فاتح/داكن لكل شاشة. الصور الحالية للرئيسية ومعاينة المساعد فقط؛ وجود باقي الصفحات في المعرض لا يعني أن صورها وصلت، وصفحات AI تحمل حالة معاينة.

## رابط Google Play

افتح `website/src/features/product/data/product.ts` وعدّل الحقل الوحيد:

```ts
export const playStoreUrl: string = '';
```

أضف رابط Kuymo الرسمي بعد نشره. يجب أن يكون على `https://play.google.com/store/apps/details` ويحمل `id=com.mostafa.sensei.kuymo`. الزر الحالي ظاهر بحالة «قريبًا»، ومعطل بوضوح ولا يحول الزائر إلى GitHub. يصبح رابطًا عند إضافة عنوان صحيح.
