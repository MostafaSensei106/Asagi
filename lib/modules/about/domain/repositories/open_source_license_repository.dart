import '../models/open_source_license_info.dart';

abstract interface class OpenSourceLicenseRepository {
  Future<OpenSourceLicenseInfo> loadNotices();
}
