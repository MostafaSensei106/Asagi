import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zumi/core/compression/domain/models/compression_plan.dart';
import 'package:zumi/modules/compression/data/repositories/encoder_calibration_store.dart';

const plan = CompressionPlan(
  targetVideoBitrateBps: 800000,
  targetAudioBitrateBps: 0,
  targetWidth: 640,
  targetHeight: 360,
  hardLimitBytes: 1200000,
  safetyMargin: 0.93,
  maxAttempts: 2,
  isInfeasible: false,
);

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test(
    'learns overshoot per profile and persists the next budget factor',
    () async {
      final preferences = await SharedPreferences.getInstance();
      final store = EncoderCalibrationStore(preferences);
      expect(store.recommendedFactor('device_sdr_720'), 1);

      await store.observe('device_sdr_720', plan, 10, 1300000);
      expect(store.recommendedFactor('device_sdr_720'), lessThan(0.9));
      expect(store.recommendedFactor('other_device_sdr_720'), 1);

      final reloaded = EncoderCalibrationStore(
        await SharedPreferences.getInstance(),
      );
      expect(
        reloaded.recommendedFactor('device_sdr_720'),
        store.recommendedFactor('device_sdr_720'),
      );
    },
  );

  test('ignores undershoot and invalid observations', () async {
    final store = EncoderCalibrationStore(
      await SharedPreferences.getInstance(),
    );
    await store.observe('device', plan, 10, 500000);
    await store.observe('device', plan, double.nan, 1300000);
    expect(store.recommendedFactor('device'), 1);
  });
}
