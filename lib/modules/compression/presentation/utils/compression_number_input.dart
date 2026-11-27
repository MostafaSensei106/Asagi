/// Accept Arabic/Persian digits and decimal separators in numeric controls.
String normalizeCompressionNumber(String input) {
  const arabic = '٠١٢٣٤٥٦٧٨٩';
  const persian = '۰۱۲۳۴۵۶۷۸۹';
  var value = input.trim().replaceAll(',', '.').replaceAll('٫', '.');
  for (var digit = 0; digit < 10; digit++) {
    value = value
        .replaceAll(arabic[digit], '$digit')
        .replaceAll(persian[digit], '$digit');
  }
  return value;
}
