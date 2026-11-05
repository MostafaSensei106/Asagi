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
}
