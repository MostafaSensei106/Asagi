import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/open_source_license_info.dart';
import '../../domain/repositories/open_source_license_repository.dart';

const _metadataAsset =
    'android/app/src/main/assets/licenses/ffmpeg/SOURCE_INFO.json';
const _licenseAsset =
    'android/app/src/main/assets/licenses/ffmpeg/LICENSE.LGPLv2.1';

@LazySingleton(as: OpenSourceLicenseRepository)
final class AssetOpenSourceLicenseRepository
    implements OpenSourceLicenseRepository {
  AssetOpenSourceLicenseRepository() : _bundle = rootBundle;

  final AssetBundle _bundle;

  @override
  Future<OpenSourceLicenseInfo> loadNotices() async {
    final metadataText = await _bundle.loadString(_metadataAsset);
    final licenseText = await _bundle.loadString(_licenseAsset);
    final metadata = jsonDecode(metadataText) as Map<String, dynamic>;
    final builds = metadata['builds'] as Map<String, dynamic>? ?? const {};

    return OpenSourceLicenseInfo(
      license: metadata['license'] as String?,
      version: metadata['version'] as String?,
      linkage: metadata['linkage'] as String?,
      sourceUrl: metadata['source_url'] as String?,
      builtAbis: builds.keys.toList(growable: false),
      licenseText: licenseText,
    );
  }
}
