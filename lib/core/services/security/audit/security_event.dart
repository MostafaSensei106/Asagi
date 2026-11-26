import 'audit_severity.dart';

/// Typed taxonomy of security-sensitive audit events.
///
/// Why a sealed class instead of `AppLogger.security('phone_launch')`:
/// - Stringly-typed events typo silently, break dashboards, and accept
///   arbitrary payloads (including secrets).
/// - Typed events carry ONLY non-sensitive, whitelisted fields  the compiler
///   rejects logging a token/password by construction.
/// - Analytics/forensics can `switch` exhaustively over events.
sealed class SecurityEvent {
  const SecurityEvent();

  String get name;
  AuditSeverity get severity;
  Map<String, Object?> get fields;
}

final class ExternalUrlLaunched extends SecurityEvent {
  const ExternalUrlLaunched(this.host);
  final String host;
  @override
  String get name => 'intent.url_launched';
  @override
  AuditSeverity get severity => AuditSeverity.info;
  @override
  Map<String, Object?> get fields => {'host': host};
}

final class ExternalUrlBlocked extends SecurityEvent {
  const ExternalUrlBlocked(this.host, this.reason);
  final String host;
  final String reason;
  @override
  String get name => 'intent.url_blocked';
  @override
  AuditSeverity get severity => AuditSeverity.warning;
  @override
  Map<String, Object?> get fields => {'host': host, 'reason': reason};
}

final class EmailClientLaunched extends SecurityEvent {
  const EmailClientLaunched();
  @override
  String get name => 'intent.email_launched';
  @override
  AuditSeverity get severity => AuditSeverity.info;
  @override
  Map<String, Object?> get fields => const {};
}

final class DialerLaunched extends SecurityEvent {
  const DialerLaunched();
  @override
  String get name => 'intent.dialer_launched';
  @override
  AuditSeverity get severity => AuditSeverity.info;
  @override
  Map<String, Object?> get fields => const {};
}
