export interface ContentItem {
  readonly title: string;
  readonly body: string;
}
export interface RichContent {
  readonly useCasesTitle: string;
  readonly useCasesIntro: string;
  readonly useCases: readonly ContentItem[];
  readonly capabilitiesTitle: string;
  readonly capabilitiesIntro: string;
  readonly capabilities: readonly ContentItem[];
  readonly reliabilityTitle: string;
  readonly reliabilityIntro: string;
  readonly reliability: readonly ContentItem[];
  readonly formatsTitle: string;
  readonly formats: readonly ContentItem[];
  readonly details: Record<'target-size' | 'sharing' | 'on-device', readonly ContentItem[]>;
  readonly faqs: readonly { q: string; a: string }[];
}
const en: RichContent = {
  useCasesTitle: 'Made for your next send.',
  useCasesIntro:
    'A family moment, a short post, or a file you want to keep. Start with the job, then choose the settings.',
  useCases: [
    {
      title: 'A moment for the group chat',
      body: 'A clip is ready, but the file is too large. Choose a sharing profile or a custom size, review the planned output, and inspect the result before sending it to your chosen app.',
    },
    {
      title: 'A video for your next post',
      body: 'Prepare a clip for a social platform with a preset, then fine-tune resolution, frame rate or audio when you need more control. Presets are starting points, not live guarantees of platform limits.',
    },
    {
      title: 'A smaller copy to keep',
      body: 'Compare the original and output sizes in local history. Export the result to your gallery when you want a separate copy there; saving in Kuymo and saving to the gallery are distinct actions.',
    },
  ],
  capabilitiesTitle: 'Simple to start. Room to fine-tune.',
  capabilitiesIntro:
    'The current Android workflow gives you control before, during and after compression. Open a topic for the practical details.',
  capabilities: [
    {
      title: 'A target size, before a quality slider',
      body: 'Enter the size you are working toward in decimal megabytes. Kuymo reads the source and builds a plan so you can see the proposed resolution and bitrate before starting. A longer video needs more space to retain the same bitrate.',
    },
    {
      title: 'Sharing presets without the guesswork',
      body: 'Choose WhatsApp, WhatsApp HD, Discord, Instagram Reels, TikTok, Facebook, X, YouTube Shorts or email. Review the resolved size and any adjustment. Use a custom target when you have a specific cap.',
    },
    {
      title: 'Picture and sound are separate choices',
      body: 'Limit resolution, frame rate, video bitrate or audio bitrate. Remove audio when it is not needed. Keeping a useful result sometimes means changing more than one setting; the app explains size and quality compromises.',
    },
    {
      title: 'Pause, resume or cancel',
      body: 'Follow the current compression stage and control an active job. Supported interrupted jobs can recover from saved state; encoding may restart if a checkpoint cannot be reused. Cancellation cleans up temporary work through the job flow.',
    },
    {
      title: 'History that stays close to the result',
      body: 'Review local compression history, compare before/after sizes and find completed outputs. Save a copy to the gallery or hand the selected file to another app. Keep enough storage available for output and recovery checkpoints.',
    },
    {
      title: 'HDR with clear device limits',
      body: 'Choose supported HDR handling, including preserving HDR or converting to SDR where the device can perform the requested operation. Input codecs and HDR support depend on installed device capabilities; unsupported media is reported.',
    },
    {
      title: 'A comfortable interface',
      body: 'Choose light or dark appearance, Material palette variants and high-contrast options. Language settings support right-to-left layouts. Notification preferences and haptic choices let the interface fit your routine.',
    },
    {
      title: 'Purposeful notifications and privacy',
      body: 'Active Android compression has a foreground-service notification. Other notification preferences follow system permissions. Compression runs locally; optional update checks, diagnostics and sharing have their own network behavior, explained in the privacy policy.',
    },
  ],
  reliabilityTitle: 'A plan is only the beginning.',
  reliabilityIntro:
    'The workflow checks what the device actually produces instead of treating a calculated bitrate as proof of the final size.',
  reliability: [
    {
      title: 'Review',
      body: 'Read the proposed settings and warnings before starting. A target that is too small may need a larger size or a different quality trade-off.',
    },
    {
      title: 'Follow',
      body: 'See progress through encoding, verification and saving. Supported jobs expose pause, resume and cancellation controls.',
    },
    {
      title: 'Verify',
      body: 'Kuymo checks actual output size and media properties, reports adjustments, and can perform another compression pass where supported.',
    },
    {
      title: 'Keep',
      body: 'Inspect the final result, save or share it, and return to local history. Recovery depends on usable saved state and sufficient free space.',
    },
  ],
  formatsTitle: 'Know what goes in. Know what comes out.',
  formats: [
    {
      title: 'Compatible output first',
      body: 'The documented re-encoding path produces H.264 video with AAC audio in an MP4 container. Audio can be removed. Do not assume the app exports every container or codec mentioned in an older specification.',
    },
    {
      title: 'Source and device matter',
      body: 'Input support depends on the device’s installed video and audio decoders. HDR, orientation, frame rate and available storage can affect a job. Clear warnings are more useful than pretending every source behaves the same way.',
    },
    {
      title: 'Already small enough?',
      body: 'A source may pass through without re-encoding when it already fits and no requested transformation is needed, retaining its original format. An unnecessarily large output is not a useful compression result.',
    },
    {
      title: 'Android today',
      body: 'Compression currently requires Android 11 or newer. Retained iOS encoder source is future platform work, not evidence that an iPhone, web or desktop compression app is available.',
    },
  ],
  details: {
    'target-size': [
      {
        title: 'Begin with the limit you actually have',
        body: 'Enter a custom target or start with a sharing profile. Sizes use decimal megabytes: 16 MB means 16,000,000 bytes. The duration, sound and resolution all share that budget, so the same target will not give the same quality for a short clip and a long recording.',
      },
      {
        title: 'See the proposed output before you commit',
        body: 'Review the planned resolution and bitrate, then adjust the controls when needed. Kuymo works within source and device capabilities; increasing a number cannot recreate detail absent from the original. Very restrictive targets can produce a warning or cannot be met.',
      },
      {
        title: 'A calculated size is not the final file',
        body: 'Hardware encoders can produce a different size from an estimate. The compression workflow verifies the output, reports changes and may retry. Inspect the actual result rather than assuming the original target was achieved without a compromise.',
      },
    ],
    sharing: [
      {
        title: 'Choose a useful starting point',
        body: 'Profiles cover WhatsApp, WhatsApp HD, Discord, Instagram Reels, TikTok, Facebook, X, YouTube Shorts and email. Each is a built-in starting point for preparing a file, not a live check of that service’s current account limits.',
      },
      {
        title: 'Keep the final decision in your hands',
        body: 'A profile may relax its target to preserve a usable result. Read the resolved size and warning. When a particular recipient or service requires a strict cap, choose a custom target and inspect the final size before sending.',
      },
      {
        title: 'Prepare, inspect, then share',
        body: 'Adjust picture and audio settings if needed, run compression, and compare original/output sizes. Sharing hands the selected file to the destination app; it does not silently upload your video as part of planning or encoding.',
      },
    ],
    'on-device': [
      {
        title: 'Local processing is the core workflow',
        body: 'Source inspection, planning, video encoding and output verification run through the device pipeline. Encoding can work without an internet connection. Optional update checks, model-related network activity and diagnostics are separate from that compression flow.',
      },
      {
        title: 'Your result has a place to return to',
        body: 'Local history helps you find completed outputs and compare sizes. Gallery export creates a copy in the gallery, while sharing sends a file to the app you choose. Deleting history and managing saved media are different actions; review what a cleanup will remove.',
      },
      {
        title: 'Understand permissions and interruptions',
        body: 'Gallery export and notifications follow Android permissions. Active compression uses a foreground-service notification. Pause/resume and interrupted-job recovery depend on supported saved state; a job may restart encoding when a checkpoint cannot be reused.',
      },
    ],
  },
  faqs: [
    {
      q: 'Can every video reach every target?',
      a: 'No. Duration, sound, resolution and device capabilities limit what is practical. Increase the target, lower resolution or frame rate, or reduce/remove audio when appropriate. No lossless reduction or identical quality is guaranteed.',
    },
    {
      q: 'Why did a preset choose a larger target?',
      a: 'Some profiles relax the requested size to keep the output usable. Read the resolved target and warning. Use a custom target when you have a specific cap, and check the actual result.',
    },
    {
      q: 'Where is the video after compression?',
      a: 'Find completed outputs in local history. Saving in Kuymo and exporting a copy to the gallery are separate actions. Use the gallery-saving action when you want a copy there and check the required media permission.',
    },
    {
      q: 'What happens if a job is interrupted?',
      a: 'Supported jobs can resume from stored state. If that checkpoint is unusable, encoding may restart. Keep enough space for the output and recovery files, and manage interrupted work in the app.',
    },
    {
      q: 'Why is a format or HDR source unsupported?',
      a: 'The installed device decoders and encoder capabilities determine support. Try SDR handling when supported if HDR preservation is unavailable. The app distinguishes unsupported video, audio and encoding problems.',
    },
    {
      q: 'What should I include in a bug report?',
      a: 'Include Android version, device model, app version, target or preset and the displayed error. Share a sample only if you are comfortable making it public; keep private footage and personal file paths out of the report.',
    },
  ],
};
const ar: RichContent = {
  useCasesTitle: 'جاهز للحظة المشاركة.',
  useCasesIntro:
    'لقطة للعيلة، فيديو للنشر، أو نسخة أصغر تحتفظ بيها. ابدأ باحتياجك، وبعدها اختار الإعدادات.',
  useCases: [
    {
      title: 'لحظة تبعتها في الجروب',
      body: 'الفيديو جاهز، لكن حجمه كبير. اختار إعداد مشاركة أو حجمًا مخصصًا، وراجع الخطة والنتيجة قبل إرسال الملف للتطبيق الذي تختاره.',
    },
    {
      title: 'مقطع لمنشورك القادم',
      body: 'ابدأ بإعداد للمنصة، ثم اضبط الدقة ومعدل الإطارات والصوت لو محتاج تحكمًا أدق. الإعدادات نقطة بداية، وليست ضمانًا مباشرًا لحدود المنصات المتغيرة.',
    },
    {
      title: 'نسخة أخف تحتفظ بيها',
      body: 'قارن حجم الأصل والناتج في السجل المحلي. احفظ نسخة في المعرض عندما تحتاجها هناك؛ حفظ الملف داخل Kuymo وتصديره للمعرض عمليتان مختلفتان.',
    },
  ],
  capabilitiesTitle: 'بداية بسيطة. وتحكم وقت ما تحتاجه.',
  capabilitiesIntro:
    'مسار الضغط الحالي على أندرويد يديك تحكمًا قبل العملية وأثناءها وبعدها. افتح أي موضوع لقراءة التفاصيل العملية.',
  capabilities: [
    {
      title: 'الحجم المطلوب قبل شريط الجودة',
      body: 'أدخل حجمًا مستهدفًا بالميجابايت العشري. يقرأ Kuymo بيانات المصدر ويبني خطة تعرض الدقة ومعدل البت المقترحين قبل البدء. الفيديو الأطول يحتاج مساحة أكبر للحفاظ على معدل البت نفسه.',
    },
    {
      title: 'إعدادات مشاركة تقلل التخمين',
      body: 'اختار واتساب، واتساب HD، ديسكورد، Instagram Reels، تيك توك، فيسبوك، X، YouTube Shorts أو البريد. راجع الحجم الفعلي للخطة وأي تعديل. استخدم حجمًا مخصصًا لو عندك سقف محدد.',
    },
    {
      title: 'الصورة والصوت اختيارات منفصلة',
      body: 'حدد أقصى دقة ومعدل إطارات ومعدل بت للفيديو أو الصوت. احذف الصوت عندما لا تحتاجه. الحفاظ على نتيجة مفيدة قد يحتاج تعديل أكثر من إعداد؛ التطبيق يوضح الموازنة بين الحجم والجودة.',
    },
    {
      title: 'إيقاف مؤقت واستكمال أو إلغاء',
      body: 'تابع مرحلة الضغط وتحكم في المهمة الحالية. يمكن استعادة المهام المنقطعة المدعومة من حالتها المحفوظة، وقد يبدأ الترميز من جديد إذا تعذّر استخدام نقطة الاستكمال. مسار الإلغاء ينظف ملفات العمل المؤقتة.',
    },
    {
      title: 'سجل مرتبط بنتيجتك',
      body: 'ارجع لسجل الضغط المحلي، وقارن الحجم قبل وبعد، واعثر على النتائج المكتملة. احفظ نسخة في المعرض أو شارك الملف المختار مع تطبيق آخر. اترك مساحة كافية للناتج وملفات الاستكمال.',
    },
    {
      title: 'HDR بحدود واضحة للجهاز',
      body: 'اختار الحفاظ على HDR أو التحويل إلى SDR عندما يدعم الجهاز العملية المطلوبة. دعم صيغ المصدر وHDR يعتمد على قدرات الجهاز؛ الملفات غير المدعومة تُعرض برسالة توضح المشكلة.',
    },
    {
      title: 'واجهة مريحة على طريقتك',
      body: 'اختار المظهر الفاتح أو الداكن، ولوحات Material، وخيارات التباين العالي. إعدادات اللغة تدعم اتجاه RTL. ويمكن ضبط تفضيلات الإشعارات والاهتزاز بما يناسب استخدامك.',
    },
    {
      title: 'إشعارات وخصوصية لغرض واضح',
      body: 'للضغط النشط على أندرويد إشعار خدمة في المقدمة، وباقي التفضيلات تتبع أذونات النظام. الضغط محلي؛ فحص التحديثات والتشخيصات الاختيارية والمشاركة لها اتصالات منفصلة موضحة في سياسة الخصوصية.',
    },
  ],
  reliabilityTitle: 'الخطة مجرد بداية.',
  reliabilityIntro:
    'مسار العمل يفحص ما أنتجه الجهاز فعلًا، بدل اعتبار معدل البت المحسوب ضمانًا لحجم الملف النهائي.',
  reliability: [
    {
      title: 'راجع',
      body: 'اقرأ الإعدادات المقترحة والتحذيرات قبل البدء. الحجم الصغير جدًا قد يحتاج هدفًا أكبر أو موازنة مختلفة مع الجودة.',
    },
    {
      title: 'تابع',
      body: 'شوف التقدم خلال الترميز والتحقق والحفظ، مع تحكم الإيقاف المؤقت والاستكمال والإلغاء في المهام المدعومة.',
    },
    {
      title: 'تحقق',
      body: 'يفحص Kuymo الحجم الفعلي وخصائص الوسائط، ويوضح التعديلات، وقد يجري محاولة ضغط أخرى عند دعمها.',
    },
    {
      title: 'احتفظ',
      body: 'راجع النتيجة واحفظها أو شاركها، وارجع إليها في السجل المحلي. الاستعادة تعتمد على حالة محفوظة صالحة ومساحة كافية.',
    },
  ],
  formatsTitle: 'اعرف ما يدخل. واعرف ما يخرج.',
  formats: [
    {
      title: 'التوافق أولًا',
      body: 'مسار إعادة الترميز الموثق ينتج فيديو H.264 وصوت AAC داخل ملف MP4، مع إمكانية حذف الصوت. لا يعني وجود صيغة أو ترميز في مواصفة قديمة أنه متاح حاليًا للتصدير.',
    },
    {
      title: 'المصدر والجهاز يصنعان الفرق',
      body: 'دعم الإدخال يعتمد على مفككات الفيديو والصوت المثبتة على الجهاز. HDR واتجاه الفيديو ومعدل الإطارات والمساحة المتاحة قد تؤثر على المهمة. التحذير الواضح أفضل من افتراض أن كل المصادر متشابهة.',
    },
    {
      title: 'الفيديو صغير بالفعل؟',
      body: 'قد يُمرّر المصدر دون إعادة ترميز لو حجمه مناسب ولا يحتاج التحويل المطلوب، مع الاحتفاظ بصيغته الأصلية. إنتاج ملف أكبر بلا داعٍ ليس نتيجة ضغط مفيدة.',
    },
    {
      title: 'أندرويد حاليًا',
      body: 'الضغط يتطلب حاليًا أندرويد 11 أو أحدث. الاحتفاظ بكود ترميز iOS هو عمل لمنصة مستقبلية، ولا يعني توفر الضغط على آيفون أو الويب أو سطح المكتب.',
    },
  ],
  details: {
    'target-size': [
      {
        title: 'ابدأ بالحد الذي تحتاجه فعلًا',
        body: 'أدخل حجمًا مخصصًا أو ابدأ بإعداد مشاركة. الأحجام بالميجابايت العشري: 16 MB تعني 16,000,000 بايت. المدة والصوت والدقة تتشارك هذه الميزانية؛ لذلك الهدف نفسه لا يعطي الجودة نفسها لمقطع قصير وتسجيل طويل.',
      },
      {
        title: 'شوف الناتج المقترح قبل ما تبدأ',
        body: 'راجع الدقة ومعدل البت، ثم عدّل الخيارات عند الحاجة. يعمل Kuymo داخل حدود المصدر والجهاز؛ رفع الأرقام لا يعيد تفاصيل غير موجودة في الأصل. الأهداف الصغيرة جدًا قد تظهر تحذيرًا أو لا يمكن الوصول إليها.',
      },
      {
        title: 'الحجم المحسوب ليس الملف النهائي',
        body: 'قد ينتج ترميز الجهاز حجمًا مختلفًا عن التقدير. يتحقق مسار الضغط من الناتج، ويعرض التغييرات، وقد يعيد المحاولة. راجع النتيجة الفعلية بدل افتراض الوصول للهدف الأصلي دون أي تنازل.',
      },
    ],
    sharing: [
      {
        title: 'نقطة بداية مفيدة',
        body: 'تغطي الإعدادات واتساب، واتساب HD، ديسكورد، Instagram Reels، تيك توك، فيسبوك، X، YouTube Shorts والبريد. كل إعداد نقطة بداية لتحضير الملف، وليس فحصًا مباشرًا لحدود الخدمة الحالية أو نوع حسابك.',
      },
      {
        title: 'القرار النهائي يفضل في إيدك',
        body: 'قد يرفع إعداد المشاركة الحجم المستهدف للحفاظ على نتيجة قابلة للاستخدام. اقرأ الحجم الذي استقرت عليه الخطة والتحذير. لو عندك سقف محدد من مستلم أو خدمة، استخدم هدفًا مخصصًا وراجع حجم الملف النهائي قبل الإرسال.',
      },
      {
        title: 'حضّر وراجع وبعدها شارك',
        body: 'اضبط الصورة والصوت عند الحاجة، ونفّذ الضغط، ثم قارن الحجم الأصلي بالناتج. المشاركة تسلّم الملف المختار لتطبيق الوجهة؛ ولا ترفع الفيديو خفية كجزء من التخطيط أو الترميز.',
      },
    ],
    'on-device': [
      {
        title: 'المعالجة المحلية هي المسار الأساسي',
        body: 'قراءة خصائص المصدر والتخطيط والترميز والتحقق من الناتج تتم على الجهاز. يمكن للترميز العمل دون اتصال. فحص التحديثات الاختياري واتصالات النماذج والتشخيصات منفصلة عن مسار ضغط الفيديو.',
      },
      {
        title: 'للنتيجة مكان ترجع له',
        body: 'يساعدك السجل المحلي في العثور على النتائج ومقارنة الأحجام. التصدير للمعرض ينشئ نسخة هناك، والمشاركة ترسل ملفًا للتطبيق المختار. مسح السجل وإدارة ملفات الوسائط عمليتان مختلفتان؛ راجع ما سيحذفه التنظيف.',
      },
      {
        title: 'افهم الأذونات والانقطاعات',
        body: 'حفظ المعرض والإشعارات يتبعان أذونات أندرويد. يستخدم الضغط النشط إشعار خدمة في المقدمة. يعتمد الاستكمال واستعادة المهام على حالة محفوظة مدعومة، وقد يعاد الترميز عند تعذّر استخدام نقطة الاستكمال.',
      },
    ],
  },
  faqs: [
    {
      q: 'هل كل فيديو ممكن يوصل لأي حجم؟',
      a: 'لا. المدة والصوت والدقة وقدرات الجهاز تحدد الممكن. زوّد الهدف أو قلل الدقة أو معدل الإطارات أو الصوت عند الحاجة. لا يوجد ضمان لضغط بلا فقد أو جودة مطابقة دائمًا.',
    },
    {
      q: 'ليه إعداد المشاركة اختار حجمًا أكبر؟',
      a: 'بعض الإعدادات توسّع الهدف للحفاظ على نتيجة مفيدة. اقرأ الحجم والتحذير. استخدم حجمًا مخصصًا لو عندك سقف بعينه، وراجع النتيجة الفعلية.',
    },
    {
      q: 'الفيديو بيكون فين بعد الضغط؟',
      a: 'ابحث عن النتائج المكتملة في السجل المحلي. الحفظ داخل Kuymo وتصدير نسخة للمعرض مختلفان. استخدم حفظ المعرض عندما تريد النسخة هناك وراجع إذن الوسائط المطلوب.',
    },
    {
      q: 'إيه اللي يحصل لو العملية اتقطعت؟',
      a: 'يمكن للمهام المدعومة الاستكمال من حالة محفوظة. لو نقطة الاستكمال غير صالحة، قد يبدأ الترميز من جديد. اترك مساحة للناتج وملفات الاستعادة، وأدر العمل المنقطع من التطبيق.',
    },
    {
      q: 'ليه ملف أو فيديو HDR مش مدعوم؟',
      a: 'مفككات الوسائط وقدرات الترميز على الجهاز تحدد الدعم. جرّب التحويل إلى SDR عند دعمه لو تعذّر الحفاظ على HDR. يميز التطبيق بين مشاكل الفيديو والصوت والترميز.',
    },
    {
      q: 'أكتب إيه في بلاغ المشكلة؟',
      a: 'اذكر نسخة أندرويد وموديل الجهاز ونسخة التطبيق والهدف أو الإعداد ورسالة الخطأ. لا تشارك عينة إلا لو موافق على نشرها؛ أبعد المقاطع الخاصة ومسارات الملفات الشخصية عن البلاغ.',
    },
  ],
};
export function richContent(locale: string): RichContent {
  if (locale === 'ar') return ar;
  if (locale === 'en') return en;
  throw new Error(`Missing rich content: ${locale}`);
}
