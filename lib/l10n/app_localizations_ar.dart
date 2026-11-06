// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'زومي';

  @override
  String get downloadFile => 'تحميل الملف';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'تم فتح الملف في المتصفح: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'تم حفظ الملف في المعرض: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'تم حفظ الملف في المستندات: $fileName';
  }

  @override
  String get fileAlreadySaved => 'الملف محفوظ بالفعل';

  @override
  String get error => 'خطأ';

  @override
  String get info => 'معلومات';

  @override
  String get success => 'نجاح';

  @override
  String get warning => 'تحذير';

  @override
  String get paid => 'مدفوع';

  @override
  String get unpaid => 'غير مدفوع';

  @override
  String get partial => 'مدفوع جزئياً';

  @override
  String get error_address_line_cant_be_empty =>
      'لا يمكن أن يكون سطر العنوان فارغاً';

  @override
  String get error_address_line_too_long => 'سطر العنوان طويل جداً';

  @override
  String get error_address_invalid_special_characters =>
      'الرموز الخاصة غير مسموح بها';

  @override
  String get error_address_emoji_not_allowed =>
      'الرموز التعبيرية غير مسموح بها';

  @override
  String get error_city_cant_be_empty => 'لا يمكن أن تكون المدينة فارغة';

  @override
  String get error_city_too_long => 'اسم المدينة طويل جداً';

  @override
  String get error_city_invalid_special_characters =>
      'تحتوي المدينة على رموز خاصة غير صالحة';

  @override
  String get error_address_label_cant_be_empty =>
      'لا يمكن أن يكون تصنيف العنوان فارغاً';

  @override
  String get error_address_label_too_long => 'تصنيف العنوان طويل جداً';

  @override
  String get error_email_cant_be_empty =>
      'لا يمكن أن يكون البريد الإلكتروني فارغاً';

  @override
  String get error_email_not_invalid_format =>
      'صيغة البريد الإلكتروني غير صالحة';

  @override
  String get error_email_contains_invalid_characters =>
      'البريد الإلكتروني يحتوي على رموز غير صالحة';

  @override
  String get error_email_must_contain_at_symbol =>
      'يجب أن يحتوي البريد الإلكتروني على علامة @';

  @override
  String get error_email_must_be_in_lowercase =>
      'يجب أن يكون البريد الإلكتروني بأحرف صغيرة';

  @override
  String get error_arabic_not_allowed => 'الأحرف العربية غير مسموح بها';

  @override
  String get error_email_emoji_not_allowed =>
      'الرموز التعبيرية غير مسموح بها في البريد الإلكتروني';

  @override
  String get error_phone_number_cant_be_empty =>
      'لا يمكن أن يكون رقم الهاتف فارغاً';

  @override
  String get error_phone_number_invalid => 'رقم الهاتف غير صالح';

  @override
  String get error_phone_number_min_length =>
      'يجب أن يتكون رقم الهاتف من 11 رقماً على الأقل';

  @override
  String get error_name_cant_be_empty => 'لا يمكن أن يكون الاسم فارغاً';

  @override
  String get error_name_invalid => 'الاسم غير صالح';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'يجب ألا يقل الاسم عن 3 أحرف';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'يجب ألا يزيد الاسم عن 20 حرفاً';

  @override
  String get error_name_invalid_special_characters =>
      'يحتوي الاسم على رموز خاصة غير صالحة';

  @override
  String get error_name_emoji_not_allowed =>
      'الرموز التعبيرية غير مسموح بها في الاسم';

  @override
  String get error_password_cant_be_empty =>
      'لا يمكن أن تكون كلمة المرور فارغة';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'يجب أن تحتوي كلمة المرور على أحرف كبيرة وصغيرة وأرقام ورموز خاصة';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'يجب ألا تقل كلمة المرور عن 8 أحرف';

  @override
  String get noInternetConnection => 'لا يوجد اتصال بالإنترنت';

  @override
  String get internetConnectionRestored => 'تمت استعادة الاتصال بالإنترنت';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get cancel => 'إلغاء';

  @override
  String get confirm => 'تأكيد';

  @override
  String get pleaseWait => 'يرجى الانتظار...';

  @override
  String get ok => 'حسناً';

  @override
  String get homeTitle => 'زومي';

  @override
  String get homeDescription =>
      'ضغط الفيديوهات بخصوصية تامة، مباشرة على جهازك.';

  @override
  String get onboardingTitle => 'مرحباً بك في زومي';

  @override
  String get onboardingDescription =>
      'تعرف على كيفية قيام زومي بضغط فيديوهاتك دون أن تغادر هاتفك أبداً.';

  @override
  String get loginTitle => 'تسجيل الدخول';

  @override
  String get loginDescription =>
      'سجّل الدخول لمزامنة خطتك والحفاظ على مشترياتك على كل أجهزتك.';

  @override
  String get videoSelectTitle => 'اختر فيديو';

  @override
  String get videoSelectDescription => 'اختر فيديو من المعرض لبدء الضغط.';

  @override
  String get compressionSetupTitle => 'إعدادات الضغط';

  @override
  String get compressionSetupDescription =>
      'اختر الدقة ومعدل البت والصيغة قبل البدء.';

  @override
  String get compressionProgressTitle => 'جارٍ الضغط';

  @override
  String get compressionProgressDescription =>
      'تابع التقدم المباشر لعملية ضغط الفيديو.';

  @override
  String get compressionResultTitle => 'نتيجة الضغط';

  @override
  String get compressionResultDescription =>
      'قارن الحجم قبل وبعد، ثم احفظ أو شارك النتيجة.';

  @override
  String get compressionHistoryTitle => 'سجل الضغط';

  @override
  String get compressionHistoryDescription =>
      'استعرض الفيديوهات التي قمت بضغطها على هذا الجهاز.';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsAppearanceTitle => 'المظهر';

  @override
  String get settingsAppearanceDescription => 'السمة والألوان وتفضيلات الحركة.';

  @override
  String get settingsLanguageTitle => 'اللغة';

  @override
  String get settingsLanguageDescription => 'لغة التطبيق واتجاه النص.';

  @override
  String get settingsCompressionTitle => 'إعدادات الضغط الافتراضية';

  @override
  String get settingsCompressionDescription =>
      'الدقة الافتراضية ومعدل البت وصيغة الإخراج.';

  @override
  String get settingsStorageTitle => 'التخزين والتنظيف';

  @override
  String get settingsStorageDescription =>
      'مساحة التخزين وحجم الذاكرة المؤقتة وتنظيف الملفات المؤقتة.';

  @override
  String get settingsNotificationsTitle => 'الإشعارات';

  @override
  String get settingsNotificationsDescription =>
      'إشعارات اكتمال الضغط وتحديثات المنتج.';

  @override
  String get settingsPrivacyTitle => 'الخصوصية';

  @override
  String get settingsPrivacyDescription =>
      'المعالجة المحلية، السجلات، وتقارير الأعطال الاختيارية.';

  @override
  String get aboutAppTitle => 'عن زومي';

  @override
  String get aboutAppDescription => 'رقم الإصدار وتفاصيل التطبيق.';

  @override
  String get aboutDeveloperTitle => 'عن المطور';

  @override
  String get aboutDeveloperDescription =>
      'فريق العمل والأدوات المستخدمة في بناء زومي.';

  @override
  String get aboutLicensesTitle => 'تراخيص مفتوحة المصدر';

  @override
  String get aboutLicensesDescription =>
      'حزم البرمجيات مفتوحة المصدر المستخدمة في زومي.';

  @override
  String get legalPrivacyTitle => 'سياسة الخصوصية';

  @override
  String get legalPrivacyDescription =>
      'كيف يتعامل زومي مع فيديوهاتك وبياناتك.';

  @override
  String get legalTermsTitle => 'شروط الخدمة';

  @override
  String get legalTermsDescription => 'الشروط التي تنطبق على زومي ومشترياته.';

  @override
  String get legalDataSafetyTitle => 'أمان البيانات';

  @override
  String get legalDataSafetyDescription =>
      'ملخص البيانات التي يجمعها زومي ولماذا.';

  @override
  String get legalPermissionsTitle => 'الأذونات';

  @override
  String get legalPermissionsDescription =>
      'الأذونات التي يطلبها زومي وسبب طلب كل منها.';

  @override
  String get helpFaqTitle => 'الأسئلة الشائعة';

  @override
  String get helpFaqDescription =>
      'إجابات عن الأسئلة الشائعة حول الضغط والاشتراكات.';

  @override
  String get helpSupportTitle => 'الدعم الفني';

  @override
  String get helpSupportDescription =>
      'احصل على مساعدة بشأن حسابك أو مشترياتك.';

  @override
  String get helpFeedbackTitle => 'إرسال ملاحظات';

  @override
  String get helpFeedbackDescription => 'أبلغ عن مشكلة أو اقترح تحسينات.';

  @override
  String get plansTitle => 'الخطط والترقيات';

  @override
  String get plansDescription => 'قارن بين الخطط واكتشف الميزات المتاحة.';

  @override
  String get plansDetailsTitle => 'تفاصيل الخطة';

  @override
  String get plansDetailsDescription => 'الميزات والحدود والأسعار لهذه الخطة.';

  @override
  String get plansMethodsTitle => 'طرق الشراء والدفع';

  @override
  String get plansMethodsDescription =>
      'طرق الدفع المعتمدة بما فيها متجر جوجل بلاي وطرق أخرى.';

  @override
  String get plansRestoreTitle => 'استعادة المشتريات';

  @override
  String get plansRestoreDescription => 'استعادة مشتريات سابقة على جهاز آخر.';

  @override
  String get profileTitle => 'الملف الشخصي';

  @override
  String get profileDescription => 'بياناتك، حالة اشتراكك، وتفضيلات الحساب.';

  @override
  String get profileDeleteTitle => 'حذف الحساب';

  @override
  String get profileDeleteDescription => 'حذف حسابك وبياناتك نهائياً.';

  @override
  String get rateAppTitle => 'تقييم التطبيق';

  @override
  String get rateAppDescription => 'شارك رأيك في زومي على المتجر لمساعدتنا.';

  @override
  String get shareAppTitle => 'مشاركة التطبيق';

  @override
  String get shareAppDescription => 'رشّح زومي لأصدقائك وزملائك.';

  @override
  String get settingsGroupAppearance => 'المظهر واللغة';

  @override
  String get settingsGroupCompression => 'الضغط والتخزين';

  @override
  String get settingsGroupPrivacy => 'الإشعارات والخصوصية';

  @override
  String get settingsGroupPlans => 'الخطط والمشتريات';

  @override
  String get settingsGroupAbout => 'حول التطبيق';

  @override
  String get settingsGroupLegal => 'قانوني وسياسات';

  @override
  String get settingsGroupHelp => 'المساعدة والملاحظات';

  @override
  String get settingsGroupAccount => 'الحساب';

  @override
  String get comingSoon => 'قريباً';
}
