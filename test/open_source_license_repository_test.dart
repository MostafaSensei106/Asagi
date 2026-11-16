import 'package:flutter_test/flutter_test.dart';
import 'package:zumi/modules/about/data/repositories/asset_open_source_license_repository.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('loads FFmpeg license and build provenance assets', () async {
    final info = await AssetOpenSourceLicenseRepository().loadNotices();

    expect(info.version, '7.1.5');
    expect(info.license, 'LGPL-2.1-or-later');
    expect(info.licenseText, contains('GNU LESSER GENERAL PUBLIC LICENSE'));
    expect(info.builtAbis, isNotEmpty);
  });
}
