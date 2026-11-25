/** Website translations for messages that currently fall back to English in the app. */
const messages: Record<string, [string, string, string, string, string]> = {
  de: [
    'Mehr Platz für deine Momente.',
    'Videoverarbeitung auf deinem Gerät',
    'Teilen und anpassen',
    'Videos auf Zielgröße komprimieren',
    'Wähle eine Zielgröße. Prüfe den Plan und passe die Einstellungen vor der Komprimierung an.',
  ],
  es: [
    'Más espacio para tus momentos.',
    'Procesamiento de vídeo en tu dispositivo',
    'Compartir y ajustar',
    'Comprimir al tamaño deseado',
    'Elige un tamaño objetivo. Revisa el plan y ajusta las opciones antes de comprimir.',
  ],
  fr: [
    'Plus de place pour vos moments.',
    'Traitement vidéo sur votre appareil',
    'Partager et ajuster',
    'Compresser à la taille souhaitée',
    'Choisissez une taille cible. Vérifiez le plan et ajustez les réglages avant la compression.',
  ],
  id: [
    'Lebih banyak ruang untuk momen Anda.',
    'Pemrosesan video di perangkat Anda',
    'Bagikan dan sesuaikan',
    'Kompresi sesuai ukuran target',
    'Pilih ukuran target. Tinjau rencana dan sesuaikan pengaturan sebelum kompresi.',
  ],
  it: [
    'Più spazio per i tuoi momenti.',
    'Elaborazione video sul tuo dispositivo',
    'Condividi e personalizza',
    'Comprimi alla dimensione desiderata',
    'Scegli una dimensione obiettivo. Controlla il piano e modifica le impostazioni prima della compressione.',
  ],
  ja: [
    '大切な瞬間に、もっとゆとりを。',
    '動画の処理はお使いの端末で',
    '共有と細かな調整',
    '目標サイズに合わせて動画を圧縮',
    '目標サイズを選び、圧縮前にプランを確認して設定を調整できます。',
  ],
  ko: [
    '소중한 순간을 위한 더 넓은 공간.',
    '내 기기에서 동영상 처리',
    '공유와 세부 조정',
    '목표 크기에 맞춰 동영상 압축',
    '목표 크기를 선택하세요. 압축하기 전에 계획을 확인하고 설정을 조정하세요.',
  ],
  nl: [
    'Meer ruimte voor jouw momenten.',
    'Videoverwerking op je apparaat',
    'Delen en aanpassen',
    'Comprimeren tot de gewenste grootte',
    'Kies een doelgrootte. Bekijk het plan en pas de instellingen aan voordat je comprimeert.',
  ],
  pl: [
    'Więcej miejsca na Twoje chwile.',
    'Przetwarzanie wideo na Twoim urządzeniu',
    'Udostępnianie i ustawienia',
    'Kompresja do wybranego rozmiaru',
    'Wybierz docelowy rozmiar. Sprawdź plan i dostosuj ustawienia przed kompresją.',
  ],
  pt: [
    'Mais espaço para os seus momentos.',
    'Processamento de vídeo no seu dispositivo',
    'Partilhar e ajustar',
    'Comprimir para o tamanho pretendido',
    'Escolha um tamanho pretendido. Reveja o plano e ajuste as definições antes de comprimir.',
  ],
  'pt-BR': [
    'Mais espaço para seus momentos.',
    'Processamento de vídeo no seu dispositivo',
    'Compartilhar e ajustar',
    'Comprimir para o tamanho desejado',
    'Escolha um tamanho desejado. Confira o plano e ajuste as configurações antes de comprimir.',
  ],
  ru: [
    'Больше места для ваших моментов.',
    'Обработка видео на вашем устройстве',
    'Отправка и настройка',
    'Сжатие видео до заданного размера',
    'Выберите нужный размер. Проверьте план и настройте параметры перед сжатием.',
  ],
  sv: [
    'Mer plats för dina stunder.',
    'Videobearbetning på din enhet',
    'Dela och anpassa',
    'Komprimera till önskad storlek',
    'Välj en målstorlek. Granska planen och justera inställningarna före komprimering.',
  ],
  th: [
    'เพิ่มพื้นที่ให้ช่วงเวลาของคุณ',
    'ประมวลผลวิดีโอบนอุปกรณ์ของคุณ',
    'แชร์และปรับแต่ง',
    'บีบอัดวิดีโอตามขนาดเป้าหมาย',
    'เลือกขนาดเป้าหมาย ตรวจสอบแผนและปรับการตั้งค่าก่อนบีบอัด',
  ],
  tr: [
    'Anılarınız için daha fazla alan.',
    'Video işleme cihazınızda',
    'Paylaşım ve ince ayarlar',
    'Hedef boyuta göre video sıkıştırma',
    'Bir hedef boyut seçin. Sıkıştırmadan önce planı inceleyin ve ayarları düzenleyin.',
  ],
  vi: [
    'Thêm không gian cho khoảnh khắc của bạn.',
    'Xử lý video trên thiết bị của bạn',
    'Chia sẻ và tùy chỉnh',
    'Nén video theo kích thước mục tiêu',
    'Chọn kích thước mục tiêu. Xem lại kế hoạch và điều chỉnh cài đặt trước khi nén.',
  ],
  zh: [
    '为你的精彩瞬间腾出更多空间。',
    '在你的设备上处理视频',
    '分享与调整',
    '按目标大小压缩视频',
    '选择目标大小，在压缩前查看方案并调整设置。',
  ],
  'zh-TW': [
    '為你的精彩瞬間騰出更多空間。',
    '在你的裝置上處理影片',
    '分享與調整',
    '依目標大小壓縮影片',
    '選擇目標大小，在壓縮前查看方案並調整設定。',
  ],
};
export function websiteMessages(locale: string): Record<string, string> {
  const key = locale === 'zh-HK' ? 'zh-TW' : locale;
  const row = messages[key] ?? messages[locale.split('-')[0]!];
  if (!row) return {};
  return {
    brandTagline: row[0],
    onDeviceProcessingLabel: row[1],
    targetPlatformOrSize: row[2],
    targetSizeOptimizer: row[3],
    youSetTheTargetSizeManuallyTheEngineWillApplyTheHighestPossibleQualityWithinThatCap: row[4],
  };
}
