"""Run with: python3 -m unittest discover -s tool/tests."""
import importlib.util
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

SCRIPT = Path(__file__).resolve().parents[1] / 'generate_kuymo_schemes.py'
spec = importlib.util.spec_from_file_location('schemes', SCRIPT)
schemes = importlib.util.module_from_spec(spec)
spec.loader.exec_module(schemes)


class SchemeGeneratorTest(unittest.TestCase):
    def test_seed_validation(self):
        self.assertEqual(schemes.normalized_seed('#0095a9'), '0095A9')
        for value in ['#123', 'invalid', 'FFFFFF00', '$(bad)']:
            with self.assertRaises(ValueError):
                schemes.normalized_seed(value)

    def test_luminance_tone_and_contrast_reference_values(self):
        self.assertEqual(schemes.luminance('#000000'), 0)
        self.assertAlmostEqual(schemes.luminance('#FFFFFF'), 1)
        self.assertAlmostEqual(schemes.tone('#FFFFFF'), 100)
        self.assertAlmostEqual(schemes.contrast_ratio('#000000', '#FFFFFF'), 21)
        self.assertEqual(schemes.contrast_ratio('#0095A9', '#0095A9'), 1)

    def test_missing_roles_fail(self):
        with patch.object(schemes, 'run_matugen', return_value='{"colors":{}}'):
            with self.assertRaisesRegex(ValueError, 'Missing'):
                schemes.generate('0095A9', 'scheme-vibrant', 'light', 0)

    def test_invalid_hex_fails(self):
        value = '{"colors":{"error":{"light":{"color":"not-a-color"}}}}'
        with patch.object(schemes, 'run_matugen', return_value=value):
            with self.assertRaisesRegex(ValueError, 'Invalid HEX'):
                schemes.generate('0095A9', 'scheme-vibrant', 'light', 0)

    def test_bad_contrast_fails(self):
        colors = {role: '#FFFFFF' for role in schemes.CONSTRUCTOR_ROLES}
        with self.assertRaisesRegex(ValueError, 'on_surface/surface'):
            schemes.audit(colors, 'light', False)

    def test_read_only_check_and_stale_artifact(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'generated.dart'
            schemes.write_artifact(path, 'expected', False)
            before = path.stat().st_mtime_ns
            schemes.write_artifact(path, 'expected', True)
            self.assertEqual(path.stat().st_mtime_ns, before)
            with self.assertRaisesRegex(ValueError, 'stale'):
                schemes.write_artifact(path, 'different', True)
            self.assertEqual(path.read_text(), 'expected')

    def test_render_is_deterministic(self):
        colors = schemes.generate('0095A9', 'scheme-vibrant', 'light', 0)
        value = {'auto|light|false': colors}
        self.assertEqual(schemes.render('0095A9', value), schemes.render('0095A9', value))
        self.assertNotIn('background:', schemes.render('0095A9', value))

    def test_generated_outputs_match(self):
        self.assertEqual(schemes.main(['--check']), 0)


if __name__ == '__main__':
    unittest.main()
