import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../../../l10n/app_localizations.dart';
import '../../utils/localization/app_supported_locales.dart';

@lazySingleton
class L10nService {
  AppLocalizations get(BuildContext context) => AppLocalizations.of(context)!;
  List<Locale> get supportedLocales => AppSupportedLocales.values;
}
