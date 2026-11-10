import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../data/base_about_app_repository.dart';
import 'about_app_state.dart';

@injectable
final class AboutAppCubit extends CubitSignal<AboutAppState> {
  AboutAppCubit(this._repo)
    : super(initialState: const AboutAppState.initial()) {
    getAppDetails();
  }
  final BaseAboutAppRepository _repo;

  void getAppDetails() {
    emit(const AboutAppState.loading());
    try {
      final data = _repo.getAppDetails();
      emit(AboutAppState.success(data: data));
    } catch (_) {
      emit(const AboutAppState.error(message: 'Unable to load app details.'));
    }
  }
}
