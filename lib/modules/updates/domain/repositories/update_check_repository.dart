import '../entities/update_check_status.dart';

abstract interface class UpdateCheckRepository {
  Future<UpdateCheckStatus> read();
  Future<void> save(UpdateCheckStatus status);
}
