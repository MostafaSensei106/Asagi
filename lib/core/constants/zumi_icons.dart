import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

/// Single source of truth for every icon used by navigation and pages.
///
/// Keeping icons here means routes, the settings hub, and page scaffolds never
/// drift apart, and swapping an icon is a one-line change.
abstract final class ZumiIcons {
  // Core destinations.
  static const IconData home = LucideIcons.house;
  static const IconData onboarding = LucideIcons.sparkles;
  static const IconData login = LucideIcons.logIn;

  // Compression flow.
  static const IconData videoSelect = LucideIcons.video;
  static const IconData compressionSetup = LucideIcons.slidersHorizontal;
  static const IconData compressionProgress = LucideIcons.gauge;
  static const IconData compressionResult = LucideIcons.badgeCheck;
  static const IconData compressionHistory = LucideIcons.history;

  // Settings.
  static const IconData settings = LucideIcons.settings;
  static const IconData appearance = LucideIcons.monitorSmartphone;
  static const IconData language = LucideIcons.languages;
  static const IconData compressionDefaults = LucideIcons.settings2;
  static const IconData storage = LucideIcons.hardDrive;
  static const IconData notifications = LucideIcons.bell;
  static const IconData privacy = LucideIcons.shieldCheck;

  // About.
  static const IconData appInfo = LucideIcons.info;
  static const IconData developer = LucideIcons.codeXml;
  static const IconData licenses = LucideIcons.scale;

  // Legal.
  static const IconData privacyPolicy = LucideIcons.fileText;
  static const IconData terms = LucideIcons.scale;
  static const IconData dataSafety = LucideIcons.shieldAlert;
  static const IconData permissions = LucideIcons.keyRound;

  // Help.
  static const IconData faq = LucideIcons.circleHelp;
  static const IconData support = LucideIcons.lifeBuoy;
  static const IconData feedback = LucideIcons.messageSquareText;

  // Plans and purchases.
  static const IconData plans = LucideIcons.crown;
  static const IconData planDetails = LucideIcons.sparkle;
  static const IconData purchaseMethods = LucideIcons.creditCard;
  static const IconData restorePurchases = LucideIcons.refreshCcw;

  // Account.
  static const IconData profile = LucideIcons.user;
  static const IconData deleteAccount = LucideIcons.userX;

  // Growth.
  static const IconData rateApp = LucideIcons.star;
  static const IconData shareApp = LucideIcons.share2;

  // Navigation affordances.
  static const IconData chevronForward = LucideIcons.chevronRight;
  static const IconData chevronBack = LucideIcons.chevronLeft;
  static const IconData chevronsBack = LucideIcons.chevronsLeft;
}
