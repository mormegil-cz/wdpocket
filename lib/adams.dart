import 'dart:convert';

const String q42Json = r'''
{
      "pageid": 138,
      "ns": 0,
      "title": "Q42",
      "lastrevid": 1175340593,
      "modified": "2020-05-06T19:28:31Z",
      "type": "item",
      "id": "Q42",
      "labels": {
        "en": {
          "language": "en",
          "value": "Douglas Adams"
        },
        "fr": {
          "language": "fr",
          "value": "Douglas Adams"
        },
        "ru": {
          "language": "ru",
          "value": "Дуглас Адамс"
        },
        "pl": {
          "language": "pl",
          "value": "Douglas Adams"
        },
        "it": {
          "language": "it",
          "value": "Douglas Adams"
        },
        "en-gb": {
          "language": "en-gb",
          "value": "Douglas Adams"
        },
        "nb": {
          "language": "nb",
          "value": "Douglas Adams"
        },
        "es": {
          "language": "es",
          "value": "Douglas Adams"
        },
        "en-ca": {
          "language": "en-ca",
          "value": "Douglas Adams"
        },
        "hr": {
          "language": "hr",
          "value": "Douglas Adams"
        },
        "pt": {
          "language": "pt",
          "value": "Douglas Adams"
        },
        "ko": {
          "language": "ko",
          "value": "더글러스 애덤스"
        },
        "nl": {
          "language": "nl",
          "value": "Douglas Adams"
        },
        "el": {
          "language": "el",
          "value": "Ντάγκλας Άνταμς"
        },
        "ar": {
          "language": "ar",
          "value": "دوغلاس آدمز"
        },
        "arz": {
          "language": "arz",
          "value": "دوجلاس ادامز"
        },
        "bar": {
          "language": "bar",
          "value": "Douglas Adams"
        },
        "be": {
          "language": "be",
          "value": "Дуглас Адамс"
        },
        "bg": {
          "language": "bg",
          "value": "Дъглас Адамс"
        },
        "bs": {
          "language": "bs",
          "value": "Douglas Adams"
        },
        "ca": {
          "language": "ca",
          "value": "Douglas Adams"
        },
        "cs": {
          "language": "cs",
          "value": "Douglas Adams"
        },
        "cy": {
          "language": "cy",
          "value": "Douglas Adams"
        },
        "da": {
          "language": "da",
          "value": "Douglas Adams"
        },
        "eo": {
          "language": "eo",
          "value": "Douglas Adams"
        },
        "et": {
          "language": "et",
          "value": "Douglas Adams"
        },
        "fa": {
          "language": "fa",
          "value": "داگلاس آدامز"
        },
        "fi": {
          "language": "fi",
          "value": "Douglas Adams"
        },
        "ga": {
          "language": "ga",
          "value": "Douglas Adams"
        },
        "gl": {
          "language": "gl",
          "value": "Douglas Adams"
        },
        "he": {
          "language": "he",
          "value": "דאגלס אדמס"
        },
        "hu": {
          "language": "hu",
          "value": "Douglas Adams"
        },
        "id": {
          "language": "id",
          "value": "Douglas Adams"
        },
        "io": {
          "language": "io",
          "value": "Douglas Adams"
        },
        "is": {
          "language": "is",
          "value": "Douglas Adams"
        },
        "ja": {
          "language": "ja",
          "value": "ダグラス・アダムズ"
        },
        "jv": {
          "language": "jv",
          "value": "Douglas Adams"
        },
        "ka": {
          "language": "ka",
          "value": "დაგლას ადამსი"
        },
        "la": {
          "language": "la",
          "value": "Duglassius Adams"
        },
        "lv": {
          "language": "lv",
          "value": "Duglass Adamss"
        },
        "mk": {
          "language": "mk",
          "value": "Даглас Адамс"
        },
        "mr": {
          "language": "mr",
          "value": "डग्लस अॅडम्स"
        },
        "nn": {
          "language": "nn",
          "value": "Douglas Adams"
        },
        "ro": {
          "language": "ro",
          "value": "Douglas Adams"
        },
        "sco": {
          "language": "sco",
          "value": "Douglas Adams"
        },
        "sh": {
          "language": "sh",
          "value": "Douglas Adams"
        },
        "sk": {
          "language": "sk",
          "value": "Douglas Adams"
        },
        "sl": {
          "language": "sl",
          "value": "Douglas Adams"
        },
        "sq": {
          "language": "sq",
          "value": "Douglas Adams"
        },
        "sr": {
          "language": "sr",
          "value": "Даглас Адамс"
        },
        "sv": {
          "language": "sv",
          "value": "Douglas Adams"
        },
        "ta": {
          "language": "ta",
          "value": "டக்ளஸ் ஆடம்ஸ்"
        },
        "tr": {
          "language": "tr",
          "value": "Douglas Adams"
        },
        "uk": {
          "language": "uk",
          "value": "Дуглас Адамс"
        },
        "vi": {
          "language": "vi",
          "value": "Douglas Adams"
        },
        "zh": {
          "language": "zh",
          "value": "道格拉斯·亚当斯"
        },
        "zh-cn": {
          "language": "zh-cn",
          "value": "道格拉斯·亚当斯"
        },
        "zh-hans": {
          "language": "zh-hans",
          "value": "道格拉斯·亚当斯"
        },
        "zh-hant": {
          "language": "zh-hant",
          "value": "道格拉斯·亞當斯"
        },
        "de-ch": {
          "language": "de-ch",
          "value": "Douglas Adams"
        },
        "pt-br": {
          "language": "pt-br",
          "value": "Douglas Adams"
        },
        "zh-sg": {
          "language": "zh-sg",
          "value": "道格拉斯·亚当斯"
        },
        "zh-my": {
          "language": "zh-my",
          "value": "道格拉斯·亚当斯"
        },
        "zh-hk": {
          "language": "zh-hk",
          "value": "道格拉斯·亞當斯"
        },
        "zh-tw": {
          "language": "zh-tw",
          "value": "道格拉斯·亞當斯"
        },
        "zh-mo": {
          "language": "zh-mo",
          "value": "道格拉斯·亞當斯"
        },
        "war": {
          "language": "war",
          "value": "Douglas Adams"
        },
        "be-tarask": {
          "language": "be-tarask",
          "value": "Дуглас Адамз"
        },
        "vep": {
          "language": "vep",
          "value": "Adams Duglas"
        },
        "ur": {
          "language": "ur",
          "value": "ڈگلس ایڈم"
        },
        "oc": {
          "language": "oc",
          "value": "Douglas Adams"
        },
        "af": {
          "language": "af",
          "value": "Douglas Adams"
        },
        "an": {
          "language": "an",
          "value": "Douglas Adams"
        },
        "br": {
          "language": "br",
          "value": "Douglas Adams"
        },
        "eu": {
          "language": "eu",
          "value": "Douglas Adams"
        },
        "lb": {
          "language": "lb",
          "value": "Douglas Adams"
        },
        "lmo": {
          "language": "lmo",
          "value": "Douglas Adams"
        },
        "lt": {
          "language": "lt",
          "value": "Douglas Adams"
        },
        "nds": {
          "language": "nds",
          "value": "Douglas Adams"
        },
        "nds-nl": {
          "language": "nds-nl",
          "value": "Douglas Adams"
        },
        "pms": {
          "language": "pms",
          "value": "Douglas Adams"
        },
        "vec": {
          "language": "vec",
          "value": "Douglas Adams"
        },
        "wa": {
          "language": "wa",
          "value": "Douglas Adams"
        },
        "sr-ec": {
          "language": "sr-ec",
          "value": "Даглас Адамс"
        },
        "sr-el": {
          "language": "sr-el",
          "value": "Daglas Adams"
        },
        "de": {
          "language": "de",
          "value": "Douglas Adams"
        },
        "ckb": {
          "language": "ckb",
          "value": "دەگلاس ئادمز"
        },
        "fo": {
          "language": "fo",
          "value": "Douglas Adams"
        },
        "kl": {
          "language": "kl",
          "value": "Douglas Adams"
        },
        "gsw": {
          "language": "gsw",
          "value": "Douglas Adams"
        },
        "te": {
          "language": "te",
          "value": "డగ్లస్ ఆడమ్స్"
        },
        "si": {
          "language": "si",
          "value": "ඩග්ලස් ඇඩම්ස්"
        },
        "bn": {
          "language": "bn",
          "value": "ডগলাস অ্যাডামস"
        },
        "hi": {
          "language": "hi",
          "value": "डग्लस अ‍डम्स"
        },
        "rwr": {
          "language": "rwr",
          "value": "डग्लस अ‍डम्स"
        },
        "mg": {
          "language": "mg",
          "value": "Douglas Adams"
        },
        "ml": {
          "language": "ml",
          "value": "ഡഗ്ലസ് ആഡംസ്"
        },
        "gu": {
          "language": "gu",
          "value": "ડગ્લાસ એડમ્સ"
        },
        "hy": {
          "language": "hy",
          "value": "Դուգլաս Ադամս"
        },
        "ast": {
          "language": "ast",
          "value": "Douglas Adams"
        },
        "co": {
          "language": "co",
          "value": "Douglas Adams"
        },
        "de-at": {
          "language": "de-at",
          "value": "Douglas Adams"
        },
        "frp": {
          "language": "frp",
          "value": "Douglas Adams"
        },
        "fur": {
          "language": "fur",
          "value": "Douglas Adams"
        },
        "gd": {
          "language": "gd",
          "value": "Douglas Adams"
        },
        "ia": {
          "language": "ia",
          "value": "Douglas Adams"
        },
        "ie": {
          "language": "ie",
          "value": "Douglas Adams"
        },
        "kg": {
          "language": "kg",
          "value": "Douglas Adams"
        },
        "li": {
          "language": "li",
          "value": "Douglas Adams"
        },
        "lij": {
          "language": "lij",
          "value": "Douglas Adams"
        },
        "min": {
          "language": "min",
          "value": "Douglas Adams"
        },
        "ms": {
          "language": "ms",
          "value": "Douglas Adams"
        },
        "nap": {
          "language": "nap",
          "value": "Douglas Adams"
        },
        "nrm": {
          "language": "nrm",
          "value": "Douglas Adams"
        },
        "pcd": {
          "language": "pcd",
          "value": "Douglas Adams"
        },
        "rm": {
          "language": "rm",
          "value": "Douglas Adams"
        },
        "sc": {
          "language": "sc",
          "value": "Douglas Adams"
        },
        "scn": {
          "language": "scn",
          "value": "Douglas Adams"
        },
        "sw": {
          "language": "sw",
          "value": "Douglas Adams"
        },
        "vls": {
          "language": "vls",
          "value": "Douglas Adams"
        },
        "vo": {
          "language": "vo",
          "value": "Douglas Adams"
        },
        "wo": {
          "language": "wo",
          "value": "Douglas Adams"
        },
        "zu": {
          "language": "zu",
          "value": "Douglas Adams"
        },
        "az": {
          "language": "az",
          "value": "Duqlas Noel Adams"
        },
        "ak": {
          "language": "ak",
          "value": "Doglas Adams"
        },
        "or": {
          "language": "or",
          "value": "ଡଗ୍‌ଲାସ୍‌ ଆଦାମ୍‌ସ"
        },
        "kn": {
          "language": "kn",
          "value": "ಡಗ್ಲಸ್ ಆಡಮ್ಸ್"
        },
        "ne": {
          "language": "ne",
          "value": "डगलस एडम्स"
        },
        "mrj": {
          "language": "mrj",
          "value": "Адамс"
        },
        "th": {
          "language": "th",
          "value": "ดั๊กลาส อดัมส์"
        },
        "pa": {
          "language": "pa",
          "value": "ਡਗਲਸ ਐਡਮਜ਼"
        },
        "tcy": {
          "language": "tcy",
          "value": "ಡಾಗ್ಲಸ್ ಆಡಮ್ಸ್"
        },
        "tl": {
          "language": "tl",
          "value": "Douglas Adams"
        },
        "ext": {
          "language": "ext",
          "value": "Douglas Adams"
        },
        "azb": {
          "language": "azb",
          "value": "داقلاس آدامز"
        },
        "lfn": {
          "language": "lfn",
          "value": "Douglas Adams"
        },
        "nan": {
          "language": "nan",
          "value": "Douglas Adams"
        },
        "ky": {
          "language": "ky",
          "value": "Дуглас Адамс"
        },
        "bho": {
          "language": "bho",
          "value": "डगलस एडम्स"
        },
        "wuu": {
          "language": "wuu",
          "value": "道格拉斯·亚当斯"
        },
        "yue": {
          "language": "yue",
          "value": "道格拉斯亞當斯"
        },
        "pnb": {
          "language": "pnb",
          "value": "ڈگلس ایڈمس"
        },
        "sje": {
          "language": "sje",
          "value": "Douglas Adams"
        },
        "se": {
          "language": "se",
          "value": "Douglas Adams"
        },
        "smn": {
          "language": "smn",
          "value": "Douglas Adams"
        },
        "sms": {
          "language": "sms",
          "value": "Douglas Adams"
        },
        "sma": {
          "language": "sma",
          "value": "Douglas Adams"
        },
        "smj": {
          "language": "smj",
          "value": "Douglas Adams"
        },
        "bm": {
          "language": "bm",
          "value": "Douglas Adams"
        },
        "frc": {
          "language": "frc",
          "value": "Douglas Adams"
        },
        "jam": {
          "language": "jam",
          "value": "Douglas Adams"
        },
        "kab": {
          "language": "kab",
          "value": "Douglas Adams"
        },
        "pap": {
          "language": "pap",
          "value": "Douglas Adams"
        },
        "prg": {
          "language": "prg",
          "value": "Douglas Adams"
        },
        "rgn": {
          "language": "rgn",
          "value": "Douglas Adams"
        },
        "vmf": {
          "language": "vmf",
          "value": "Douglas Adams"
        },
        "nqo": {
          "language": "nqo",
          "value": "ߘߎߜ߭ߑߟߊߛ ߊߘߊߡߛ"
        },
        "be-x-old": {
          "language": "be-x-old",
          "value": "Дуглас Адамз"
        },
        "no": {
          "language": "no",
          "value": "Douglas Adams"
        },
        "simple": {
          "language": "simple",
          "value": "Douglas Adams"
        },
        "zh-min-nan": {
          "language": "zh-min-nan",
          "value": "Douglas Adams"
        },
        "zh-yue": {
          "language": "zh-yue",
          "value": "道格拉斯亞當斯"
        }
      },
      "descriptions": {
        "en": {
          "language": "en",
          "value": "English writer and humorist"
        },
        "fr": {
          "language": "fr",
          "value": "écrivain anglais de science-fiction"
        },
        "en-gb": {
          "language": "en-gb",
          "value": "English writer and humourist"
        },
        "nb": {
          "language": "nb",
          "value": "engelsk science fiction-forfatter og humorist"
        },
        "it": {
          "language": "it",
          "value": "scrittore ed umorista britannico"
        },
        "de": {
          "language": "de",
          "value": "britischer Schriftsteller (1952-2001)"
        },
        "es": {
          "language": "es",
          "value": "escritor y humorista británico"
        },
        "ru": {
          "language": "ru",
          "value": "английский писатель, драматург и сценарист, автор серии книг «Автостопом по галактике»"
        },
        "zh-hans": {
          "language": "zh-hans",
          "value": "英国作家"
        },
        "zh-hant": {
          "language": "zh-hant",
          "value": "英國作家"
        },
        "zh-cn": {
          "language": "zh-cn",
          "value": "英国作家"
        },
        "zh-sg": {
          "language": "zh-sg",
          "value": "英国作家"
        },
        "zh-my": {
          "language": "zh-my",
          "value": "英国作家"
        },
        "zh": {
          "language": "zh",
          "value": "英国作家"
        },
        "zh-hk": {
          "language": "zh-hk",
          "value": "英國作家"
        },
        "zh-tw": {
          "language": "zh-tw",
          "value": "英國文學家、幽默作家"
        },
        "zh-mo": {
          "language": "zh-mo",
          "value": "英國作家"
        },
        "ca": {
          "language": "ca",
          "value": "escriptor anglès"
        },
        "fi": {
          "language": "fi",
          "value": "englantilainen kirjailija ja humoristi"
        },
        "cs": {
          "language": "cs",
          "value": "anglický spisovatel, humorista a dramatik"
        },
        "sv": {
          "language": "sv",
          "value": "brittisk författare (1952–2001)"
        },
        "pt-br": {
          "language": "pt-br",
          "value": "escritor e comediante britânico"
        },
        "ta": {
          "language": "ta",
          "value": "ஆங்கில எழுத்தாளர் மற்றும் நகைச்சுவையாளர்"
        },
        "sl": {
          "language": "sl",
          "value": "angleški pisatelj, humorist in dramatik"
        },
        "da": {
          "language": "da",
          "value": "engelsk forfatter"
        },
        "nl": {
          "language": "nl",
          "value": "Engelse schrijver (1952-2001)"
        },
        "pt": {
          "language": "pt",
          "value": "escritor e comediante britânico"
        },
        "pl": {
          "language": "pl",
          "value": "brytyjski pisarz"
        },
        "lv": {
          "language": "lv",
          "value": "angļu zinātniskās fantastikas rakstnieks un humorists"
        },
        "sr": {
          "language": "sr",
          "value": "енглески писац научне фантастике и хумориста"
        },
        "sr-ec": {
          "language": "sr-ec",
          "value": "енглески писац научне фантастике и хумориста"
        },
        "sr-el": {
          "language": "sr-el",
          "value": "engleski pisac naučne fantastike i humorista"
        },
        "eo": {
          "language": "eo",
          "value": "angla aŭtoro de sciencfikcio-romanoj kaj humoristo"
        },
        "bar": {
          "language": "bar",
          "value": "a englischer Science-Fiction-Schriftsteller"
        },
        "br": {
          "language": "br",
          "value": "skrivagner saoznek"
        },
        "ja": {
          "language": "ja",
          "value": "イングランドの作家"
        },
        "nn": {
          "language": "nn",
          "value": "engelsk sciencefictionforfattar og humorist"
        },
        "tr": {
          "language": "tr",
          "value": "İngiliz bilim kurgu ve mizah yazarı"
        },
        "si": {
          "language": "si",
          "value": "ඉංග්‍රීසි කවියෙක්"
        },
        "vi": {
          "language": "vi",
          "value": "Nhà văn và nhà soạn hài kịch người Anh"
        },
        "cy": {
          "language": "cy",
          "value": "awdur a dychanwr Seisnig"
        },
        "gu": {
          "language": "gu",
          "value": "અંગ્રેજી લેખક અને હાસ્યકાર"
        },
        "uk": {
          "language": "uk",
          "value": "британський комічний радіодраматург, письменник"
        },
        "ro": {
          "language": "ro",
          "value": "scriitor, dramaturg englez"
        },
        "hu": {
          "language": "hu",
          "value": "angol író"
        },
        "fa": {
          "language": "fa",
          "value": "فیلمنامه‌نویس و نویسنده بریتانیایی"
        },
        "af": {
          "language": "af",
          "value": "Engelse skrywer en humoris"
        },
        "mk": {
          "language": "mk",
          "value": "англиски писател и хуморист"
        },
        "el": {
          "language": "el",
          "value": "Άγγλος συγγραφέας"
        },
        "hy": {
          "language": "hy",
          "value": "անգլիացի գրող, դրամատուրգ, սցենարիստ, «Ավտոստոպով զբոսաշրջիկի միջգալակտիկական ուղեցույց» վեպերի շարք"
        },
        "bg": {
          "language": "bg",
          "value": "английски писател и хуморист"
        },
        "ne": {
          "language": "ne",
          "value": "अङ्ग्रेजी लेखक र व्यङ्ग्यकार"
        },
        "he": {
          "language": "he",
          "value": "סופר והומוריסטן בריטי"
        },
        "de-at": {
          "language": "de-at",
          "value": "britischer Schriftsteller"
        },
        "de-ch": {
          "language": "de-ch",
          "value": "britischer Schriftsteller"
        },
        "gsw": {
          "language": "gsw",
          "value": "britischer Schriftsteller"
        },
        "nds": {
          "language": "nds",
          "value": "englischer Schriftsteller"
        },
        "kn": {
          "language": "kn",
          "value": "ಇಂಗ್ಲಿಷ್ ಭಾಷೆಯ ಬರಹಗಾರ ಹಾಗೂ ಹಾಸ್ಯ ಲೇಖಕ"
        },
        "pa": {
          "language": "pa",
          "value": "ਅੰਗਰੇਜ਼ੀ ਲੇਖਕ"
        },
        "ar": {
          "language": "ar",
          "value": "كاتب إنجليزي فكاهي"
        },
        "tl": {
          "language": "tl",
          "value": "taga-Inglatera na manunulat at tagapagpatawa"
        },
        "eu": {
          "language": "eu",
          "value": "idazle eta umorista britaniarra"
        },
        "hr": {
          "language": "hr",
          "value": "britanski radijski dramaturg i pisac znanstvene fantastike"
        },
        "ko": {
          "language": "ko",
          "value": "영국의 작가"
        },
        "sw": {
          "language": "sw",
          "value": "mwandishi Mwingereza"
        },
        "th": {
          "language": "th",
          "value": "นักเขียนและผู้เล่าเรื่องอารมณ์ขันชาวอังกฤษ"
        },
        "en-ca": {
          "language": "en-ca",
          "value": "English writer"
        },
        "gd": {
          "language": "gd",
          "value": "sgrìobhadair Sasannach"
        },
        "ka": {
          "language": "ka",
          "value": "ინგლისელი მწერალი და იუმორისტი"
        },
        "et": {
          "language": "et",
          "value": "inglise ulmekirjanik"
        },
        "te": {
          "language": "te",
          "value": "ఇంగ్లీషు రచయిత, హాస్యకారుడు"
        },
        "ast": {
          "language": "ast",
          "value": "escritor y humorista inglés"
        },
        "sq": {
          "language": "sq",
          "value": "autor dhe humorist anglez"
        },
        "gl": {
          "language": "gl",
          "value": "escritor e guionista británico"
        },
        "bho": {
          "language": "bho",
          "value": "अंग्रेजी भाषा के ब्रिटिश लेखक"
        },
        "sk": {
          "language": "sk",
          "value": "anglický spisovateľ"
        },
        "la": {
          "language": "la",
          "value": "scriptor, scriptor scaenicus, et mythistoricus (1952–2001)"
        },
        "ml": {
          "language": "ml",
          "value": "ബ്രിട്ടീഷ് എഴുത്തുകാരനും ഹാസ്യകാരനും"
        },
        "ga": {
          "language": "ga",
          "value": "scríbhneoir Sasanach"
        },
        "ku-latn": {
          "language": "ku-latn",
          "value": "nivîskarê brîtanî"
        },
        "min": {
          "language": "min",
          "value": "Panulih jo palawak dari Inggirih"
        },
        "hi": {
          "language": "hi",
          "value": "अंग्रेजी लेखक"
        },
        "nqo": {
          "language": "nqo",
          "value": "ߊ߲߬ߜ߭ߌ߬ߟߋ߬ ߛߓߍߦߟߊ ߞߎ߲߬ߘߐ߬ߕߍ߰ ߟߐ߲ߞߏ ߞߊ߲߬"
        },
        "be": {
          "language": "be",
          "value": "англійскі пісьменнік"
        }
      },
      "aliases": {
        "en": [
          {
            "language": "en",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "en",
            "value": "Douglas Noël Adams"
          },
          {
            "language": "en",
            "value": "Douglas N. Adams"
          }
        ],
        "ru": [
          {
            "language": "ru",
            "value": "Адамс, Дуглас"
          }
        ],
        "nb": [
          {
            "language": "nb",
            "value": "Douglas Noël Adams"
          },
          {
            "language": "nb",
            "value": "Douglas N. Adams"
          }
        ],
        "fr": [
          {
            "language": "fr",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "fr",
            "value": "Douglas Noël Adams"
          }
        ],
        "de": [
          {
            "language": "de",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "de",
            "value": "Douglas Noël Adams"
          }
        ],
        "pt-br": [
          {
            "language": "pt-br",
            "value": "Douglas Noël Adams"
          },
          {
            "language": "pt-br",
            "value": "Douglas Noel Adams"
          }
        ],
        "be-tarask": [
          {
            "language": "be-tarask",
            "value": "Дуглас Адамс"
          }
        ],
        "zh": [
          {
            "language": "zh",
            "value": "亞當斯"
          }
        ],
        "es": [
          {
            "language": "es",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "es",
            "value": "Douglas Noël Adams"
          }
        ],
        "it": [
          {
            "language": "it",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "it",
            "value": "Douglas N. Adams"
          }
        ],
        "cs": [
          {
            "language": "cs",
            "value": "Douglas Noël Adams"
          },
          {
            "language": "cs",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "cs",
            "value": "Douglas N. Adams"
          }
        ],
        "hy": [
          {
            "language": "hy",
            "value": "Ադամս, Դուգլաս"
          }
        ],
        "el": [
          {
            "language": "el",
            "value": "Ντάγκλας Νόελ Άνταμς"
          }
        ],
        "nl": [
          {
            "language": "nl",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "nl",
            "value": "Douglas Noël Adams"
          }
        ],
        "pt": [
          {
            "language": "pt",
            "value": "Douglas Noël Adams"
          },
          {
            "language": "pt",
            "value": "Douglas Noel Adams"
          }
        ],
        "ja": [
          {
            "language": "ja",
            "value": "ダグラス・アダムス"
          }
        ],
        "pa": [
          {
            "language": "pa",
            "value": "ਡਗਲਸ ਨੋਏਲ ਐਡਮਜ਼"
          }
        ],
        "tl": [
          {
            "language": "tl",
            "value": "Douglas Noël Adams"
          },
          {
            "language": "tl",
            "value": "Douglas Noel Adams"
          }
        ],
        "eu": [
          {
            "language": "eu",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "eu",
            "value": "Douglas Noël Adams"
          }
        ],
        "uk": [
          {
            "language": "uk",
            "value": "Дуглас Ноел Адамс"
          },
          {
            "language": "uk",
            "value": "Адамс Дуглас"
          }
        ],
        "hr": [
          {
            "language": "hr",
            "value": "Douglas Noël Adams"
          },
          {
            "language": "hr",
            "value": "Douglas N. Adams"
          },
          {
            "language": "hr",
            "value": "Douglas Noel Adams"
          }
        ],
        "he": [
          {
            "language": "he",
            "value": "דגלס אדמס"
          },
          {
            "language": "he",
            "value": "דאגלס נואל אדמס"
          }
        ],
        "ko": [
          {
            "language": "ko",
            "value": "더글라스 애덤스"
          },
          {
            "language": "ko",
            "value": "더글러스 노엘 애덤스"
          }
        ],
        "sw": [
          {
            "language": "sw",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "sw",
            "value": "Douglas Noël Adams"
          }
        ],
        "tr": [
          {
            "language": "tr",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "tr",
            "value": "Douglas N. Adams"
          }
        ],
        "et": [
          {
            "language": "et",
            "value": "Douglas Noël Adams"
          }
        ],
        "ar": [
          {
            "language": "ar",
            "value": "دوغلاس نويل آدمز"
          },
          {
            "language": "ar",
            "value": "دوغلاس ن. آدمز"
          },
          {
            "language": "ar",
            "value": "دوغلاس آدامز"
          },
          {
            "language": "ar",
            "value": "دوجلاس آدمز"
          },
          {
            "language": "ar",
            "value": "دوجلاس آدامز"
          }
        ],
        "la": [
          {
            "language": "la",
            "value": "Duglassius Noëlus Adams"
          }
        ],
        "gl": [
          {
            "language": "gl",
            "value": "Douglas Noël Adams"
          }
        ],
        "bho": [
          {
            "language": "bho",
            "value": "डग्लस अडम्स"
          },
          {
            "language": "bho",
            "value": "डग्लस एडम्स"
          }
        ],
        "sv": [
          {
            "language": "sv",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "sv",
            "value": "Douglas Noël Adams"
          }
        ],
        "ml": [
          {
            "language": "ml",
            "value": "ഡഗ്ലസ് നോയൽ ആഡംസ്"
          },
          {
            "language": "ml",
            "value": "ഡഗ്ലസ് എന്‍ ആഡംസ്"
          }
        ],
        "nn": [
          {
            "language": "nn",
            "value": "Douglas Noel Adams"
          }
        ],
        "ga": [
          {
            "language": "ga",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "ga",
            "value": "Douglas Noël Adams"
          },
          {
            "language": "ga",
            "value": "Douglas N. Adams"
          }
        ],
        "zh-tw": [
          {
            "language": "zh-tw",
            "value": "道格拉斯·諾耶爾·亞當斯"
          }
        ],
        "ro": [
          {
            "language": "ro",
            "value": "Douglas Noël Adams"
          }
        ],
        "eo": [
          {
            "language": "eo",
            "value": "Douglas ADAMS"
          },
          {
            "language": "eo",
            "value": "Douglas Noël ADAMS"
          }
        ],
        "ca": [
          {
            "language": "ca",
            "value": "Douglas Noel Adams"
          },
          {
            "language": "ca",
            "value": "Douglas Noël Adams"
          }
        ],
        "nqo": [
          {
            "language": "nqo",
            "value": "ߘߎߜ߭ߑߟߊߛ ߣߏߥߍߟ ߊߘߊߡߛ"
          },
          {
            "language": "nqo",
            "value": "ߘߎߜ߭ߑߟߊߛ ߣ. ߊߘߊߡߛ"
          }
        ],
        "pl": [
          {
            "language": "pl",
            "value": "Douglas Noel Adams"
          }
        ]
      },
      "claims": {
        "P31": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P31",
              "hash": "ad7d38a03cdd40cdc373de0dc4e7b7fcbccb31d9",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 5,
                  "id": "Q5"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$F078E5B3-F9A8-480E-B7AC-D97778CBBEF9",
            "rank": "normal",
            "references": [
              {
                "hash": "2b369d0a4f1d4b801e734fe84a0b217e13dd2930",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              },
              {
                "hash": "3e239d3a91e3300362855f1a4990bd3125f21abf",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "def9f19d84b65167a2a17ce38364d264c16127fc",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 19938912,
                          "id": "Q19938912"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "d6162a1716489623c6e595e448b17f8dca4fb2e8",
                      "datavalue": {
                        "value": {
                          "time": "+2015-10-10T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "c2533c0aa0d8cbc5c781f5649e9fca5b633d2954",
                      "datavalue": {
                        "value": "http://data.bnf.fr/ark:/12148/cb11888092r",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P813",
                  "P854"
                ]
              }
            ]
          }
        ],
        "P21": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P21",
              "hash": "85ad4b1c7348f7a5aac521135040d74e91fb5939",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 6581097,
                  "id": "Q6581097"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "q42$39F4DE4F-C277-449C-9F99-512350971B5B",
            "rank": "normal",
            "references": [
              {
                "hash": "2b369d0a4f1d4b801e734fe84a0b217e13dd2930",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              },
              {
                "hash": "a02f3a77ddd343e6b88be25696b055f5131c3d64",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "019a50b7de741e0068bde41c9d9955b22a5de47b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 36578,
                          "id": "Q36578"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P227": [
                    {
                      "snaktype": "value",
                      "property": "P227",
                      "hash": "2a20755d12051fc95152d6107bd8a34e7fbc63c4",
                      "datavalue": {
                        "value": "119033364",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "c1b3a8484d531e0eac6b9835b63e74b1412ccdb0",
                      "datavalue": {
                        "value": {
                          "time": "+2015-07-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P227",
                  "P813"
                ]
              },
              {
                "hash": "3e239d3a91e3300362855f1a4990bd3125f21abf",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "def9f19d84b65167a2a17ce38364d264c16127fc",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 19938912,
                          "id": "Q19938912"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "d6162a1716489623c6e595e448b17f8dca4fb2e8",
                      "datavalue": {
                        "value": {
                          "time": "+2015-10-10T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "c2533c0aa0d8cbc5c781f5649e9fca5b633d2954",
                      "datavalue": {
                        "value": "http://data.bnf.fr/ark:/12148/cb11888092r",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P813",
                  "P854"
                ]
              }
            ]
          }
        ],
        "P106": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P106",
              "hash": "1ecddfdb184ec1e8540abf98fb07f825697cfab5",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 214917,
                  "id": "Q214917"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$e0f736bd-4711-c43b-9277-af1e9b2fb85f",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P106",
              "hash": "8c403faaa2be823ac66d54a4e5e1c37ddbf96da0",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 28389,
                  "id": "Q28389"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "q42$E13E619F-63EF-4B72-99D9-7A45C7C6AD34",
            "rank": "normal",
            "references": [
              {
                "hash": "f67142030dd221e1441a10a7438323ad44f35be8",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "52af760ff9ceb914251924abe88e53af182b0f92",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 193563,
                          "id": "Q193563"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P268": [
                    {
                      "snaktype": "value",
                      "property": "P268",
                      "hash": "8721e8944f95e9ce185c270dd1e12b81d13f7e9b",
                      "datavalue": {
                        "value": "11888092r",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P268",
                  "P813"
                ]
              },
              {
                "hash": "0fed87b3320338e0ed0587df9b43e47cfcf5b69f",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "d679e707f58412628d39fb85af3e5393e7935e69",
                      "datavalue": {
                        "value": "http://www.jinni.com/tv/the-hitchhikers-guide-to-the-galaxy/cast-crew/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              }
            ]
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P106",
              "hash": "7992d2aec094f84d664106049d9a4955d096082f",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 6625963,
                  "id": "Q6625963"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$D6E21D67-05D6-4A0B-8458-0744FCEED13D",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P106",
              "hash": "05de1894dc52a056fa732acf7078c4f194b036d5",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 4853732,
                  "id": "Q4853732"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$7eb8aaef-4ddf-8b87-bd02-406f91a296bd",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P106",
              "hash": "468425a7d5990169ca1caa25413280f78cb985f8",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 18844224,
                  "id": "Q18844224"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "q42$CBDC4890-D5A2-469C-AEBB-EFB682B891E7",
            "rank": "normal",
            "references": [
              {
                "hash": "f67142030dd221e1441a10a7438323ad44f35be8",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "52af760ff9ceb914251924abe88e53af182b0f92",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 193563,
                          "id": "Q193563"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P268": [
                    {
                      "snaktype": "value",
                      "property": "P268",
                      "hash": "8721e8944f95e9ce185c270dd1e12b81d13f7e9b",
                      "datavalue": {
                        "value": "11888092r",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P268",
                  "P813"
                ]
              }
            ]
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P106",
              "hash": "cb6956acd8af4f54927985ab67fb99c443340c03",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 245068,
                  "id": "Q245068"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$58F0D772-9CE4-46AC-BF0D-FBBBAFA09603",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P106",
              "hash": "70541c2eb72d85fa5f74008b4ee33b004a1ff7eb",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 36180,
                  "id": "Q36180"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$663C6872-388F-4024-995A-BC3C1C0E57C6",
            "rank": "normal"
          }
        ],
        "P800": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P800",
              "hash": "12e1c410170de1e9247f6517a0da31885e9d1d62",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 25169,
                  "id": "Q25169"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$FA73986E-3D1D-4CAB-B358-424B58544620",
            "rank": "normal",
            "references": [
              {
                "hash": "355b56329b78db22be549dec34f2570ca61ca056",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "d1d1b10a05a8f3fc5d26bb4aeb6849617ad81fc7",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 5375741,
                          "id": "Q5375741"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P248"
                ]
              }
            ]
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P800",
              "hash": "d4d95f64e9b01211698438ce2fce587657513a4a",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 20736364,
                  "id": "Q20736364"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$61ce65a9-454a-5b97-e014-496299c1c03a",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P800",
              "hash": "2f2742d0598fbc9673d3ef91ff5dbe88188276c2",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 7758404,
                  "id": "Q7758404"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$1c92fbe2-4743-0b27-e4ac-16320efe7864",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P800",
              "hash": "b58323a2e4f5967c72329d490c2e12a239650abb",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 578895,
                  "id": "Q578895"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$e4b3a5e3-422e-593a-5b7c-3b12b5a4a0bb",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P800",
              "hash": "25fb237a83b453c0406675e5a78e93611b0d5ea8",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 721,
                  "id": "Q721"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$f338abf5-43cb-f5eb-1d32-9cdb73c084b9",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P800",
              "hash": "1dbd4866665f07859d17e2e17d553f29a3351912",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 1042294,
                  "id": "Q1042294"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$a7ebf426-476d-5cd9-b489-d849c8e0a82d",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P800",
              "hash": "8f53ca9ce292d556286e3029f4fa69eb0f3e1411",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 187655,
                  "id": "Q187655"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$586d443e-43ef-fdc2-223f-c4ff6c2b6531",
            "rank": "normal"
          }
        ],
        "P569": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P569",
              "hash": "27f538a50ad110d1e6716c972f5f0ac24ca17430",
              "datavalue": {
                "value": {
                  "time": "+1952-03-11T00:00:00Z",
                  "timezone": 0,
                  "before": 0,
                  "after": 0,
                  "precision": 11,
                  "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                },
                "type": "time"
              },
              "datatype": "time"
            },
            "type": "statement",
            "id": "q42$D8404CDA-25E4-4334-AF13-A3290BCD9C0F",
            "rank": "normal",
            "references": [
              {
                "hash": "2f26d70b1e8b8cb53882b83197d1859e226da12d",
                "snaks": {
                  "P268": [
                    {
                      "snaktype": "value",
                      "property": "P268",
                      "hash": "8721e8944f95e9ce185c270dd1e12b81d13f7e9b",
                      "datavalue": {
                        "value": "11888092r",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "d257e42604861810e838f211e8259afd949dd449",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 15222191,
                          "id": "Q15222191"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P268",
                  "P248",
                  "P813"
                ]
              },
              {
                "hash": "355b56329b78db22be549dec34f2570ca61ca056",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "d1d1b10a05a8f3fc5d26bb4aeb6849617ad81fc7",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 5375741,
                          "id": "Q5375741"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P248"
                ]
              },
              {
                "hash": "a02f3a77ddd343e6b88be25696b055f5131c3d64",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "019a50b7de741e0068bde41c9d9955b22a5de47b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 36578,
                          "id": "Q36578"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P227": [
                    {
                      "snaktype": "value",
                      "property": "P227",
                      "hash": "2a20755d12051fc95152d6107bd8a34e7fbc63c4",
                      "datavalue": {
                        "value": "119033364",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "c1b3a8484d531e0eac6b9835b63e74b1412ccdb0",
                      "datavalue": {
                        "value": {
                          "time": "+2015-07-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P227",
                  "P813"
                ]
              },
              {
                "hash": "3e239d3a91e3300362855f1a4990bd3125f21abf",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "def9f19d84b65167a2a17ce38364d264c16127fc",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 19938912,
                          "id": "Q19938912"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "d6162a1716489623c6e595e448b17f8dca4fb2e8",
                      "datavalue": {
                        "value": {
                          "time": "+2015-10-10T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "c2533c0aa0d8cbc5c781f5649e9fca5b633d2954",
                      "datavalue": {
                        "value": "http://data.bnf.fr/ark:/12148/cb11888092r",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P813",
                  "P854"
                ]
              },
              {
                "hash": "3bc90af5225a0b1248b3362e911577073e904e20",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "dbd2f3b8b11eb0da5209a6ea4a74ce0df88c749b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1139587,
                          "id": "Q1139587"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P2168": [
                    {
                      "snaktype": "value",
                      "property": "P2168",
                      "hash": "5b535a453c0f88c11cb592ae35510abe93d2eec5",
                      "datavalue": {
                        "value": "271209",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "b468ee5535c44e76e52a8ad71217a0f5c5077d19",
                      "datavalue": {
                        "value": {
                          "time": "+2016-01-11T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P2168",
                  "P813"
                ]
              },
              {
                "hash": "b460d7e5cae668698a5dfe74198df6632fe7231d",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "f98ec89708e8eab9511c049702ef59df0721d652",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 29861311,
                          "id": "Q29861311"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P3430": [
                    {
                      "snaktype": "value",
                      "property": "P3430",
                      "hash": "1e9a0d6461bed3d3b3f7ed1956b151058982cd6e",
                      "datavalue": {
                        "value": "w65h7md1",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "03773f9c659ee8c03a232bce2522c8bb1b66402c",
                      "datavalue": {
                        "value": "Douglas Adams",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P3430",
                  "P1810",
                  "P813"
                ]
              },
              {
                "hash": "28af4e1131157dbbb2a5bbae189519a22e7d2b79",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "21e8e2c39cd74b26201557fb152f6a894b180241",
                      "datavalue": {
                        "value": "https://www.wired.com/2012/03/i-miss-douglas-adams/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              },
              {
                "hash": "fcdddce2cc4540a613b0b8c0e5d2bbd2cc5704a9",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "7278d120725f30a1e40e337049583011d3578bd3",
                      "datavalue": {
                        "value": "http://www.independent.co.uk/arts-entertainment/books/news/google-doodle-celebrates-life-of-hitchhikers-guide-to-the-galaxy-author-douglas-adams-8528856.html",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              },
              {
                "hash": "162d5556b3c48733c6c27b4cddcb99bc86f4bf70",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "871891c242389d06b23bf809fdc0301df1ed9c77",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 2629164,
                          "id": "Q2629164"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P1233": [
                    {
                      "snaktype": "value",
                      "property": "P1233",
                      "hash": "b601606b4bce3131ed7b591bb3acbcaeaa8f7a6e",
                      "datavalue": {
                        "value": "122",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "03773f9c659ee8c03a232bce2522c8bb1b66402c",
                      "datavalue": {
                        "value": "Douglas Adams",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P1233",
                  "P1810",
                  "P813"
                ]
              },
              {
                "hash": "bab32d323b6c92d91ff7d0c4707346012900761b",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "d74ce84c9bceb1f94564bc8d53ad074739e46eb3",
                      "datavalue": {
                        "value": "http://www.screenonline.org.uk/people/id/1233876/index.html",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              },
              {
                "hash": "0d9f07c561f61776c61a026473508c535af28267",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "b62f3fa8bab7eb5e1bfe16d03cda082d25315c85",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 63056,
                          "id": "Q63056"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P535": [
                    {
                      "snaktype": "value",
                      "property": "P535",
                      "hash": "ce3fb403e96b3b004b1b480734c941819c442c01",
                      "datavalue": {
                        "value": "22814",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "d34dcfad6c25d9dfabf330ae1c0c8159e36f1fa6",
                      "datavalue": {
                        "value": "Douglas Noel Adams",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P535",
                  "P1810",
                  "P813"
                ]
              },
              {
                "hash": "dc42b8fb4c89807fe07a74ee933d45e4ba6353a1",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "9d66409d3d04632fc69413ea86abf094f92fae88",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 3343389,
                          "id": "Q3343389"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P5570": [
                    {
                      "snaktype": "value",
                      "property": "P5570",
                      "hash": "0a407feec4ece2cd71d650ad10574fb91b9f5b18",
                      "datavalue": {
                        "value": "143",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "2956a68705d15418b9490fb5feb13d1c1c2801fc",
                      "datavalue": {
                        "value": "Douglas ADAMS",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P5570",
                  "P1810",
                  "P813"
                ]
              },
              {
                "hash": "d7aaf26847f40ca003dea9ec41f13243607e1cb5",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "955922c4315ac036b19e6af494c9a897193971b0",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 974352,
                          "id": "Q974352"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P1284": [
                    {
                      "snaktype": "value",
                      "property": "P1284",
                      "hash": "2f5c2e65a1d9fca309615b885bf62f3e5260874e",
                      "datavalue": {
                        "value": "00000020676",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "03773f9c659ee8c03a232bce2522c8bb1b66402c",
                      "datavalue": {
                        "value": "Douglas Adams",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P1284",
                  "P1810",
                  "P813"
                ]
              },
              {
                "hash": "dc42b8fb4c89807fe07a74ee933d45e4ba6353a1",
                "snaks": {
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "2956a68705d15418b9490fb5feb13d1c1c2801fc",
                      "datavalue": {
                        "value": "Douglas ADAMS",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "9d66409d3d04632fc69413ea86abf094f92fae88",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 3343389,
                          "id": "Q3343389"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P5570": [
                    {
                      "snaktype": "value",
                      "property": "P5570",
                      "hash": "0a407feec4ece2cd71d650ad10574fb91b9f5b18",
                      "datavalue": {
                        "value": "143",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ]
                },
                "snaks-order": [
                  "P813",
                  "P1810",
                  "P248",
                  "P5570"
                ]
              },
              {
                "hash": "7571c014841534580d357bfbc652e23c8dfe6f76",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "e2a81dbf2f7dd02b332d6358ef65f622f82e8cc3",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 237227,
                          "id": "Q237227"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P5019": [
                    {
                      "snaktype": "value",
                      "property": "P5019",
                      "hash": "43ed67a7e85525f6e09d5b1c7d8cf48a13b0249d",
                      "datavalue": {
                        "value": "adams-douglas-noel",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "c4476ecceaffe79708600de5842ba5b400aa7065",
                      "datavalue": {
                        "value": "Douglas Noël Adams",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P5019",
                  "P1810",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P19": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P19",
              "hash": "779e8852aac9ba2014a9434016cba24b1890a9da",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 350,
                  "id": "Q350"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "q42$3D284234-52BC-4DA3-83A3-7C39F84BA518",
            "rank": "normal",
            "references": [
              {
                "hash": "355b56329b78db22be549dec34f2570ca61ca056",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "d1d1b10a05a8f3fc5d26bb4aeb6849617ad81fc7",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 5375741,
                          "id": "Q5375741"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P248"
                ]
              },
              {
                "hash": "3f4d26cf841e20630c969afc0e48e5e3ef0c5a49",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "a99756c83f320398a58edbbdccd46eb682e68267",
                      "datavalue": {
                        "value": "http://www.theguardian.com/news/2001/may/15/guardianobituaries.books",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "27c7402a696628d2a0e5abbf443995be8b895503",
                      "datavalue": {
                        "value": {
                          "time": "+2001-05-15T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P1433": [
                    {
                      "snaktype": "value",
                      "property": "P1433",
                      "hash": "5c3e5ddc26dbc4ebdea58b53cc7f40811ef9e2ec",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 11148,
                          "id": "Q11148"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P50": [
                    {
                      "snaktype": "value",
                      "property": "P50",
                      "hash": "0c09ca36156b084dd45e1b836575dc7382d4a16e",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 18145749,
                          "id": "Q18145749"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "0730f27f8dcabe7b3d74ea981c7a9c15ea162685",
                      "datavalue": {
                        "value": {
                          "text": "Obituary: Douglas Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P577",
                  "P813",
                  "P1433",
                  "P50",
                  "P1476",
                  "P407"
                ]
              },
              {
                "hash": "56bec30cb018e4b65ccd8505a79137067f944f71",
                "snaks": {
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "608a4db5259bcc914081457a65a62291c0d60fba",
                      "datavalue": {
                        "value": {
                          "text": "Hitch Hiker's Guide author Douglas Adams dies aged 49",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "9a430275f318d708678f048d2fcc2f4e1336fccf",
                      "datavalue": {
                        "value": {
                          "time": "+2001-05-13T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "f58a3ab6374660155a7a316dc8e0fb3e2a30263b",
                      "datavalue": {
                        "value": "http://www.telegraph.co.uk/news/uknews/1330072/Hitch-Hikers-Guide-author-Douglas-Adams-dies-aged-49.html",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "0af3fa4e868fcf34f10f64051305ed69118d9254",
                      "datavalue": {
                        "value": {
                          "time": "+2015-01-03T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "eebb17bd40383600a49dee25c2177c288975a83f",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 192621,
                          "id": "Q192621"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P1476",
                  "P577",
                  "P407",
                  "P854",
                  "P813",
                  "P248"
                ]
              },
              {
                "hash": "a02f3a77ddd343e6b88be25696b055f5131c3d64",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "019a50b7de741e0068bde41c9d9955b22a5de47b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 36578,
                          "id": "Q36578"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P227": [
                    {
                      "snaktype": "value",
                      "property": "P227",
                      "hash": "2a20755d12051fc95152d6107bd8a34e7fbc63c4",
                      "datavalue": {
                        "value": "119033364",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "c1b3a8484d531e0eac6b9835b63e74b1412ccdb0",
                      "datavalue": {
                        "value": {
                          "time": "+2015-07-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P227",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P570": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P570",
              "hash": "ccf97856f19fb921cadad798dea5abfcbfc0e6b8",
              "datavalue": {
                "value": {
                  "time": "+2001-05-11T00:00:00Z",
                  "timezone": 0,
                  "before": 0,
                  "after": 0,
                  "precision": 11,
                  "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                },
                "type": "time"
              },
              "datatype": "time"
            },
            "type": "statement",
            "id": "q42$65EA9C32-B26C-469B-84FE-FC612B71D159",
            "rank": "normal",
            "references": [
              {
                "hash": "2f26d70b1e8b8cb53882b83197d1859e226da12d",
                "snaks": {
                  "P268": [
                    {
                      "snaktype": "value",
                      "property": "P268",
                      "hash": "8721e8944f95e9ce185c270dd1e12b81d13f7e9b",
                      "datavalue": {
                        "value": "11888092r",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "d257e42604861810e838f211e8259afd949dd449",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 15222191,
                          "id": "Q15222191"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P268",
                  "P248",
                  "P813"
                ]
              },
              {
                "hash": "355b56329b78db22be549dec34f2570ca61ca056",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "d1d1b10a05a8f3fc5d26bb4aeb6849617ad81fc7",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 5375741,
                          "id": "Q5375741"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P248"
                ]
              },
              {
                "hash": "a02f3a77ddd343e6b88be25696b055f5131c3d64",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "019a50b7de741e0068bde41c9d9955b22a5de47b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 36578,
                          "id": "Q36578"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P227": [
                    {
                      "snaktype": "value",
                      "property": "P227",
                      "hash": "2a20755d12051fc95152d6107bd8a34e7fbc63c4",
                      "datavalue": {
                        "value": "119033364",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "c1b3a8484d531e0eac6b9835b63e74b1412ccdb0",
                      "datavalue": {
                        "value": {
                          "time": "+2015-07-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P227",
                  "P813"
                ]
              },
              {
                "hash": "3e239d3a91e3300362855f1a4990bd3125f21abf",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "def9f19d84b65167a2a17ce38364d264c16127fc",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 19938912,
                          "id": "Q19938912"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "d6162a1716489623c6e595e448b17f8dca4fb2e8",
                      "datavalue": {
                        "value": {
                          "time": "+2015-10-10T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "c2533c0aa0d8cbc5c781f5649e9fca5b633d2954",
                      "datavalue": {
                        "value": "http://data.bnf.fr/ark:/12148/cb11888092r",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P813",
                  "P854"
                ]
              },
              {
                "hash": "3bc90af5225a0b1248b3362e911577073e904e20",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "dbd2f3b8b11eb0da5209a6ea4a74ce0df88c749b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1139587,
                          "id": "Q1139587"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P2168": [
                    {
                      "snaktype": "value",
                      "property": "P2168",
                      "hash": "5b535a453c0f88c11cb592ae35510abe93d2eec5",
                      "datavalue": {
                        "value": "271209",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "b468ee5535c44e76e52a8ad71217a0f5c5077d19",
                      "datavalue": {
                        "value": {
                          "time": "+2016-01-11T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P2168",
                  "P813"
                ]
              },
              {
                "hash": "b460d7e5cae668698a5dfe74198df6632fe7231d",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "f98ec89708e8eab9511c049702ef59df0721d652",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 29861311,
                          "id": "Q29861311"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P3430": [
                    {
                      "snaktype": "value",
                      "property": "P3430",
                      "hash": "1e9a0d6461bed3d3b3f7ed1956b151058982cd6e",
                      "datavalue": {
                        "value": "w65h7md1",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "03773f9c659ee8c03a232bce2522c8bb1b66402c",
                      "datavalue": {
                        "value": "Douglas Adams",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P3430",
                  "P1810",
                  "P813"
                ]
              },
              {
                "hash": "e9a6c72ac1c0c2bc336ff672ddaf89ecd17fff68",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "473ac6b52f2c348ee11cff8601894a2e9a3cf838",
                      "datavalue": {
                        "value": "https://www.theguardian.com/uk/2001/may/13/books.booksnews",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "53b72c0a5e7ac57b3d64967a96bf920db6313b87",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-28T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P813"
                ]
              },
              {
                "hash": "28af4e1131157dbbb2a5bbae189519a22e7d2b79",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "21e8e2c39cd74b26201557fb152f6a894b180241",
                      "datavalue": {
                        "value": "https://www.wired.com/2012/03/i-miss-douglas-adams/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              },
              {
                "hash": "268aeb992f54257af5a86d9d7f0d9627214b628f",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "6172a0cb0d358ba70297f9f43fb3e4d436f81181",
                      "datavalue": {
                        "value": "https://www.locusmag.com/2001/News/News05a.html",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              },
              {
                "hash": "5f3599922f5bee23969e91300f9eb461c7903a4b",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "753f4de4abfc5bbb20c7e5d13605cf0fff82f3ca",
                      "datavalue": {
                        "value": "http://www.nytimes.com/2001/05/15/arts/douglas-adams-49-author-of-hitchhiker-s-guide-spoofs.html",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              },
              {
                "hash": "162d5556b3c48733c6c27b4cddcb99bc86f4bf70",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "871891c242389d06b23bf809fdc0301df1ed9c77",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 2629164,
                          "id": "Q2629164"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P1233": [
                    {
                      "snaktype": "value",
                      "property": "P1233",
                      "hash": "b601606b4bce3131ed7b591bb3acbcaeaa8f7a6e",
                      "datavalue": {
                        "value": "122",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "03773f9c659ee8c03a232bce2522c8bb1b66402c",
                      "datavalue": {
                        "value": "Douglas Adams",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P1233",
                  "P1810",
                  "P813"
                ]
              },
              {
                "hash": "bab32d323b6c92d91ff7d0c4707346012900761b",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "d74ce84c9bceb1f94564bc8d53ad074739e46eb3",
                      "datavalue": {
                        "value": "http://www.screenonline.org.uk/people/id/1233876/index.html",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              },
              {
                "hash": "0d9f07c561f61776c61a026473508c535af28267",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "b62f3fa8bab7eb5e1bfe16d03cda082d25315c85",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 63056,
                          "id": "Q63056"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P535": [
                    {
                      "snaktype": "value",
                      "property": "P535",
                      "hash": "ce3fb403e96b3b004b1b480734c941819c442c01",
                      "datavalue": {
                        "value": "22814",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "d34dcfad6c25d9dfabf330ae1c0c8159e36f1fa6",
                      "datavalue": {
                        "value": "Douglas Noel Adams",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P535",
                  "P1810",
                  "P813"
                ]
              },
              {
                "hash": "dc42b8fb4c89807fe07a74ee933d45e4ba6353a1",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "9d66409d3d04632fc69413ea86abf094f92fae88",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 3343389,
                          "id": "Q3343389"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P5570": [
                    {
                      "snaktype": "value",
                      "property": "P5570",
                      "hash": "0a407feec4ece2cd71d650ad10574fb91b9f5b18",
                      "datavalue": {
                        "value": "143",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "2956a68705d15418b9490fb5feb13d1c1c2801fc",
                      "datavalue": {
                        "value": "Douglas ADAMS",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P5570",
                  "P1810",
                  "P813"
                ]
              },
              {
                "hash": "d7aaf26847f40ca003dea9ec41f13243607e1cb5",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "955922c4315ac036b19e6af494c9a897193971b0",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 974352,
                          "id": "Q974352"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P1284": [
                    {
                      "snaktype": "value",
                      "property": "P1284",
                      "hash": "2f5c2e65a1d9fca309615b885bf62f3e5260874e",
                      "datavalue": {
                        "value": "00000020676",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "03773f9c659ee8c03a232bce2522c8bb1b66402c",
                      "datavalue": {
                        "value": "Douglas Adams",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P1284",
                  "P1810",
                  "P813"
                ]
              },
              {
                "hash": "dc42b8fb4c89807fe07a74ee933d45e4ba6353a1",
                "snaks": {
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "2956a68705d15418b9490fb5feb13d1c1c2801fc",
                      "datavalue": {
                        "value": "Douglas ADAMS",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "9d66409d3d04632fc69413ea86abf094f92fae88",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 3343389,
                          "id": "Q3343389"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P5570": [
                    {
                      "snaktype": "value",
                      "property": "P5570",
                      "hash": "0a407feec4ece2cd71d650ad10574fb91b9f5b18",
                      "datavalue": {
                        "value": "143",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ]
                },
                "snaks-order": [
                  "P813",
                  "P1810",
                  "P248",
                  "P5570"
                ]
              },
              {
                "hash": "7571c014841534580d357bfbc652e23c8dfe6f76",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "e2a81dbf2f7dd02b332d6358ef65f622f82e8cc3",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 237227,
                          "id": "Q237227"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P5019": [
                    {
                      "snaktype": "value",
                      "property": "P5019",
                      "hash": "43ed67a7e85525f6e09d5b1c7d8cf48a13b0249d",
                      "datavalue": {
                        "value": "adams-douglas-noel",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "c4476ecceaffe79708600de5842ba5b400aa7065",
                      "datavalue": {
                        "value": "Douglas Noël Adams",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "e5f60ab0b03700bb883efce38f8022d023bc49fb",
                      "datavalue": {
                        "value": {
                          "time": "+2017-10-09T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P5019",
                  "P1810",
                  "P813"
                ]
              },
              {
                "hash": "8da4cf44f0a93c09c81d3b38ef8e68f8a4c4a6dc",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "1276fef541b741cec556020ad14ea6b2287a1aae",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 23023088,
                          "id": "Q23023088"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P2191": [
                    {
                      "snaktype": "value",
                      "property": "P2191",
                      "hash": "f30cf12ee4be16978a4a76b17518ea1b80db8b89",
                      "datavalue": {
                        "value": "10014",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P1810": [
                    {
                      "snaktype": "value",
                      "property": "P1810",
                      "hash": "03773f9c659ee8c03a232bce2522c8bb1b66402c",
                      "datavalue": {
                        "value": "Douglas Adams",
                        "type": "string"
                      },
                      "datatype": "string"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P2191",
                  "P1810"
                ]
              }
            ]
          }
        ],
        "P1196": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1196",
              "hash": "95c96aff195f7cfc9cd0c684f46ebed97ae1c5f4",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 3739104,
                  "id": "Q3739104"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$2CF6704F-527F-46F7-9A89-41FC0C9DF492",
            "rank": "normal"
          }
        ],
        "P509": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P509",
              "hash": "7c9686796c28e0d6dbb7a35cf2975c1bba3f2291",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 12152,
                  "id": "Q12152"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "q42$E651BD8A-EA3E-478A-8558-C956EE60B29F",
            "rank": "normal",
            "references": [
              {
                "hash": "71c0287e394ce3556f9c13f671c7476167acd035",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "29658ead4a7640c28bb3c1176b16bc05c1165352",
                      "datavalue": {
                        "value": "http://www.historyorb.com/people/douglas-adams",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "1e70ab6477d30a1f61497e41162394447f226c6b",
                      "datavalue": {
                        "value": {
                          "text": "Famous People - Douglas Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "0ed231c0e3c0ebe175b9e5328195c50d64e49f7e",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 15290366,
                          "id": "Q15290366"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P407",
                  "P813",
                  "P1476",
                  "P248"
                ]
              },
              {
                "hash": "94f550fd58f53396915a7910e0bea7fac646924f",
                "snaks": {
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "0730f27f8dcabe7b3d74ea981c7a9c15ea162685",
                      "datavalue": {
                        "value": {
                          "text": "Obituary: Douglas Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "27c7402a696628d2a0e5abbf443995be8b895503",
                      "datavalue": {
                        "value": {
                          "time": "+2001-05-15T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "a99756c83f320398a58edbbdccd46eb682e68267",
                      "datavalue": {
                        "value": "http://www.theguardian.com/news/2001/may/15/guardianobituaries.books",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "d81043f19518b0726f361bea2dd5eb2caa8cb454",
                      "datavalue": {
                        "value": {
                          "time": "+2014-01-03T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P50": [
                    {
                      "snaktype": "value",
                      "property": "P50",
                      "hash": "0c09ca36156b084dd45e1b836575dc7382d4a16e",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 18145749,
                          "id": "Q18145749"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "5eb5f0ed5b2c86115f3003ddf19524e65e45340a",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 11148,
                          "id": "Q11148"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P1476",
                  "P577",
                  "P407",
                  "P854",
                  "P813",
                  "P50",
                  "P248"
                ]
              },
              {
                "hash": "8a954fb86baef5ac9f138ca641aea07b80570447",
                "snaks": {
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "608a4db5259bcc914081457a65a62291c0d60fba",
                      "datavalue": {
                        "value": {
                          "text": "Hitch Hiker's Guide author Douglas Adams dies aged 49",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "9a430275f318d708678f048d2fcc2f4e1336fccf",
                      "datavalue": {
                        "value": {
                          "time": "+2001-05-13T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "f58a3ab6374660155a7a316dc8e0fb3e2a30263b",
                      "datavalue": {
                        "value": "http://www.telegraph.co.uk/news/uknews/1330072/Hitch-Hikers-Guide-author-Douglas-Adams-dies-aged-49.html",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "d81043f19518b0726f361bea2dd5eb2caa8cb454",
                      "datavalue": {
                        "value": {
                          "time": "+2014-01-03T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "eebb17bd40383600a49dee25c2177c288975a83f",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 192621,
                          "id": "Q192621"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P1476",
                  "P577",
                  "P407",
                  "P854",
                  "P813",
                  "P248"
                ]
              }
            ]
          }
        ],
        "P20": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P20",
              "hash": "83bea4973abdd248ba04a3149ce7ce6952b4c9b0",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 159288,
                  "id": "Q159288"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "q42$C0DE2013-54C0-48F9-AD90-8A235248D8C7",
            "rank": "normal",
            "references": [
              {
                "hash": "355b56329b78db22be549dec34f2570ca61ca056",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "d1d1b10a05a8f3fc5d26bb4aeb6849617ad81fc7",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 5375741,
                          "id": "Q5375741"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P248"
                ]
              },
              {
                "hash": "7ee048b166930e319a10ef56bc8bfa7202a31997",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "f11da58783cfeb447930ec66140c9c809464411f",
                      "datavalue": {
                        "value": "http://www.nytimes.com/books/01/05/13/daily/adams-obit.html",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "9e597a1ff0ca651f1af353078d5399eed329d6ce",
                      "datavalue": {
                        "value": {
                          "time": "+2001-05-12T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P50": [
                    {
                      "snaktype": "value",
                      "property": "P50",
                      "hash": "419ce2e3b0574f6aa77d16d971681078a27337c6",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 26724169,
                          "id": "Q26724169"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "f7562124f8f0eedb06fd945242d8c7789ad10e74",
                      "datavalue": {
                        "value": {
                          "text": "Douglas Adams, Author of 'Hitchhiker's Guide to the Galaxy,' Dies at 49",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "475d735fbc5aaf9a3cc1d7ac725da0c204ae55c5",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 9684,
                          "id": "Q9684"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P577",
                  "P50",
                  "P407",
                  "P1476",
                  "P248"
                ]
              },
              {
                "hash": "de76f366926e923ef61d60535280c65570d26cc2",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "effd2a5d8045dbb30aa66c3be3755e84165f5369",
                      "datavalue": {
                        "value": "http://www.eskimo.com/~rkj/weekly/aa051701a.htm",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              },
              {
                "hash": "027c2e3272694f0292b8ed6efa7d26e4b27fa458",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "4ff990b07c7dab21f6354e0022ce8240d74220ea",
                      "datavalue": {
                        "value": "http://www.waymarking.com/waymarks/WMH912_Douglas_Adams_Highgate_East_Cemetery_London_UK",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              }
            ]
          }
        ],
        "P119": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P119",
              "hash": "f22d367759fe126d0723a18e59399e4206b8f37d",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 533697,
                  "id": "Q533697"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P625": [
                {
                  "snaktype": "value",
                  "property": "P625",
                  "hash": "115724b2b32baa9a00e3c161c1282252ae955964",
                  "datavalue": {
                    "value": {
                      "latitude": 51.566516666667,
                      "longitude": -0.14549722222222,
                      "altitude": null,
                      "precision": 0.0000027777777777778,
                      "globe": "http://www.wikidata.org/entity/Q2"
                    },
                    "type": "globecoordinate"
                  },
                  "datatype": "globe-coordinate"
                }
              ]
            },
            "qualifiers-order": [
              "P625"
            ],
            "id": "q42$881F40DC-0AFE-4FEB-B882-79600D234273",
            "rank": "normal",
            "references": [
              {
                "hash": "082da5ff3ec6a067284fc11a66442a1db5d83f88",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "e9255857dc130ffd8c712ebbe7ab0f6981ebe238",
                      "datavalue": {
                        "value": "http://highgatecemetery.org/visit/who",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "ff1f7fd05dc971bfb5e56d485c37d091bcc3d06f",
                      "datavalue": {
                        "value": {
                          "text": "Who’s here",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6e7a635736e0c94ea66c6e56955b54c6b5742cd1",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 533697,
                          "id": "Q533697"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P407",
                  "P813",
                  "P1476",
                  "P248"
                ]
              },
              {
                "hash": "e71a7903858496c67eea189a7084d5559f788edb",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "5d3b16d350189b0a81818758208505444c86c127",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 565,
                          "id": "Q565"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          }
        ],
        "P1442": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1442",
              "hash": "fb7cd07a669a425f896132e0b8cfdb97254b1650",
              "datavalue": {
                "value": "Douglas Adams' gravestone.jpg",
                "type": "string"
              },
              "datatype": "commonsMedia"
            },
            "type": "statement",
            "id": "Q42$db1ba2ba-47b9-3650-e6c4-db683abf788c",
            "rank": "normal"
          }
        ],
        "P1015": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1015",
              "hash": "33cb2c4a2227c950c19177a4c85fc4e38cacf526",
              "datavalue": {
                "value": "90196888",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$6583fdb7-4ffa-9fe1-4288-1a1cbb2950d0",
            "rank": "normal"
          }
        ],
        "P735": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P735",
              "hash": "bc69fedf2b7ca78a342409c262e30f07008590cd",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 463035,
                  "id": "Q463035"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P1545": [
                {
                  "snaktype": "value",
                  "property": "P1545",
                  "hash": "2a1ced1dca90648ea7e306acbadd74fc81a10722",
                  "datavalue": {
                    "value": "1",
                    "type": "string"
                  },
                  "datatype": "string"
                }
              ]
            },
            "qualifiers-order": [
              "P1545"
            ],
            "id": "Q42$1d7d0ea9-412f-8b5b-ba8d-405ab9ecf026",
            "rank": "preferred",
            "references": [
              {
                "hash": "a02f3a77ddd343e6b88be25696b055f5131c3d64",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "019a50b7de741e0068bde41c9d9955b22a5de47b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 36578,
                          "id": "Q36578"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P227": [
                    {
                      "snaktype": "value",
                      "property": "P227",
                      "hash": "2a20755d12051fc95152d6107bd8a34e7fbc63c4",
                      "datavalue": {
                        "value": "119033364",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "c1b3a8484d531e0eac6b9835b63e74b1412ccdb0",
                      "datavalue": {
                        "value": {
                          "time": "+2015-07-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P227",
                  "P813"
                ]
              },
              {
                "hash": "fa278ebfc458360e5aed63d5058cca83c46134f1",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "e4f6d9441d0600513c4533c672b5ab472dc73694",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 328,
                          "id": "Q328"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P735",
              "hash": "d5521b1edbeae4d9c264dda7f7c783b287125768",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 19688263,
                  "id": "Q19688263"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P1545": [
                {
                  "snaktype": "value",
                  "property": "P1545",
                  "hash": "7241753c62a310cf84895620ea82250dcea65835",
                  "datavalue": {
                    "value": "2",
                    "type": "string"
                  },
                  "datatype": "string"
                }
              ]
            },
            "qualifiers-order": [
              "P1545"
            ],
            "id": "Q42$1e106952-4b58-6067-c831-8593ce3d70f5",
            "rank": "normal",
            "references": [
              {
                "hash": "a02f3a77ddd343e6b88be25696b055f5131c3d64",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "019a50b7de741e0068bde41c9d9955b22a5de47b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 36578,
                          "id": "Q36578"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P227": [
                    {
                      "snaktype": "value",
                      "property": "P227",
                      "hash": "2a20755d12051fc95152d6107bd8a34e7fbc63c4",
                      "datavalue": {
                        "value": "119033364",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "c1b3a8484d531e0eac6b9835b63e74b1412ccdb0",
                      "datavalue": {
                        "value": {
                          "time": "+2015-07-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P227",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P734": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P734",
              "hash": "b421edc57d660e9be8eb719ee6f927f848281fcc",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 351735,
                  "id": "Q351735"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$24df999a-4629-c679-e1f0-199bcefabbf3",
            "rank": "normal",
            "references": [
              {
                "hash": "a02f3a77ddd343e6b88be25696b055f5131c3d64",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "019a50b7de741e0068bde41c9d9955b22a5de47b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 36578,
                          "id": "Q36578"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P227": [
                    {
                      "snaktype": "value",
                      "property": "P227",
                      "hash": "2a20755d12051fc95152d6107bd8a34e7fbc63c4",
                      "datavalue": {
                        "value": "119033364",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "c1b3a8484d531e0eac6b9835b63e74b1412ccdb0",
                      "datavalue": {
                        "value": {
                          "time": "+2015-07-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P227",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P1559": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1559",
              "hash": "f3141261224297a03d92209d7444d00c2db4cc1e",
              "datavalue": {
                "value": {
                  "text": "Douglas Adams",
                  "language": "en-gb"
                },
                "type": "monolingualtext"
              },
              "datatype": "monolingualtext"
            },
            "type": "statement",
            "id": "Q42$88CB3380-ADFB-427B-87E5-C8D537545FE8",
            "rank": "normal"
          }
        ],
        "P18": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P18",
              "hash": "5e0f24b66c3761cfc054ea25a92c5a7fb73ab703",
              "datavalue": {
                "value": "Douglas adams portrait cropped.jpg",
                "type": "string"
              },
              "datatype": "commonsMedia"
            },
            "type": "statement",
            "qualifiers": {
              "P2096": [
                {
                  "snaktype": "value",
                  "property": "P2096",
                  "hash": "960f592e7cc01f08a71687b2ea6a041de1b53272",
                  "datavalue": {
                    "value": {
                      "text": "Porträtt av Douglas Adams.",
                      "language": "sv"
                    },
                    "type": "monolingualtext"
                  },
                  "datatype": "monolingualtext"
                },
                {
                  "snaktype": "value",
                  "property": "P2096",
                  "hash": "f0153c2a3c531661c373d6e16337a2277ec486ce",
                  "datavalue": {
                    "value": {
                      "text": "Douglas Adams portresi",
                      "language": "tr"
                    },
                    "type": "monolingualtext"
                  },
                  "datatype": "monolingualtext"
                },
                {
                  "snaktype": "value",
                  "property": "P2096",
                  "hash": "a85992aaf06c62b2a6f78a38a1e432460cc703d7",
                  "datavalue": {
                    "value": {
                      "text": "Douglas Adams ååʹbleǩkartt",
                      "language": "sms"
                    },
                    "type": "monolingualtext"
                  },
                  "datatype": "monolingualtext"
                },
                {
                  "snaktype": "value",
                  "property": "P2096",
                  "hash": "c8674a4db5887a9344eb3fc83ab38c98cbffcd94",
                  "datavalue": {
                    "value": {
                      "text": "Douglas Adamsin muotokuva",
                      "language": "fi"
                    },
                    "type": "monolingualtext"
                  },
                  "datatype": "monolingualtext"
                },
                {
                  "snaktype": "value",
                  "property": "P2096",
                  "hash": "aec0d99f877591514b1e7335be28fd94c22916bb",
                  "datavalue": {
                    "value": {
                      "text": "Portrait of Douglas Adams",
                      "language": "en"
                    },
                    "type": "monolingualtext"
                  },
                  "datatype": "monolingualtext"
                }
              ]
            },
            "qualifiers-order": [
              "P2096"
            ],
            "id": "Q42$44889d0f-474c-4fb9-1961-9a3366cbbb9e",
            "rank": "normal"
          }
        ],
        "P27": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P27",
              "hash": "2de1ec1c14395359e1936021bcfb525b4daa9a76",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 145,
                  "id": "Q145"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "q42$DE2A0C89-6199-44D0-B727-D7A4BE031A2B",
            "rank": "normal",
            "references": [
              {
                "hash": "2b369d0a4f1d4b801e734fe84a0b217e13dd2930",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P551": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P551",
              "hash": "13883b9303b6163e00106585ddebcdfe487b8e83",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 159288,
                  "id": "Q159288"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P582": [
                {
                  "snaktype": "value",
                  "property": "P582",
                  "hash": "8798597f326000b4ffd9948d42771308bdb23133",
                  "datavalue": {
                    "value": {
                      "time": "+2001-05-11T00:00:00Z",
                      "timezone": 0,
                      "before": 0,
                      "after": 0,
                      "precision": 11,
                      "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                    },
                    "type": "time"
                  },
                  "datatype": "time"
                }
              ]
            },
            "qualifiers-order": [
              "P582"
            ],
            "id": "Q42$E88EA363-419C-4FEA-BC63-F32669255382",
            "rank": "normal",
            "references": [
              {
                "hash": "fa278ebfc458360e5aed63d5058cca83c46134f1",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "e4f6d9441d0600513c4533c672b5ab472dc73694",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 328,
                          "id": "Q328"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P551",
              "hash": "4f1ebc8d1eeffa38fca7d811242ed71f4c5bed0f",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 84,
                  "id": "Q84"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$9D3B2F23-36F4-4212-983B-DC15D47FC01E",
            "rank": "preferred"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P551",
              "hash": "9603fd343c189883b34772a21404dc1f8fb021f8",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 909993,
                  "id": "Q909993"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P580": [
                {
                  "snaktype": "value",
                  "property": "P580",
                  "hash": "c786a8b39f62b37eb45745acf99302b5409f2e26",
                  "datavalue": {
                    "value": {
                      "time": "+1957-00-00T00:00:00Z",
                      "timezone": 0,
                      "before": 0,
                      "after": 0,
                      "precision": 9,
                      "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                    },
                    "type": "time"
                  },
                  "datatype": "time"
                }
              ]
            },
            "qualifiers-order": [
              "P580"
            ],
            "id": "Q42$21492F88-0043-439D-B733-C7211D2283F7",
            "rank": "preferred"
          }
        ],
        "P103": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P103",
              "hash": "cf46b882e332cf9f4436ef2aea7c9516774881ba",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 7979,
                  "id": "Q7979"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$b7526300-4ac5-a529-3a91-c8a0120673be",
            "rank": "normal"
          }
        ],
        "P1477": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1477",
              "hash": "b9487a4cbebd2994125cb09d8d2d0a68e18d07e1",
              "datavalue": {
                "value": {
                  "text": "Douglas Noël Adams",
                  "language": "en-gb"
                },
                "type": "monolingualtext"
              },
              "datatype": "monolingualtext"
            },
            "type": "statement",
            "id": "Q42$45220d20-40d2-299e-f4cc-f6cce89f2f42",
            "rank": "normal",
            "references": [
              {
                "hash": "3f4d26cf841e20630c969afc0e48e5e3ef0c5a49",
                "snaks": {
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "0730f27f8dcabe7b3d74ea981c7a9c15ea162685",
                      "datavalue": {
                        "value": {
                          "text": "Obituary: Douglas Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "27c7402a696628d2a0e5abbf443995be8b895503",
                      "datavalue": {
                        "value": {
                          "time": "+2001-05-15T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "a99756c83f320398a58edbbdccd46eb682e68267",
                      "datavalue": {
                        "value": "http://www.theguardian.com/news/2001/may/15/guardianobituaries.books",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P50": [
                    {
                      "snaktype": "value",
                      "property": "P50",
                      "hash": "0c09ca36156b084dd45e1b836575dc7382d4a16e",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 18145749,
                          "id": "Q18145749"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P1433": [
                    {
                      "snaktype": "value",
                      "property": "P1433",
                      "hash": "5c3e5ddc26dbc4ebdea58b53cc7f40811ef9e2ec",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 11148,
                          "id": "Q11148"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P1476",
                  "P577",
                  "P407",
                  "P854",
                  "P813",
                  "P50",
                  "P1433"
                ]
              }
            ]
          }
        ],
        "P1368": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1368",
              "hash": "a724070c64f13db757c53d1f769083a74d47ac67",
              "datavalue": {
                "value": "000057405",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$11725e9f-4f81-e0fd-b00a-b885fe7a75ac",
            "rank": "normal",
            "references": [
              {
                "hash": "63309730314f4c20bf6b1008fe8ffd2b155272b3",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P248"
                ]
              }
            ]
          }
        ],
        "P244": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P244",
              "hash": "5308b152b94274513309d2ad5cee9b9286fff0bd",
              "datavalue": {
                "value": "n80076765",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "q42$2D472379-EC67-4C71-9700-0F9D551BF5E6",
            "rank": "normal",
            "references": [
              {
                "hash": "14d2400e3b1d36332748dc330276f099eeaa8800",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "39224a9c2e8ce5424defbd16603d25771956c7fc",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1551807,
                          "id": "Q1551807"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          }
        ],
        "P947": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P947",
              "hash": "b4a90e2f8841117a6add1d92098d457a0b615831",
              "datavalue": {
                "value": "000002833",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$cf5f61ec-440d-60d4-7847-e95f75171f2f",
            "rank": "normal",
            "references": [
              {
                "hash": "21e05588017fe6569fd5fb71be9fc6b97812a49b",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "c43ac4a945511e8790044d7e0d0d7dcfd76d1a84",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1048694,
                          "id": "Q1048694"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P248"
                ]
              }
            ]
          }
        ],
        "P214": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P214",
              "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
              "datavalue": {
                "value": "113230702",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "q42$488251B2-6732-4D49-85B0-6101803C97AB",
            "rank": "normal",
            "references": [
              {
                "hash": "14d2400e3b1d36332748dc330276f099eeaa8800",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "39224a9c2e8ce5424defbd16603d25771956c7fc",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1551807,
                          "id": "Q1551807"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          }
        ],
        "P345": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P345",
              "hash": "c5e0f8f8e24ac2a6721b316e2a3a73820e61bc11",
              "datavalue": {
                "value": "nm0010930",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "q42$231549F5-0296-4D87-993D-6CBE3F24C0D2",
            "rank": "normal",
            "references": [
              {
                "hash": "9a24f7c0208b05d6be97077d855671d1dfdbc0dd",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "d38375ffe6fe142663ff55cd783aa4df4301d83d",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 48183,
                          "id": "Q48183"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          }
        ],
        "P373": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P373",
              "hash": "cd5ccca2ccdf15c9c1894d1ce7f01df9a1c17fbd",
              "datavalue": {
                "value": "Douglas Adams",
                "type": "string"
              },
              "datatype": "string"
            },
            "type": "statement",
            "id": "q42$7EC4631F-FB22-4768-9B75-61875CD6C854",
            "rank": "normal"
          }
        ],
        "P349": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P349",
              "hash": "a544d8f45670d2b702abc65104e158b700efa63f",
              "datavalue": {
                "value": "00430962",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "q42$31B1BC2A-D09F-4151-AD2B-5CEA229B9058",
            "rank": "normal",
            "references": [
              {
                "hash": "9a24f7c0208b05d6be97077d855671d1dfdbc0dd",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "d38375ffe6fe142663ff55cd783aa4df4301d83d",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 48183,
                          "id": "Q48183"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          }
        ],
        "P434": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P434",
              "hash": "8d03e96243cf77d4c123e929081cc16940e25412",
              "datavalue": {
                "value": "e9ed318d-8cc5-4cf8-ab77-505e39ab6ea4",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "q42$fc61f952-4071-7cc1-c20a-dc7a90ad6515",
            "rank": "normal"
          }
        ],
        "P268": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P268",
              "hash": "8721e8944f95e9ce185c270dd1e12b81d13f7e9b",
              "datavalue": {
                "value": "11888092r",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "q42$BB4B67FE-FECA-4469-9DEE-3E8F03AC9F1D",
            "rank": "normal",
            "references": [
              {
                "hash": "d4bd87b862b12d99d26e86472d44f26858dee639",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "f30cbd35620c4ea6d0633aaf0210a8916130469b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 8447,
                          "id": "Q8447"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          }
        ],
        "P227": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P227",
              "hash": "2a20755d12051fc95152d6107bd8a34e7fbc63c4",
              "datavalue": {
                "value": "119033364",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "q42$8AA8CCC1-86CE-4C66-88FC-267621A81EA0",
            "rank": "normal",
            "references": [
              {
                "hash": "14d2400e3b1d36332748dc330276f099eeaa8800",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "39224a9c2e8ce5424defbd16603d25771956c7fc",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1551807,
                          "id": "Q1551807"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              },
              {
                "hash": "dd3ff7346d2dbe78013c48629bb46c53fdb951b2",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "255300f97841c9c773c9ee6e82a75095e356ee13",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1419226,
                          "id": "Q1419226"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          }
        ],
        "P535": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P535",
              "hash": "ce3fb403e96b3b004b1b480734c941819c442c01",
              "datavalue": {
                "value": "22814",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "q42$0DD4F039-6CDC-40C9-871B-63CDE4A47032",
            "rank": "normal",
            "references": [
              {
                "hash": "7dfe2e0d2d86c960cf4b365dd64fe9934fcf9ffe",
                "snaks": {
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "4e8717be05f94ef9d94844fa9ac448eb1b6fd56d",
                      "datavalue": {
                        "value": {
                          "text": "Douglas Noel Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "d9b949b67c334103af825045cc198dec267df1eb",
                      "datavalue": {
                        "value": "http://www.findagrave.com/cgi-bin/fg.cgi?page=gr&GRid=22814",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P123": [
                    {
                      "snaktype": "value",
                      "property": "P123",
                      "hash": "ee18a449a5b0b58a2ac2a1eb537367b5f78ff139",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 63056,
                          "id": "Q63056"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "7b4e3b6251283293572bb344027f6108800ce722",
                      "datavalue": {
                        "value": {
                          "time": "+2001-06-25T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P1476",
                  "P854",
                  "P123",
                  "P577",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P22": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P22",
              "hash": "f4768d2f7e81044a59e2a6b793ae305a85fe9337",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 14623675,
                  "id": "Q14623675"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "q42$9ac7fb72-4402-8d72-f588-a170ca5e715c",
            "rank": "normal",
            "references": [
              {
                "hash": "9177d75c6061e9e1ab149c0aa01bee5a90e07415",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "db25e2819537870d0ef893d382ef7c400f4ec4d3",
                      "datavalue": {
                        "value": "http://www.nndb.com/people/731/000023662/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P123": [
                    {
                      "snaktype": "value",
                      "property": "P123",
                      "hash": "201f20dc608f8134f4b320df3cc273babfbb2284",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1373513,
                          "id": "Q1373513"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "3efff2f94d96938bcfa1c19a34a4fa41de7be644",
                      "datavalue": {
                        "value": {
                          "text": "Douglas Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P407",
                  "P123",
                  "P813",
                  "P1476"
                ]
              }
            ]
          }
        ],
        "P25": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P25",
              "hash": "890caf7af7d2bd93029730fcbf981c4389c867bb",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 14623678,
                  "id": "Q14623678"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "q42$cf4cccbe-470e-e627-86a3-70ef115f601c",
            "rank": "normal",
            "references": [
              {
                "hash": "9177d75c6061e9e1ab149c0aa01bee5a90e07415",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "db25e2819537870d0ef893d382ef7c400f4ec4d3",
                      "datavalue": {
                        "value": "http://www.nndb.com/people/731/000023662/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P123": [
                    {
                      "snaktype": "value",
                      "property": "P123",
                      "hash": "201f20dc608f8134f4b320df3cc273babfbb2284",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1373513,
                          "id": "Q1373513"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "3efff2f94d96938bcfa1c19a34a4fa41de7be644",
                      "datavalue": {
                        "value": {
                          "text": "Douglas Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P407",
                  "P123",
                  "P813",
                  "P1476"
                ]
              }
            ]
          }
        ],
        "P40": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P40",
              "hash": "3f5ef5e39468c6f0459f5039c92c5840004eba83",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 14623683,
                  "id": "Q14623683"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "q42$70b600fa-4c0a-b3e6-9e19-1486e71c99fb",
            "rank": "normal",
            "references": [
              {
                "hash": "9177d75c6061e9e1ab149c0aa01bee5a90e07415",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "db25e2819537870d0ef893d382ef7c400f4ec4d3",
                      "datavalue": {
                        "value": "http://www.nndb.com/people/731/000023662/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P123": [
                    {
                      "snaktype": "value",
                      "property": "P123",
                      "hash": "201f20dc608f8134f4b320df3cc273babfbb2284",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1373513,
                          "id": "Q1373513"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "3efff2f94d96938bcfa1c19a34a4fa41de7be644",
                      "datavalue": {
                        "value": {
                          "text": "Douglas Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P407",
                  "P123",
                  "P813",
                  "P1476"
                ]
              }
            ]
          }
        ],
        "P906": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P906",
              "hash": "0fe37e1d5b93dd5c01d2b265272f541ae3dbe467",
              "datavalue": {
                "value": "230807",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$D92DF8AE-786C-4C3E-8A33-BABD8CB06D31",
            "rank": "normal",
            "references": [
              {
                "hash": "d2458b88d0295ceeee4da715cde56b0a8b0d3186",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "f487c993a88b7e91732ae6e2ad2910710a462ad8",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1798125,
                          "id": "Q1798125"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P248"
                ]
              }
            ]
          }
        ],
        "P1006": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1006",
              "hash": "3e97ad82f26830173fb5c332b6ccd2db3df6624e",
              "datavalue": {
                "value": "068744307",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$B7643D02-6EF0-4932-A36A-3A2D4DA3F578",
            "rank": "normal"
          }
        ],
        "P949": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P949",
              "hash": "e6c5d85d4dbc36b3a63a7f0042a25506b667609e",
              "datavalue": {
                "value": "000163846",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$2D50AE02-2BD8-4F82-9DFD-B3166DEFDEC1",
            "rank": "normal"
          }
        ],
        "P646": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P646",
              "hash": "119ce5ea11d825b41f7a763700a530f1fd602531",
              "datavalue": {
                "value": "/m/0282x",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$48D9C731-BDA8-45D6-B593-437CD10A51B4",
            "rank": "normal",
            "references": [
              {
                "hash": "2b00cb481cddcac7623114367489b5c194901c4a",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "a94b740202b097dd33355e0e6c00e54b9395e5e0",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 15241312,
                          "id": "Q15241312"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "fde79ecb015112d2f29229ccc1ec514ed3e71fa2",
                      "datavalue": {
                        "value": {
                          "time": "+2013-10-28T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P577"
                ]
              }
            ]
          }
        ],
        "P69": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P69",
              "hash": "7c26b753f767dd296d3323721c0f9e018e2fae90",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 691283,
                  "id": "Q691283"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P582": [
                {
                  "snaktype": "value",
                  "property": "P582",
                  "hash": "cf63122733bae275108bbf5d043d46669f782697",
                  "datavalue": {
                    "value": {
                      "time": "+1974-01-01T00:00:00Z",
                      "timezone": 0,
                      "before": 0,
                      "after": 0,
                      "precision": 9,
                      "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                    },
                    "type": "time"
                  },
                  "datatype": "time"
                }
              ],
              "P812": [
                {
                  "snaktype": "value",
                  "property": "P812",
                  "hash": "e03f82fd83e940fdf0020ded271f0edf11977d72",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 186579,
                      "id": "Q186579"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ],
              "P512": [
                {
                  "snaktype": "value",
                  "property": "P512",
                  "hash": "e1bbba02ae21a15bcef937d017c8142e5cf73a88",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 1765120,
                      "id": "Q1765120"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ],
              "P580": [
                {
                  "snaktype": "value",
                  "property": "P580",
                  "hash": "847c4c912d3781dc83eabd7135d6403c473c0daf",
                  "datavalue": {
                    "value": {
                      "time": "+1971-00-00T00:00:00Z",
                      "timezone": 0,
                      "before": 0,
                      "after": 0,
                      "precision": 9,
                      "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                    },
                    "type": "time"
                  },
                  "datatype": "time"
                }
              ]
            },
            "qualifiers-order": [
              "P582",
              "P812",
              "P512",
              "P580"
            ],
            "id": "q42$0E9C4724-C954-4698-84A7-5CE0D296A6F2",
            "rank": "normal",
            "references": [
              {
                "hash": "355b56329b78db22be549dec34f2570ca61ca056",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "d1d1b10a05a8f3fc5d26bb4aeb6849617ad81fc7",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 5375741,
                          "id": "Q5375741"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P248"
                ]
              },
              {
                "hash": "9177d75c6061e9e1ab149c0aa01bee5a90e07415",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "db25e2819537870d0ef893d382ef7c400f4ec4d3",
                      "datavalue": {
                        "value": "http://www.nndb.com/people/731/000023662/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P123": [
                    {
                      "snaktype": "value",
                      "property": "P123",
                      "hash": "201f20dc608f8134f4b320df3cc273babfbb2284",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1373513,
                          "id": "Q1373513"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "3efff2f94d96938bcfa1c19a34a4fa41de7be644",
                      "datavalue": {
                        "value": {
                          "text": "Douglas Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P407",
                  "P123",
                  "P813",
                  "P1476"
                ]
              }
            ]
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P69",
              "hash": "24e9c420759c3934fdb089994d6c07f9e96989cd",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 4961791,
                  "id": "Q4961791"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P582": [
                {
                  "snaktype": "value",
                  "property": "P582",
                  "hash": "5c5b90187b61a0af83711c9495e5529940747577",
                  "datavalue": {
                    "value": {
                      "time": "+1970-00-00T00:00:00Z",
                      "timezone": 0,
                      "before": 0,
                      "after": 0,
                      "precision": 9,
                      "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                    },
                    "type": "time"
                  },
                  "datatype": "time"
                }
              ],
              "P580": [
                {
                  "snaktype": "value",
                  "property": "P580",
                  "hash": "923f84fcbf398253e1ef1a8a13f1da430b87d7bb",
                  "datavalue": {
                    "value": {
                      "time": "+1959-00-00T00:00:00Z",
                      "timezone": 0,
                      "before": 0,
                      "after": 0,
                      "precision": 9,
                      "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                    },
                    "type": "time"
                  },
                  "datatype": "time"
                }
              ]
            },
            "qualifiers-order": [
              "P582",
              "P580"
            ],
            "id": "Q42$32490F12-D9B5-498A-91A8-839F9149F600",
            "rank": "normal",
            "references": [
              {
                "hash": "04faceee0261403ec1371a48835b38dcacd0403d",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "3f701e6f558809b10d62268775d743aee5505a2c",
                      "datavalue": {
                        "value": "http://www.brentwoodschool.co.uk/Notable-Old-Brentwoods",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "10bcadd3b120a7012efeae6930062ec9d32632b5",
                      "datavalue": {
                        "value": {
                          "text": "Notable Old Brentwoods",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P1476"
                ]
              }
            ]
          }
        ],
        "P1273": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1273",
              "hash": "0c743c083410c1a7181a4e385097bdc26355f6b8",
              "datavalue": {
                "value": "a10667040",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$4A2873C0-D848-4F3D-8066-38204E50414C",
            "rank": "normal",
            "references": [
              {
                "hash": "cbd294ba99228d76563dacad5326342b7cbcd81c",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "79c7aecc389a0463fd6c991d3481a375c9610987",
                      "datavalue": {
                        "value": "https://viaf.org/viaf/113230702/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              }
            ]
          }
        ],
        "P108": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P108",
              "hash": "399e6e94b953e4305e2c0d4d6f752cedfd5576a9",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 9531,
                  "id": "Q9531"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$853B16C8-1AB3-489A-831E-AEAD7E94AB87",
            "rank": "normal"
          }
        ],
        "P998": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P998",
              "hash": "e436a6c335c51397267b0c244a54801fa88ba1c6",
              "datavalue": {
                "value": "Arts/Literature/Authors/A/Adams,_Douglas/",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "qualifiers": {
              "P407": [
                {
                  "snaktype": "value",
                  "property": "P407",
                  "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 1860,
                      "id": "Q1860"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ]
            },
            "qualifiers-order": [
              "P407"
            ],
            "id": "Q42$BE724F6B-6981-4DE9-B90C-338768A4BFC4",
            "rank": "preferred"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P998",
              "hash": "f07d223888dcbdf328dc74fd6a28fbe85bba1f02",
              "datavalue": {
                "value": "World/Dansk/Kultur/Litteratur/Forfattere/A/Adams,_Douglas/",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "qualifiers": {
              "P407": [
                {
                  "snaktype": "value",
                  "property": "P407",
                  "hash": "4a90e9ca00d0eae667dbbdeb5d575498ec041124",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 9035,
                      "id": "Q9035"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ]
            },
            "qualifiers-order": [
              "P407"
            ],
            "id": "Q42$5776B538-2441-4B9E-9C39-4E6289396763",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P998",
              "hash": "f67566d0a20a24e29f665d06f2e391b45d556699",
              "datavalue": {
                "value": "World/Français/Arts/Littérature/Genres/Science-fiction_et_fantastique/Auteurs/Adams,_Douglas/",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "qualifiers": {
              "P407": [
                {
                  "snaktype": "value",
                  "property": "P407",
                  "hash": "d197d0a5efa4b4c23a302a829dd3ef43684fe002",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 150,
                      "id": "Q150"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ]
            },
            "qualifiers-order": [
              "P407"
            ],
            "id": "Q42$B60CF952-9C65-4875-A4BA-6B8516C81E99",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P998",
              "hash": "46e31918e9a49a4625ac129bcd6fe307881148e4",
              "datavalue": {
                "value": "World/Deutsch/Kultur/Literatur/Autoren_und_Autorinnen/A/Adams,_Douglas/",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "qualifiers": {
              "P407": [
                {
                  "snaktype": "value",
                  "property": "P407",
                  "hash": "46bfd327b830f66f7061ea92d1be430c135fa91f",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 188,
                      "id": "Q188"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ]
            },
            "qualifiers-order": [
              "P407"
            ],
            "id": "Q42$A0B48E74-C934-42B9-A583-FB3EAE4BC9BA",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P998",
              "hash": "db656ead856cf3bfa451ba355e21363730a8d465",
              "datavalue": {
                "value": "World/Italiano/Arte/Letteratura/Autori/A/Adams,_Douglas/",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "qualifiers": {
              "P407": [
                {
                  "snaktype": "value",
                  "property": "P407",
                  "hash": "2ab2e485ce235a18142330fa1873a5bba7115d23",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 652,
                      "id": "Q652"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ]
            },
            "qualifiers-order": [
              "P407"
            ],
            "id": "Q42$F2632AC4-6F24-49E4-9E4E-B008F26BA8CE",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P998",
              "hash": "1ae5f83e9a27b3099283feee56595d8aa05a8585",
              "datavalue": {
                "value": "World/Svenska/Kultur/Litteratur/Genre/Science_fiction_och_fantasy/Författare/Adams,_Douglas/",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "qualifiers": {
              "P407": [
                {
                  "snaktype": "value",
                  "property": "P407",
                  "hash": "e41efcf0acaa18ea8fca63b87e2e0c24618f5664",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 9027,
                      "id": "Q9027"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ]
            },
            "qualifiers-order": [
              "P407"
            ],
            "id": "Q42$84B82B5A-8F33-4229-B988-BF960E676875",
            "rank": "normal"
          }
        ],
        "P1233": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1233",
              "hash": "b601606b4bce3131ed7b591bb3acbcaeaa8f7a6e",
              "datavalue": {
                "value": "122",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$9F55FA72-F9E5-41E4-A771-041EB1D59C28",
            "rank": "normal",
            "references": [
              {
                "hash": "9a24f7c0208b05d6be97077d855671d1dfdbc0dd",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "d38375ffe6fe142663ff55cd783aa4df4301d83d",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 48183,
                          "id": "Q48183"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          }
        ],
        "P1284": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1284",
              "hash": "2f5c2e65a1d9fca309615b885bf62f3e5260874e",
              "datavalue": {
                "value": "00000020676",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$2EE16C9C-B74B-4322-9542-4A132555B363",
            "rank": "normal"
          }
        ],
        "P866": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P866",
              "hash": "37d031cbb7d33f06c43ad0a1faafac8071b4c3e1",
              "datavalue": {
                "value": "douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$A29644ED-0377-4F88-8BA6-FAAB7DE8C7BA",
            "rank": "normal"
          }
        ],
        "P1695": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1695",
              "hash": "5b3ec159aae2cbcee8689e36af4bda9a5497e72f",
              "datavalue": {
                "value": "A11573065",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "qualifiers": {
              "P2241": [
                {
                  "snaktype": "value",
                  "property": "P2241",
                  "hash": "98b26a1a943d6e058e53849ded191e13012a38b8",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 21441764,
                      "id": "Q21441764"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ]
            },
            "qualifiers-order": [
              "P2241"
            ],
            "id": "Q42$9B5EED2E-C3F5-4634-8B85-4D4CC6F15C93",
            "rank": "deprecated",
            "references": [
              {
                "hash": "26c14416670af4da8614d9db92859f07401e3b88",
                "snaks": {
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "ab1e45f4e59b97ef39387dbd419722745e6cff99",
                      "datavalue": {
                        "value": {
                          "time": "+2015-03-07T00:00:00Z",
                          "timezone": 60,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P214",
                  "P248",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P1816": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1816",
              "hash": "b19c490642f7a5d5c71bf612ec4089c74dbdfaf5",
              "datavalue": {
                "value": "mp60152",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$A70EF87C-33F4-4366-B0A7-000C5A3A43E5",
            "rank": "normal"
          }
        ],
        "P1263": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1263",
              "hash": "536c401a39def76dfbb2b0e1c332d3707a6aef95",
              "datavalue": {
                "value": "731/000023662",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$9B26C69E-7B9E-43EB-9B20-AD1305D1EE6B",
            "rank": "normal"
          }
        ],
        "P271": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P271",
              "hash": "4427f3fc3ca4aa75b84c93e90043707031b24a72",
              "datavalue": {
                "value": "DA07517784",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$f69cd1df-4655-d1fa-5978-e3454415e57e",
            "rank": "normal"
          }
        ],
        "P856": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P856",
              "hash": "747972a227b6bfb4bfc9b21e0f6738a4ad09f0c0",
              "datavalue": {
                "value": "http://douglasadams.com/",
                "type": "string"
              },
              "datatype": "url"
            },
            "type": "statement",
            "qualifiers": {
              "P407": [
                {
                  "snaktype": "value",
                  "property": "P407",
                  "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 1860,
                      "id": "Q1860"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ]
            },
            "qualifiers-order": [
              "P407"
            ],
            "id": "Q42$D32EFF42-C5E2-482A-AE97-2159D6A99524",
            "rank": "normal"
          }
        ],
        "P1411": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1411",
              "hash": "99f1efe2922c2a67bb499cdee14b487adfe564ee",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 3414212,
                  "id": "Q3414212"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P1686": [
                {
                  "snaktype": "value",
                  "property": "P1686",
                  "hash": "6976dd054773df55af13d08387ac072427e71cb6",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 3521267,
                      "id": "Q3521267"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ],
              "P585": [
                {
                  "snaktype": "value",
                  "property": "P585",
                  "hash": "21ce2394cef40d7e380a249ee1911d6efa38d1af",
                  "datavalue": {
                    "value": {
                      "time": "+1979-00-00T00:00:00Z",
                      "timezone": 0,
                      "before": 0,
                      "after": 0,
                      "precision": 9,
                      "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                    },
                    "type": "time"
                  },
                  "datatype": "time"
                }
              ]
            },
            "qualifiers-order": [
              "P1686",
              "P585"
            ],
            "id": "Q42$1B3C484C-643E-45D0-B01C-F6DAD3D1F88E",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1411",
              "hash": "79aef316494aa8d5e3f72352a5315ecdea123e04",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 2576795,
                  "id": "Q2576795"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P585": [
                {
                  "snaktype": "value",
                  "property": "P585",
                  "hash": "1f4575b36bd16a12b6ce37bd18576d2809be2317",
                  "datavalue": {
                    "value": {
                      "time": "+1983-00-00T00:00:00Z",
                      "timezone": 0,
                      "before": 0,
                      "after": 0,
                      "precision": 9,
                      "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                    },
                    "type": "time"
                  },
                  "datatype": "time"
                }
              ],
              "P1686": [
                {
                  "snaktype": "value",
                  "property": "P1686",
                  "hash": "e7bb7e6e72fbe3cab6b40bc12cd86966ff4f9175",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 721,
                      "id": "Q721"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ]
            },
            "qualifiers-order": [
              "P585",
              "P1686"
            ],
            "id": "Q42$285E0C13-9674-4131-9556-51B316A57AEE",
            "rank": "normal"
          }
        ],
        "P1953": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1953",
              "hash": "62213f70dc895a9605d36aeeda01e3a6ab73e74f",
              "datavalue": {
                "value": "134923",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$6C466225-DCB1-47B9-B868-C285F016E216",
            "rank": "normal",
            "references": [
              {
                "hash": "b2e93db8744c6c00360db0868706706c3d951d92",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "623cc8f0e2f65afe4d66b91962d354a2f3aa9a27",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 14005,
                          "id": "Q14005"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "795072cd4393cd80747d64449b3a561fef5aa380",
                      "datavalue": {
                        "value": {
                          "time": "+2015-07-27T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P648": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P648",
              "hash": "54001f8cc18087fa51c188b474a3abf2a5db19a0",
              "datavalue": {
                "value": "OL272947A",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$0BC410B8-8A0F-4658-90B0-BB2AE1D6AA3F",
            "rank": "normal"
          }
        ],
        "P1258": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1258",
              "hash": "8c80814f0a15ebe01dc19766129dbfe4276ad77a",
              "datavalue": {
                "value": "celebrity/douglas_adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$4bc2af98-4182-3b11-0df3-80aac8e24081",
            "rank": "normal"
          }
        ],
        "P172": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P172",
              "hash": "3105dc237695c09c9a74a306455c363927e3c75b",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 42406,
                  "id": "Q42406"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$32e3f411-4934-9c3b-6be0-c53bff07b544",
            "rank": "normal"
          }
        ],
        "P2191": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2191",
              "hash": "f30cf12ee4be16978a4a76b17518ea1b80db8b89",
              "datavalue": {
                "value": "10014",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$2DB4179B-D385-495D-B248-9D0A53041DD4",
            "rank": "normal"
          }
        ],
        "P1266": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1266",
              "hash": "bdbb98c7c753fb88584e387119e1c174ffadb411",
              "datavalue": {
                "value": "97049",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$788bd2c1-46a0-9898-6410-5339ecf90a8b",
            "rank": "normal"
          }
        ],
        "P2019": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2019",
              "hash": "6dffad6e477d1b2e84322dcde7a5f67ea5414bfe",
              "datavalue": {
                "value": "p279442",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$b0322bc3-497a-8ef4-8eed-e4927b805d87",
            "rank": "normal"
          }
        ],
        "P2188": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2188",
              "hash": "241f004ee4042a5226417b8570251268a77d7982",
              "datavalue": {
                "value": "45993",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$5215183d-42ec-a3e5-1745-0abd519d026a",
            "rank": "normal"
          }
        ],
        "P2168": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2168",
              "hash": "5b535a453c0f88c11cb592ae35510abe93d2eec5",
              "datavalue": {
                "value": "271209",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$77b4aae6-473c-f860-1918-9ca573cdfb2e",
            "rank": "normal"
          }
        ],
        "P1315": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1315",
              "hash": "26738bb6b795b709bab76e844b45c507e06cf04a",
              "datavalue": {
                "value": "847711",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$809C95C5-ED69-432B-91D8-FF7C8C9965A2",
            "rank": "normal"
          }
        ],
        "P2163": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2163",
              "hash": "a727f412894f1378687c860124872df50221304a",
              "datavalue": {
                "value": "56544",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$7424C174-D7A8-4D60-89E3-416156EAC76D",
            "rank": "normal"
          }
        ],
        "P1417": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1417",
              "hash": "6ea6871c416e9475ac71ca2f65128b3bf4202f79",
              "datavalue": {
                "value": "biography/Douglas-Adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$2B2DC742-3BC1-4DAA-BECF-C81A33453B57",
            "rank": "normal"
          }
        ],
        "P2611": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2611",
              "hash": "0631354d6f7ce9e874e9d561a8c77602d14c7661",
              "datavalue": {
                "value": "douglas_adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$3169835D-BBAB-48C0-B197-7428BDBAC28E",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2611",
              "hash": "5b36e6011d38d402a90709c7c901a16f3548e660",
              "datavalue": {
                "value": "680",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$00278EC6-24B6-4723-9DCB-F48EFEC7B648",
            "rank": "normal"
          }
        ],
        "P2435": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2435",
              "hash": "c38967daaf99993bbc91b468fc81a82e3bb9dad3",
              "datavalue": {
                "value": "208947",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$daf51782-49c8-1e46-7738-e923dba42cb0",
            "rank": "normal"
          }
        ],
        "P2604": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2604",
              "hash": "421122162eba6332387f5e8cd004d4de354a64b8",
              "datavalue": {
                "value": "246164",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$ca83a88a-470c-b93a-2393-35a1de0a9c60",
            "rank": "normal"
          }
        ],
        "P2387": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2387",
              "hash": "d61c15b28b800e74f0c307c30d1caf14acd7fb0a",
              "datavalue": {
                "value": "1289170",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$29c1b057-497d-7d15-864e-3d889a76c750",
            "rank": "normal"
          }
        ],
        "P2626": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2626",
              "hash": "9d2f07ecfb40cd02ff993b45b55462b133d32779",
              "datavalue": {
                "value": "159696",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$5a41f776-4135-80b1-e3fe-43156047ecb8",
            "rank": "normal"
          }
        ],
        "P2605": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2605",
              "hash": "cb22a19dc73066bcc1cddfd57ab8d26248180bfe",
              "datavalue": {
                "value": "39534",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$7398157a-409e-7d35-7d89-7351426cb36c",
            "rank": "normal"
          }
        ],
        "P2963": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2963",
              "hash": "4221e8296d6a925d42a4df043b063108546097b5",
              "datavalue": {
                "value": "4",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$eb0d02d3-4b1d-0e19-cb86-78a0a5439144",
            "rank": "normal"
          }
        ],
        "P910": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P910",
              "hash": "66af9938438374fa44164b5c655fd4902e65345a",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 8935487,
                  "id": "Q8935487"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$3B111597-2138-4517-85AD-FD0056D3DEB0",
            "rank": "normal"
          }
        ],
        "P3106": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3106",
              "hash": "80d1fadf05f08f13eda14529506bd5a48390a367",
              "datavalue": {
                "value": "books/douglasadams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$d8ebbd62-4229-1e3b-6494-ca96246286e3",
            "rank": "normal"
          }
        ],
        "P1303": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1303",
              "hash": "32ba5bbd0bb5778c1097444f80b17d3de3b3cdab",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 6607,
                  "id": "Q6607"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$67547850-C3A0-4C99-AFE4-3C18956CB19A",
            "rank": "normal",
            "references": [
              {
                "hash": "f1df9b3ddd765028e4142b1e6906f9e4314270ce",
                "snaks": {
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "20a1c5cb74ddad55dcfa7e2d18abd98223e08c3c",
                      "datavalue": {
                        "value": {
                          "text": "Douglas Adams's 60th birthday marked with liff, the universe and Pink Floyd",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P1433": [
                    {
                      "snaktype": "value",
                      "property": "P1433",
                      "hash": "7b84ef4d8e9c65312af6aec92f081aa81c2d3464",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 5614018,
                          "id": "Q5614018"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "b6fdb4b994ead7b61883f5238ec83e88baef9db7",
                      "datavalue": {
                        "value": {
                          "time": "+2012-03-06T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "114ec1b31fb67a4b02a20fc41856adc937fe7145",
                      "datavalue": {
                        "value": "https://www.theguardian.com/books/2012/mar/06/douglas-adams-60th-birthday-party",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P1476",
                  "P1433",
                  "P577",
                  "P854"
                ]
              }
            ]
          }
        ],
        "P2469": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2469",
              "hash": "8182569fbc34cb375d652c1108c4895160df700d",
              "datavalue": {
                "value": "238p",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$32DACDAA-0C29-489B-B587-7CB5D374EEE5",
            "rank": "normal"
          }
        ],
        "P3373": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3373",
              "hash": "5e84b11b53fecf61d0ceff89b8f4d7beff79bd4a",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 14623673,
                  "id": "Q14623673"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P1039": [
                {
                  "snaktype": "value",
                  "property": "P1039",
                  "hash": "3ca4eb6cd8b1ba98eb7c5753c5d6ec55931e4b59",
                  "datavalue": {
                    "value": {
                      "entity-type": "item",
                      "numeric-id": 10943095,
                      "id": "Q10943095"
                    },
                    "type": "wikibase-entityid"
                  },
                  "datatype": "wikibase-item"
                }
              ]
            },
            "qualifiers-order": [
              "P1039"
            ],
            "id": "Q42$A3B1288B-67A9-4491-A3AA-20F881C292B9",
            "rank": "normal",
            "references": [
              {
                "hash": "9177d75c6061e9e1ab149c0aa01bee5a90e07415",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "db25e2819537870d0ef893d382ef7c400f4ec4d3",
                      "datavalue": {
                        "value": "http://www.nndb.com/people/731/000023662/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P123": [
                    {
                      "snaktype": "value",
                      "property": "P123",
                      "hash": "201f20dc608f8134f4b320df3cc273babfbb2284",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1373513,
                          "id": "Q1373513"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "3efff2f94d96938bcfa1c19a34a4fa41de7be644",
                      "datavalue": {
                        "value": {
                          "text": "Douglas Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P407",
                  "P123",
                  "P813",
                  "P1476"
                ]
              }
            ]
          }
        ],
        "P3417": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3417",
              "hash": "db4aa0e21094eecf0c47e3826a988cf886d67fe0",
              "datavalue": {
                "value": "Douglas-Adams-4",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$edea25d2-4736-b539-ec8d-d3f82e1f7100",
            "rank": "normal"
          }
        ],
        "P3430": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3430",
              "hash": "1e9a0d6461bed3d3b3f7ed1956b151058982cd6e",
              "datavalue": {
                "value": "w65h7md1",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$76AD35E4-F222-418A-A3AC-CF6472790811",
            "rank": "normal"
          }
        ],
        "P1617": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1617",
              "hash": "aeab2cca07e2851f3be2739cb17cd7fc7fdcf255",
              "datavalue": {
                "value": "aa075cb6-75bf-46d8-b0bf-9751d6c04c93",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$545d5c9a-4bde-ee8b-089f-1a11ba699301",
            "rank": "normal"
          }
        ],
        "P2048": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2048",
              "hash": "bb30f6a415dca2ba16fc59f4fa2b5b32df39cd7d",
              "datavalue": {
                "value": {
                  "amount": "+1.96",
                  "unit": "http://www.wikidata.org/entity/Q11573"
                },
                "type": "quantity"
              },
              "datatype": "quantity"
            },
            "type": "statement",
            "id": "Q42$b0bf3caf-481c-356b-03a2-e61174b8e6da",
            "rank": "normal",
            "references": [
              {
                "hash": "a9ca8131d2cfa3667e65c8ce0750d09d246e96e0",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "e837da58a8ef25e66d6112aa10c5e37cf9caf4f0",
                      "datavalue": {
                        "value": "https://books.google.com/books?id=0oA8DwAAQBAJ&pg=PT107",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "c1dd32c79ecbfbdb407a13167380d7d97b87997b",
                      "datavalue": {
                        "value": {
                          "time": "+2018-11-15T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P957": [
                    {
                      "snaktype": "value",
                      "property": "P957",
                      "hash": "6fa21babd0db8b46ffa04c27376c69a451c20a74",
                      "datavalue": {
                        "value": "1782438416",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P212": [
                    {
                      "snaktype": "value",
                      "property": "P212",
                      "hash": "ef3afe99c29235dbb20218225edabbcbbce2ffbb",
                      "datavalue": {
                        "value": "978-1-782-43841-0",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P813",
                  "P957",
                  "P212"
                ]
              }
            ]
          }
        ],
        "P3222": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3222",
              "hash": "24ce0b270b00ea4d2dcc082d647f8eb542070bbd",
              "datavalue": {
                "value": "douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$D41D834D-0BD4-411C-A671-2B7BE6053EB5",
            "rank": "normal"
          }
        ],
        "P109": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P109",
              "hash": "cf4b6f2d6c3fb835e32de8e927cf75a75704f8ac",
              "datavalue": {
                "value": "Douglas Adams signature.svg",
                "type": "string"
              },
              "datatype": "commonsMedia"
            },
            "type": "statement",
            "id": "Q42$e5b8e5d5-4243-43e3-3476-c8f1572f14fa",
            "rank": "normal"
          }
        ],
        "P4193": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4193",
              "hash": "f1fe4a6c587c168332f92c0bd2a995bd9570b99a",
              "datavalue": {
                "value": "Douglas_Noel_Adams_(1952-2001)",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$769463b3-4b83-cf93-d5ef-0b4e98e1cf33",
            "rank": "normal"
          }
        ],
        "P136": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P136",
              "hash": "202d8227cb86026ec9956eea1628a52cd8d3cdfb",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 24925,
                  "id": "Q24925"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$0ff4aeeb-4fdb-56cf-5fe9-916e1bbbbc73",
            "rank": "normal",
            "references": [
              {
                "hash": "6dcb62714f5201f4ea22c331a6e32e817916981f",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "b3784f20fdd968a0a3c739174983521c82d178fd",
                      "datavalue": {
                        "value": "https://www.theguardian.com/books/2013/mar/11/douglas-adams-king-comic-science-fiction",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "cc070d30c037a656be8479b9ecec12ae4d125596",
                      "datavalue": {
                        "value": {
                          "text": "Douglas Adams is still the king of comic science fiction",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "8c7cfd920adb380546ec2444b506d6d00fce49e6",
                      "datavalue": {
                        "value": {
                          "time": "+2013-03-11T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "5eb5f0ed5b2c86115f3003ddf19524e65e45340a",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 11148,
                          "id": "Q11148"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P1476",
                  "P577",
                  "P248"
                ]
              }
            ]
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P136",
              "hash": "61ab43a3146565344895c746d35e7d3cf1917cc3",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 40831,
                  "id": "Q40831"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$2ac90f53-4dc5-2ecc-d595-70f7c43f2fda",
            "rank": "normal",
            "references": [
              {
                "hash": "6dcb62714f5201f4ea22c331a6e32e817916981f",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "b3784f20fdd968a0a3c739174983521c82d178fd",
                      "datavalue": {
                        "value": "https://www.theguardian.com/books/2013/mar/11/douglas-adams-king-comic-science-fiction",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "cc070d30c037a656be8479b9ecec12ae4d125596",
                      "datavalue": {
                        "value": {
                          "text": "Douglas Adams is still the king of comic science fiction",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "8c7cfd920adb380546ec2444b506d6d00fce49e6",
                      "datavalue": {
                        "value": {
                          "time": "+2013-03-11T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "5eb5f0ed5b2c86115f3003ddf19524e65e45340a",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 11148,
                          "id": "Q11148"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P1476",
                  "P577",
                  "P248"
                ]
              },
              {
                "hash": "bab32d323b6c92d91ff7d0c4707346012900761b",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "d74ce84c9bceb1f94564bc8d53ad074739e46eb3",
                      "datavalue": {
                        "value": "http://www.screenonline.org.uk/people/id/1233876/index.html",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              }
            ]
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P136",
              "hash": "98c2629a70e699b536d71d16e03b20fbbad7b8d5",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 128758,
                  "id": "Q128758"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$43f046bb-47a4-00aa-5174-aa7ca343396b",
            "rank": "normal",
            "references": [
              {
                "hash": "fb6300cf6bc0ce72d3d960d4d671fd772125d3ee",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "889fba69e20a1dfca93abe793e0c3cc6218472cd",
                      "datavalue": {
                        "value": "https://www.theguardian.com/commentisfree/2015/aug/07/hitchhikers-guide-galaxy-book-changed-me-vogons-economics",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              }
            ]
          }
        ],
        "P4431": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4431",
              "hash": "1faf29b616aacd94361ec05e63b2faabef5aadcd",
              "datavalue": {
                "value": "douglas-adams-61st-birthday",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "qualifiers": {
              "P585": [
                {
                  "snaktype": "value",
                  "property": "P585",
                  "hash": "52ee0260174795772f9cfbfa8ec3b7561ef4e7bc",
                  "datavalue": {
                    "value": {
                      "time": "+2013-03-11T00:00:00Z",
                      "timezone": 0,
                      "before": 0,
                      "after": 0,
                      "precision": 11,
                      "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                    },
                    "type": "time"
                  },
                  "datatype": "time"
                }
              ]
            },
            "qualifiers-order": [
              "P585"
            ],
            "id": "Q42$520b13d1-47df-2d1c-f56d-7106f383a3b6",
            "rank": "normal",
            "references": [
              {
                "hash": "a403d90550be4608a47c62ec6d9fd69e0c707d1c",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "40acb7d11e3e8b2c54e00f0ac12e49b3d909fa72",
                      "datavalue": {
                        "value": "http://www.google.com/doodles/douglas-adams-61st-birthday",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P854"
                ]
              }
            ]
          }
        ],
        "P2607": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2607",
              "hash": "39e9c24ade56182f9826a6cdeb65b741c59f7349",
              "datavalue": {
                "value": "307812da-da11-4ee5-a906-31e5ce9694bb",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$52EA4A30-C798-4ED3-AEA0-A2FEB4B0FB95",
            "rank": "normal",
            "references": [
              {
                "hash": "706208b3024200fd0a39ad499808dd0d98d74065",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "623cc8f0e2f65afe4d66b91962d354a2f3aa9a27",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 14005,
                          "id": "Q14005"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P248"
                ]
              }
            ]
          }
        ],
        "P1415": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1415",
              "hash": "8a7b55e5b7e6d645618f191698851929669fda33",
              "datavalue": {
                "value": "75853",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$E10A1B54-9D65-4334-8F2C-58B21B49D565",
            "rank": "normal"
          }
        ],
        "P2949": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2949",
              "hash": "06f219671f6aca0ead3d077809a9f95938921c05",
              "datavalue": {
                "value": "Adams-32825",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$A4E52439-57DF-4C31-902C-E995D78488FA",
            "rank": "normal"
          }
        ],
        "P3154": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3154",
              "hash": "a6153385a0dfb1b9acdc9bb2082a08cf8b5b72eb",
              "datavalue": {
                "value": "adamsdou",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$916F4133-B433-4FA1-B888-F86DA132B1DE",
            "rank": "normal"
          }
        ],
        "P3630": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3630",
              "hash": "c943a67cefbf6c5f52cd624308b923cddb344024",
              "datavalue": {
                "value": "2627",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$15011D96-BB02-4B8F-9728-8FF88A3A938D",
            "rank": "normal"
          }
        ],
        "P1280": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1280",
              "hash": "ad98b64e66275024c3602f3002911c205f7a3002",
              "datavalue": {
                "value": "6050147",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$0DFBA3E4-F98E-4ED5-AE30-CE8556429229",
            "rank": "normal"
          }
        ],
        "P2734": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2734",
              "hash": "0e5ad1f3b3f960fdc719f9c764afb9645f77ea1e",
              "datavalue": {
                "value": "AdamsDouglas",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$6646C637-00DF-47E1-A845-CFCAB27A559D",
            "rank": "normal"
          }
        ],
        "P26": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P26",
              "hash": "e41afff05ff2364b903d9cbc117e5730a99f8cfb",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 14623681,
                  "id": "Q14623681"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P580": [
                {
                  "snaktype": "value",
                  "property": "P580",
                  "hash": "cccb5ca124ec4121900c8beb41b777148829fa49",
                  "datavalue": {
                    "value": {
                      "time": "+1991-11-25T00:00:00Z",
                      "timezone": 0,
                      "before": 0,
                      "after": 0,
                      "precision": 11,
                      "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                    },
                    "type": "time"
                  },
                  "datatype": "time"
                }
              ],
              "P582": [
                {
                  "snaktype": "value",
                  "property": "P582",
                  "hash": "8798597f326000b4ffd9948d42771308bdb23133",
                  "datavalue": {
                    "value": {
                      "time": "+2001-05-11T00:00:00Z",
                      "timezone": 0,
                      "before": 0,
                      "after": 0,
                      "precision": 11,
                      "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                    },
                    "type": "time"
                  },
                  "datatype": "time"
                }
              ]
            },
            "qualifiers-order": [
              "P580",
              "P582"
            ],
            "id": "q42$b88670f8-456b-3ecb-cf3d-2bca2cf7371e",
            "rank": "normal",
            "references": [
              {
                "hash": "9177d75c6061e9e1ab149c0aa01bee5a90e07415",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "db25e2819537870d0ef893d382ef7c400f4ec4d3",
                      "datavalue": {
                        "value": "http://www.nndb.com/people/731/000023662/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P407": [
                    {
                      "snaktype": "value",
                      "property": "P407",
                      "hash": "daf1c4fcb58181b02dff9cc89deb084004ddae4b",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1860,
                          "id": "Q1860"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P123": [
                    {
                      "snaktype": "value",
                      "property": "P123",
                      "hash": "201f20dc608f8134f4b320df3cc273babfbb2284",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1373513,
                          "id": "Q1373513"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "6b8fcfa6afb3911fecec93ae1dff2b6b6cde5659",
                      "datavalue": {
                        "value": {
                          "time": "+2013-12-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "3efff2f94d96938bcfa1c19a34a4fa41de7be644",
                      "datavalue": {
                        "value": {
                          "text": "Douglas Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P407",
                  "P123",
                  "P813",
                  "P1476"
                ]
              }
            ]
          }
        ],
        "P5019": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5019",
              "hash": "43ed67a7e85525f6e09d5b1c7d8cf48a13b0249d",
              "datavalue": {
                "value": "adams-douglas-noel",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$d12f42dc-456c-4c5f-19ee-b4dda178e50f",
            "rank": "normal"
          }
        ],
        "P463": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P463",
              "hash": "a584c94c9a14d402a281d10bdf8b97b9c04f5642",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 857679,
                  "id": "Q857679"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$45E1E647-4941-42E1-8428-A6F6C848276A",
            "rank": "normal",
            "references": [
              {
                "hash": "0210fa4c40c8aa80de21469bb8a57ff81efc07f1",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "9e9fcadde8d4a98a6ace310d9b1e0736710b6a68",
                      "datavalue": {
                        "value": "https://www.cambridgeindependent.co.uk/whats-on/cambridge-honours-hitchhikers-guide-to-the-galaxy-author-douglas-adams-9071978/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "a412da80d72f196ae7ad0a16bb8611070f54ecca",
                      "datavalue": {
                        "value": {
                          "text": "Cambridge holds Towel Day in honour of Douglas Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "26f3406d43daf2a276c43b0890b9701bdb58bf5d",
                      "datavalue": {
                        "value": {
                          "time": "+2019-05-30T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P1476",
                  "P577"
                ]
              }
            ]
          }
        ],
        "P2600": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2600",
              "hash": "8a7c7e56a0067681a41c7fbbc0eb5ebcc37fdb6c",
              "datavalue": {
                "value": "6000000050650155828",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$101c1875-4027-37aa-3a72-c202e42276ab",
            "rank": "normal"
          }
        ],
        "P5337": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5337",
              "hash": "29ed1262bb3fefb630042509e9c9ddbb9dd2cbd1",
              "datavalue": {
                "value": "CAAqJQgKIh9DQkFTRVFvSUwyMHZNREk0TW5nU0JXVnVMVWRDS0FBUAE",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$966e692e-4516-de45-356c-7e098273a79a",
            "rank": "normal"
          }
        ],
        "P5357": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5357",
              "hash": "6a7078b9e85a8ed980393e64dd62f4c93fe98a43",
              "datavalue": {
                "value": "adams_douglas",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$63B203C0-A6B4-40A7-9942-09F5AA7DE92F",
            "rank": "normal",
            "references": [
              {
                "hash": "154031fdff9fbadaa5f15c8b7e4ae46ca13db45a",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "a3bacfb56d9e630c9b0b2f1c5e906b4b26f7c49a",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 28054658,
                          "id": "Q28054658"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          }
        ],
        "P5361": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5361",
              "hash": "21938e02cbd2906580613024f462917402094384",
              "datavalue": {
                "value": "AdamsDouglas1952-2001",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$E5FCDDD6-0021-4543-8815-ACC8C2877C9F",
            "rank": "normal",
            "references": [
              {
                "hash": "133415593c921f4a8641abd7123e2c4d451cca0c",
                "snaks": {
                  "P4656": [
                    {
                      "snaktype": "value",
                      "property": "P4656",
                      "hash": "02056bd703f8d9ef04a126afb0a7011af1b085f0",
                      "datavalue": {
                        "value": "https://www.wikidata.org/w/index.php?title=Wikidata:Property_proposal/BNB_person_ID&oldid=700383726",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P4656"
                ]
              }
            ]
          }
        ],
        "P5365": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5365",
              "hash": "a44d4ded6b35d2d4a131099c633aa8b1fcaa1452",
              "datavalue": {
                "value": "42",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$7894D1B9-2FB1-4F0D-BC65-D0736B68C179",
            "rank": "normal",
            "references": [
              {
                "hash": "d0803e2b0f1149c9e82d42c919545a7e3fdb1442",
                "snaks": {
                  "P143": [
                    {
                      "snaktype": "value",
                      "property": "P143",
                      "hash": "97a0638609bbd3988f36abac478d7c1dd8b140f3",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 58679,
                          "id": "Q58679"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P143"
                ]
              }
            ]
          }
        ],
        "P5408": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5408",
              "hash": "a537c2ffabd6b49cd9ea8f935bf6f53fdd2eb10f",
              "datavalue": {
                "value": "a/douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$37B09D07-EE5D-4944-80B0-27BB6D41D87F",
            "rank": "normal"
          }
        ],
        "P5570": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5570",
              "hash": "0a407feec4ece2cd71d650ad10574fb91b9f5b18",
              "datavalue": {
                "value": "143",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$4F5DCE7C-3839-4642-AB6D-72C14C18D768",
            "rank": "normal"
          }
        ],
        "P1580": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1580",
              "hash": "381b5f7f7eee8c0b1ddc330f9384174fef368c10",
              "datavalue": {
                "value": "a1221374",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$50941274-91AC-438C-9B7C-F0105F9CD20F",
            "rank": "normal"
          }
        ],
        "P5587": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5587",
              "hash": "45b250733afb47b733dcb1716f910e468933123d",
              "datavalue": {
                "value": "1zcfh30k0gr4zxt",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$21178ECC-11CC-4CD3-BBD4-E35EB788B26E",
            "rank": "normal",
            "references": [
              {
                "hash": "32d6fcfbc1af77960e30b94b4c199ac07b39730d",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "f487c993a88b7e91732ae6e2ad2910710a462ad8",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 1798125,
                          "id": "Q1798125"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "86c9d0700fcc61e9c1ea1254d3d9b7029253623d",
                      "datavalue": {
                        "value": "https://libris.kb.se/katalogisering/1zcfh30k0gr4zxt",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P577": [
                    {
                      "snaktype": "value",
                      "property": "P577",
                      "hash": "0e399d3b76f1dd42d1d750c3cf3cc81a2006aa96",
                      "datavalue": {
                        "value": {
                          "time": "+2018-03-26T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "a11d62bd1cf10c4155401fd7884e6013285efeaa",
                      "datavalue": {
                        "value": {
                          "time": "+2018-08-24T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P854",
                  "P577",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P3365": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3365",
              "hash": "b0800b1c5f6da693c6b7d845f5e0b0aa0fc517ac",
              "datavalue": {
                "value": "douglas-noel-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$68E451D5-0EA5-4F70-8985-A2613B7F0729",
            "rank": "normal"
          }
        ],
        "P269": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P269",
              "hash": "adb558674eda6bfe9b17c3fed9be99c3d55f0cc3",
              "datavalue": {
                "value": "026677636",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$26D2B7C9-84FD-4E96-A6EC-42959F8D7048",
            "rank": "normal",
            "references": [
              {
                "hash": "08e3e6521cbb059b15df261cf79fcefcc29a682a",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "a1b98b5c8bb6eca02829acaf6200c3e4a45b4dd0",
                      "datavalue": {
                        "value": {
                          "time": "+2018-10-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P213": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P213",
              "hash": "ed6b11a980013ea8e084b8e634cfcac37d2eba8a",
              "datavalue": {
                "value": "0000 0000 8045 6315",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$25738B35-D07D-4C28-8C74-05FBA1B1E6C7",
            "rank": "normal",
            "references": [
              {
                "hash": "08e3e6521cbb059b15df261cf79fcefcc29a682a",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "a1b98b5c8bb6eca02829acaf6200c3e4a45b4dd0",
                      "datavalue": {
                        "value": {
                          "time": "+2018-10-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P691": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P691",
              "hash": "bc9fdc5daaa2387d2d7bc5749239552a696adb78",
              "datavalue": {
                "value": "jn19990000029",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "qualifiers": {
              "P1810": [
                {
                  "snaktype": "value",
                  "property": "P1810",
                  "hash": "1b5dd348dc4e4d1783b5a7d6710bb07b099b930a",
                  "datavalue": {
                    "value": "Adams, Douglas",
                    "type": "string"
                  },
                  "datatype": "string"
                }
              ]
            },
            "qualifiers-order": [
              "P1810"
            ],
            "id": "Q42$237DB309-0D43-42EB-999D-65BD0A833311",
            "rank": "normal",
            "references": [
              {
                "hash": "08e3e6521cbb059b15df261cf79fcefcc29a682a",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "a1b98b5c8bb6eca02829acaf6200c3e4a45b4dd0",
                      "datavalue": {
                        "value": {
                          "time": "+2018-10-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P950": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P950",
              "hash": "fd89c3e8114dce50507d5dce01124aa51da46ee6",
              "datavalue": {
                "value": "XX1149955",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$A813E628-398C-40C6-B082-8C4FCE4DF3FF",
            "rank": "normal",
            "references": [
              {
                "hash": "08e3e6521cbb059b15df261cf79fcefcc29a682a",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "a1b98b5c8bb6eca02829acaf6200c3e4a45b4dd0",
                      "datavalue": {
                        "value": {
                          "time": "+2018-10-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P1670": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1670",
              "hash": "d61de0b70e9a69753fdd2e33499c67efb1140823",
              "datavalue": {
                "value": "0052C2705",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$53AB6C05-B46A-42E2-AF19-6E47B60987E9",
            "rank": "normal",
            "references": [
              {
                "hash": "08e3e6521cbb059b15df261cf79fcefcc29a682a",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "a1b98b5c8bb6eca02829acaf6200c3e4a45b4dd0",
                      "datavalue": {
                        "value": {
                          "time": "+2018-10-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P409": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P409",
              "hash": "ee67cbff3db03abd0756291848d8351fb35833dd",
              "datavalue": {
                "value": "35163268",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$1167E25E-4B31-44B2-A08E-8178E52536AD",
            "rank": "normal",
            "references": [
              {
                "hash": "08e3e6521cbb059b15df261cf79fcefcc29a682a",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "a1b98b5c8bb6eca02829acaf6200c3e4a45b4dd0",
                      "datavalue": {
                        "value": {
                          "time": "+2018-10-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P396": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P396",
              "hash": "7f6dc5a9ab2508b0ceee1d0676915fbba722fbbb",
              "datavalue": {
                "value": "IT\\ICCU\\RAVV\\034417",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$63B132B2-B98C-40BA-AAA7-F855B1678CB0",
            "rank": "normal",
            "references": [
              {
                "hash": "08e3e6521cbb059b15df261cf79fcefcc29a682a",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "a1b98b5c8bb6eca02829acaf6200c3e4a45b4dd0",
                      "datavalue": {
                        "value": {
                          "time": "+2018-10-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P1207": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1207",
              "hash": "fb8c444b252a36a9690abf99924481f76209d617",
              "datavalue": {
                "value": "n94004172",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$391E9E99-4F2C-4229-91F0-8DEF0A7D901B",
            "rank": "normal",
            "references": [
              {
                "hash": "08e3e6521cbb059b15df261cf79fcefcc29a682a",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "a1b98b5c8bb6eca02829acaf6200c3e4a45b4dd0",
                      "datavalue": {
                        "value": {
                          "time": "+2018-10-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P1005": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1005",
              "hash": "37f6dc2b15256fe80a31628333c20d4a550cf5c4",
              "datavalue": {
                "value": "68537",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$F7E900F6-37B8-433C-A236-32E5CF8A5E20",
            "rank": "normal",
            "references": [
              {
                "hash": "08e3e6521cbb059b15df261cf79fcefcc29a682a",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "a1b98b5c8bb6eca02829acaf6200c3e4a45b4dd0",
                      "datavalue": {
                        "value": {
                          "time": "+2018-10-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P1375": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1375",
              "hash": "74f3cc3776b62c99ac1e7eaff7cdc7c9558cd12c",
              "datavalue": {
                "value": "000010283",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$D132DC6E-BE15-4502-BBE6-CDD6CDCED610",
            "rank": "normal",
            "references": [
              {
                "hash": "08e3e6521cbb059b15df261cf79fcefcc29a682a",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "6b7d4330c4aac4caec4ede9de0311ce273f88ecd",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 54919,
                          "id": "Q54919"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "a1b98b5c8bb6eca02829acaf6200c3e4a45b4dd0",
                      "datavalue": {
                        "value": {
                          "time": "+2018-10-07T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P214",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P1412": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1412",
              "hash": "3ccfcedff2284b4d79985c968d00ead896a31459",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 7979,
                  "id": "Q7979"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$d55ff2eb-44fe-dab5-4bc9-c7c765720bc1",
            "rank": "normal"
          }
        ],
        "P5247": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5247",
              "hash": "8f4b62bbb398cf8ca51e399b2b953be528ba79ad",
              "datavalue": {
                "value": "3040-1126",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$90691468-A3EF-4050-9813-BC6BDD6C3168",
            "rank": "normal"
          }
        ],
        "P5905": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5905",
              "hash": "c700ceba2dd72a049af0351d873be7e87f7531c9",
              "datavalue": {
                "value": "4040-45935",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$7F17859B-BE24-4CA0-8362-AFE1A02D71CC",
            "rank": "normal"
          }
        ],
        "P6839": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6839",
              "hash": "0733cda584fe12f4e30a68235634050d802b6769",
              "datavalue": {
                "value": "Creator/DouglasAdams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$024ba49c-4d11-9afa-781f-56c53f807bed",
            "rank": "normal"
          }
        ],
        "P4342": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4342",
              "hash": "8819177242878681cc99a517ada480a6fd2d03dc",
              "datavalue": {
                "value": "Douglas_Adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$0273baf0-71d1-4104-a6b9-2a6580713626",
            "rank": "normal",
            "references": [
              {
                "hash": "3a8536419e5f6bc8271f5902027354fc56ff7a8b",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "65bf94067e6255ff8d61c9c9535d98794a309a4c",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 746368,
                          "id": "Q746368"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "d4e60cbd2f58fc57cca8f6316169296d06cf026c",
                      "datavalue": {
                        "value": {
                          "time": "+2019-07-28T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P248",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P4785": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4785",
              "hash": "ff5f2579684ae080fc9cbfc18e6a62451d499638",
              "datavalue": {
                "value": "47671",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$dc9a6318-40b1-0047-ba98-d0957a7d7d8c",
            "rank": "normal"
          }
        ],
        "P2650": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2650",
              "hash": "fa6411207f913ca883fa029b5dea5b523a6f4a34",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 662893,
                  "id": "Q662893"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$abe0ed24-4a4f-b788-be7f-a384feed2309",
            "rank": "normal",
            "references": [
              {
                "hash": "3c39bf962213484e1465ee5325181821464a55e6",
                "snaks": {
                  "P248": [
                    {
                      "snaktype": "value",
                      "property": "P248",
                      "hash": "477c89b3501f1e6208f6c47573972d7d7f5f5fed",
                      "datavalue": {
                        "value": {
                          "entity-type": "item",
                          "numeric-id": 657881,
                          "id": "Q657881"
                        },
                        "type": "wikibase-entityid"
                      },
                      "datatype": "wikibase-item"
                    }
                  ]
                },
                "snaks-order": [
                  "P248"
                ]
              }
            ]
          }
        ],
        "P485": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P485",
              "hash": "b261d97449d344e10a5ff1ccf8184c871f93a9ff",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 67074906,
                  "id": "Q67074906"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P973": [
                {
                  "snaktype": "value",
                  "property": "P973",
                  "hash": "faa9b839c90fcc905fd3dd697c98fa89896bfbc8",
                  "datavalue": {
                    "value": "https://www.sjcarchives.org.uk/personal/index.php/papers-of-douglas-noel-adams",
                    "type": "string"
                  },
                  "datatype": "url"
                }
              ]
            },
            "qualifiers-order": [
              "P973"
            ],
            "id": "Q42$56607576-4b1f-fe7a-b893-9622286e9479",
            "rank": "normal",
            "references": [
              {
                "hash": "2f7c79c4b33a7eff091004f2dd21d770f192764a",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "65bf26986e02939462558674244522746a722b18",
                      "datavalue": {
                        "value": "https://www.sjcarchives.org.uk/personal/index.php/papers-of-douglas-noel-adams",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P1476": [
                    {
                      "snaktype": "value",
                      "property": "P1476",
                      "hash": "21e501dd773e86fe1e796ce7670b7b6b90655786",
                      "datavalue": {
                        "value": {
                          "text": "Fonds AdamsDN - Papers of Douglas Noël Adams",
                          "language": "en"
                        },
                        "type": "monolingualtext"
                      },
                      "datatype": "monolingualtext"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P1476"
                ]
              }
            ]
          }
        ],
        "P7029": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7029",
              "hash": "81a852fb15a6f95808addd1e24374badbead216b",
              "datavalue": {
                "value": "770139179",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$05A6E4FD-1F01-4F19-8ABF-190BA8319A04",
            "rank": "normal"
          },
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7029",
              "hash": "e176831539381d8d4effb5cb341503b47c770e29",
              "datavalue": {
                "value": "770139180",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$996C8555-968B-437C-B18C-E2350E014C6A",
            "rank": "normal"
          }
        ],
        "P1343": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1343",
              "hash": "0d5652504d25c7e82ccab455e6a39aa951dc836c",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 67311526,
                  "id": "Q67311526"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "qualifiers": {
              "P2699": [
                {
                  "snaktype": "value",
                  "property": "P2699",
                  "hash": "7323ac66bb04e87904ef6fdbd462bc1210b77263",
                  "datavalue": {
                    "value": "https://www.obalkyknih.cz/view_auth?auth_id=jn19990000029",
                    "type": "string"
                  },
                  "datatype": "url"
                }
              ]
            },
            "qualifiers-order": [
              "P2699"
            ],
            "id": "Q42$FD398E71-8597-4D36-949A-D905ACD24DAC",
            "rank": "normal"
          }
        ],
        "P5034": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5034",
              "hash": "3660910485b506349346be80d8304bad596bfe77",
              "datavalue": {
                "value": "KAC200300379",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$4a27a89e-6e25-4ac1-ae53-88fe60763fc4",
            "rank": "normal"
          }
        ],
        "P7433": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7433",
              "hash": "6867c785f1d3f0d914f1670c5b70421d1e181c96",
              "datavalue": {
                "value": "25",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$67D7BFF5-F914-4780-A704-B8F9AA42F2C1",
            "rank": "normal",
            "references": [
              {
                "hash": "b2c64ac3b79264041210b0803c48d9a8ad98314d",
                "snaks": {
                  "P4656": [
                    {
                      "snaktype": "value",
                      "property": "P4656",
                      "hash": "b04a460a2d91f06a292297f74d06fe648fba23b9",
                      "datavalue": {
                        "value": "https://www.wikidata.org/w/index.php?title=Wikidata:Property_proposal/FantLab_author_ID&oldid=1032426353",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ]
                },
                "snaks-order": [
                  "P4656"
                ]
              }
            ]
          }
        ],
        "P7400": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7400",
              "hash": "6f8e5bc8dc278f417eb24c1777157c5d0deff982",
              "datavalue": {
                "value": "adamsdouglas-1",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$6b518eac-487e-231c-7079-10c2640be50b",
            "rank": "normal"
          }
        ],
        "P7704": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7704",
              "hash": "19d1d56262f5604ce439db9190b38789ba1c01db",
              "datavalue": {
                "value": "agent/base/59925",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$F953F363-3A9D-4DCC-AD34-12307E92A25B",
            "rank": "normal",
            "references": [
              {
                "hash": "0125c327becce92c8924ef2b49d308f91bd66d76",
                "snaks": {
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "d88ec359faf8537adcdbfee2917ed23791b3216d",
                      "datavalue": {
                        "value": {
                          "time": "+2019-12-23T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P813"
                ]
              }
            ]
          }
        ],
        "P7859": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7859",
              "hash": "d804aa1bd7b2992e4170d3305d2388d2f43be99e",
              "datavalue": {
                "value": "lccn-n80076765",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$ca4e6fca-42cb-889f-2c84-9ed2e6d4b4a3",
            "rank": "normal",
            "references": [
              {
                "hash": "e2df3060da51a896afee2f4aa0b7fdeded9c2f86",
                "snaks": {
                  "P214": [
                    {
                      "snaktype": "value",
                      "property": "P214",
                      "hash": "20e5c69fbf37b8b0402a52948a04f481028e819c",
                      "datavalue": {
                        "value": "113230702",
                        "type": "string"
                      },
                      "datatype": "external-id"
                    }
                  ]
                },
                "snaks-order": [
                  "P214"
                ]
              }
            ]
          }
        ],
        "P3762": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3762",
              "hash": "6700459c02f26575f0d773d2c98ef75a8802cc07",
              "datavalue": {
                "value": "140290",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$808D478E-2C19-46AD-BB08-D46EF27C6964",
            "rank": "normal"
          }
        ],
        "P3065": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3065",
              "hash": "c228b4722f89b4eaf56c8b257348332544b8ab08",
              "datavalue": {
                "value": "02-A002907983",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$d7befac9-4a60-389b-6821-1906d4acad6c",
            "rank": "normal"
          }
        ],
        "P3846": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3846",
              "hash": "2c540d355dda4a2a79e1748021887a00bd879583",
              "datavalue": {
                "value": "87097968038642",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$70d25151-4617-eb5c-9fae-6250b4be38e9",
            "rank": "normal"
          }
        ],
        "P7293": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7293",
              "hash": "e346af31943ebe5d53b1307fc28fbc4b6170d640",
              "datavalue": {
                "value": "9810669145205606",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$e4c35e65-4646-bc7d-2408-e84570b851d7",
            "rank": "normal"
          }
        ],
        "P7700": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7700",
              "hash": "eb5d680cfc1c15bbb0f421ee2b35b30db3f7c3d7",
              "datavalue": {
                "value": "18852",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$fcbe553b-4856-7ebf-2588-3e42fd422016",
            "rank": "normal"
          }
        ],
        "P1890": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1890",
              "hash": "9da0251cf5f486827457168f0a1bf41534a24a4d",
              "datavalue": {
                "value": "000750942",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$4330e0d7-4b3d-7a01-5696-f93a0e2fcaa4",
            "rank": "normal"
          }
        ],
        "P4619": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4619",
              "hash": "9cfce7f067f85b929b7226fac2229aa0d99ba576",
              "datavalue": {
                "value": "000592321",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$5313e948-4771-ea78-e253-c176070df512",
            "rank": "normal"
          }
        ],
        "P6394": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6394",
              "hash": "1c94402ac03899c8e59e42f64062bd30c8b3fdf3",
              "datavalue": {
                "value": "a1112474x",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$74e4f6a4-4f7a-859a-4ea1-c13d8b45f1f6",
            "rank": "normal"
          }
        ],
        "P4839": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4839",
              "hash": "bd42a9bc1b57eaaa4e132539c6a14ee56cc13070",
              "datavalue": {
                "value": "Entity[\"Person\", \"DouglasAdams::gh8qf\"]",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$bd06c277-4a19-ba01-ac45-8897cf3b1637",
            "rank": "normal"
          }
        ],
        "P2581": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2581",
              "hash": "1c404d4936187efa9904da6bd5013cd3c2f3568a",
              "datavalue": {
                "value": "03688580n",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$08c46dbb-40ce-ae67-b114-2e601e14f325",
            "rank": "normal"
          }
        ],
        "P5284": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5284",
              "hash": "91a36f2e53a4510a314ffc6be33ab374b7a63b27",
              "datavalue": {
                "value": "1032346",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$f764d646-4816-0a84-e111-6b471ec66320",
            "rank": "normal"
          }
        ],
        "P4862": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4862",
              "hash": "46153baa62a90a9575e877062d08b15f7dbc37cf",
              "datavalue": {
                "value": "B000AQ2A84",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$9f67e2fc-4471-d610-6fb1-6b0fd7dbea02",
            "rank": "normal"
          }
        ],
        "P7661": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7661",
              "hash": "b644a20dc389df65f59964f464e077b57d11f8aa",
              "datavalue": {
                "value": "74033",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$61de1a61-487c-d2dc-fc4b-c0f94c1beec1",
            "rank": "normal"
          }
        ],
        "P3913": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3913",
              "hash": "6962040846568356e02ba50d60fb55905f247547",
              "datavalue": {
                "value": "337",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$7288b73e-4289-318e-e3b5-e3f7e16eab66",
            "rank": "normal"
          }
        ],
        "P7214": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7214",
              "hash": "570b8626f4352027b976f3ee281b4d79e43c680d",
              "datavalue": {
                "value": "753186",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$cb65a36b-436a-4400-4f17-ee5ea0272ce4",
            "rank": "normal"
          }
        ],
        "P4666": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4666",
              "hash": "c933a5e21dade3f656cb0070077ca4bd3ef40de3",
              "datavalue": {
                "value": "23878",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$f585133b-43e3-2f2c-38b0-a2d8395aea11",
            "rank": "normal"
          }
        ],
        "P7215": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7215",
              "hash": "d0f12589ed774fd02e3df76962b1b60748a601cd",
              "datavalue": {
                "value": "46398",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$5e13100f-4b67-7e71-cd0a-3ea7a8e385fd",
            "rank": "normal"
          }
        ],
        "P5233": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5233",
              "hash": "2841b04b025560e09ec79230feb720b52c9de4e0",
              "datavalue": {
                "value": "douglas-adams-a38",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$9ea6fb50-4466-a1d1-5c97-172f0ccc58c3",
            "rank": "normal"
          }
        ],
        "P5033": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5033",
              "hash": "f0498f1a53bd2d1d86e0773323e4b5e1108116ea",
              "datavalue": {
                "value": "160192",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$21346823-40f6-fc02-32c3-ab4eb16444b8",
            "rank": "normal"
          }
        ],
        "P3305": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3305",
              "hash": "be3e5596f23b11f16d5016217d1e81669ffadfb3",
              "datavalue": {
                "value": "199918",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$9af076a8-4842-3d41-354a-51e4db2d27cb",
            "rank": "normal"
          }
        ],
        "P7745": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7745",
              "hash": "821c7ff42b52346c14a06e8ee1bb0bfc2e0878f8",
              "datavalue": {
                "value": "183956",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$1812a161-4964-adb1-ce77-0d39d3e00e3d",
            "rank": "normal"
          }
        ],
        "P6464": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6464",
              "hash": "a1435116c000a27515f93b0bfb245a67fe2e1534",
              "datavalue": {
                "value": "898203",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$6fa04c06-4b5a-45f0-45ae-4a12d2f695c1",
            "rank": "normal"
          }
        ],
        "P7300": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7300",
              "hash": "b1f80c6fc1bbb4e6204c7f678b2eee7f91365a8d",
              "datavalue": {
                "value": "59932",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$dd3a4b98-49a0-853a-05fc-cfa372831d12",
            "rank": "normal"
          }
        ],
        "P4657": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4657",
              "hash": "b02b2cb89874509eb65e382e51acb52a7772ca4f",
              "datavalue": {
                "value": "432740401",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$a86fd81c-4561-8211-a2d8-40929a8ccf37",
            "rank": "normal"
          }
        ],
        "P5534": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5534",
              "hash": "124de8ddcceab5998afcec11de764307cc9f8918",
              "datavalue": {
                "value": "52843",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$4e15fd9f-4b54-5e2f-58da-81abbec17d63",
            "rank": "normal"
          }
        ],
        "P4985": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4985",
              "hash": "ec4b31f8846d85fdabec5bd0f97f87e29f739dc4",
              "datavalue": {
                "value": "52843",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$50899201-49e7-dec1-004e-12e94109e1f0",
            "rank": "normal"
          }
        ],
        "P3845": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3845",
              "hash": "f2ad4953d46990ca53225d4c45c5ca380f681ee2",
              "datavalue": {
                "value": "665243",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$8d9f5195-4700-1cb0-fe1b-1b1940b02f23",
            "rank": "normal"
          }
        ],
        "P2638": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2638",
              "hash": "36f0effbc814b2a9221b6448b653e62ebe5fc2d3",
              "datavalue": {
                "value": "people/douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$13562de2-4ff2-a283-3077-378685600ff9",
            "rank": "normal"
          }
        ],
        "P1712": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1712",
              "hash": "61072509596eecae3983a8668aa6b6218b4ae1c9",
              "datavalue": {
                "value": "person/douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$8616ecb1-4ecb-0969-733f-76a41892c04e",
            "rank": "normal"
          }
        ],
        "P6119": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6119",
              "hash": "673d0d50657db50f53888ce6feb40e21b15b6dee",
              "datavalue": {
                "value": "douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$5515f2c8-4f03-c5c9-3d54-0917f9678e00",
            "rank": "normal"
          }
        ],
        "P5340": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5340",
              "hash": "3e41ba562f1dbba94f43f7b02f605f3d320a08a8",
              "datavalue": {
                "value": "278771",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$b00a3a11-430e-e009-8379-dc40ab3fc3dd",
            "rank": "normal"
          }
        ],
        "P4438": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4438",
              "hash": "cb62b0c1d2b17b0c8fc382f31a1504160ad86788",
              "datavalue": {
                "value": "4ce2ba117755a",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$daa91fc4-4012-6945-f781-8238a0c73b19",
            "rank": "normal"
          }
        ],
        "P4326": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4326",
              "hash": "a5257daf61f9d032423a69dd74f1404fa7a87609",
              "datavalue": {
                "value": "215853",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$b47f944e-409a-8c99-5191-d27a1dd1ac38",
            "rank": "normal"
          }
        ],
        "P4768": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4768",
              "hash": "cbdd3f2dc0020219c31d3f2d08d9d16b307fdf6e",
              "datavalue": {
                "value": "212786",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$f03a5d7b-4ca7-a069-76fc-c864090ce050",
            "rank": "normal"
          }
        ],
        "P3142": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3142",
              "hash": "0e78a66d094ed9bf8b2275dcce75112a07acf942",
              "datavalue": {
                "value": "n0008574",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$ce5bc392-49b5-8efe-33c3-13ccd70e4d02",
            "rank": "normal"
          }
        ],
        "P3136": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3136",
              "hash": "01281d036746df6096f576cef1aad29dce6066af",
              "datavalue": {
                "value": "2000059",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$7fec5700-4920-ba9a-72b9-38eef2a5c730",
            "rank": "normal"
          }
        ],
        "P4782": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4782",
              "hash": "9ce7be8cf4a9f4b878ccea94b5fde17127a0cce7",
              "datavalue": {
                "value": "26898",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$91d6d6cf-4d41-702a-ef4c-15426b35ca9c",
            "rank": "normal"
          }
        ],
        "P3145": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3145",
              "hash": "caf2fa2047e73726f099a6139b00b890fee365f7",
              "datavalue": {
                "value": "nm96558",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$26786e60-4358-7e6e-0707-b7dbfc33408c",
            "rank": "normal"
          }
        ],
        "P5882": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5882",
              "hash": "24bdcf2853aaa146c5f65779670d07fa0a45eed9",
              "datavalue": {
                "value": "M00000364497",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$1BDB6765-8F25-4ABB-8005-E3FB8B742EAF",
            "rank": "normal"
          }
        ],
        "P6327": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6327",
              "hash": "eb02023d52d1dd346cf4db98e68f4d2f4649402e",
              "datavalue": {
                "value": "55720",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$C884751D-F028-440C-972C-8666481CDF71",
            "rank": "normal"
          }
        ],
        "P6517": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6517",
              "hash": "d4b894c70cd9211e342a141bec09b17ebd8cffeb",
              "datavalue": {
                "value": "Douglas-Adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$E6D2A634-8D60-42D0-977E-F0DB07DA62A5",
            "rank": "normal"
          }
        ],
        "P1728": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1728",
              "hash": "c617de5f679234c1898d99919c45d8221a8b44de",
              "datavalue": {
                "value": "mn0000803382",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$4a33fe5d-4f8d-363d-c839-911cea6636e2",
            "rank": "normal"
          }
        ],
        "P7195": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7195",
              "hash": "ff92b781d9b01f3266e0244028e3bd7c253d6507",
              "datavalue": {
                "value": "201077",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$19521d85-49ae-affd-3f36-ac2f5c14384f",
            "rank": "normal"
          }
        ],
        "P2722": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2722",
              "hash": "b0c58131314990b97eecc3d8a192c8b3bbd9f915",
              "datavalue": {
                "value": "4468812",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$5af95f47-47b1-353d-79ce-f283ca814f2f",
            "rank": "normal"
          }
        ],
        "P2373": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2373",
              "hash": "6ac5dbe73b0785b378a4ae63105d372d6e25d365",
              "datavalue": {
                "value": "Douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$14da6a63-444c-6303-d4f9-662d23f8a395",
            "rank": "normal"
          }
        ],
        "P6351": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6351",
              "hash": "285df792119de674963ecce0c3ea9a2cb083fd4f",
              "datavalue": {
                "value": "41236",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$54e7d5d7-4f95-7707-f3b6-be215e24afb9",
            "rank": "normal"
          }
        ],
        "P2850": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2850",
              "hash": "dad902c66beaeeae322c517baf4cb87844bf641c",
              "datavalue": {
                "value": "2080713",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$d225ef98-43f4-2cc6-03dc-b8e4aba1bba3",
            "rank": "normal"
          }
        ],
        "P3192": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3192",
              "hash": "624e143bc081dac42d3862582b717518b85b6532",
              "datavalue": {
                "value": "Douglas+Adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$a2b8283b-4a77-9663-4af7-569f90ffd378",
            "rank": "normal"
          }
        ],
        "P6874": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6874",
              "hash": "7b1668aa435bdb1a47bd096a0ca258fbdd088907",
              "datavalue": {
                "value": "Douglas-Adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$f6c5b233-463f-5e0f-f922-96cbe1427a77",
            "rank": "normal"
          }
        ],
        "P5404": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P5404",
              "hash": "dc2fae817138e96bf15e7e299385ac9713d24c3b",
              "datavalue": {
                "value": "douglas_adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$443713af-4f6a-ff3d-04a3-90323e97afe2",
            "rank": "normal"
          }
        ],
        "P1828": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1828",
              "hash": "7676871d2705ad9266428a72705702c3a34c9456",
              "datavalue": {
                "value": "00218511589",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "qualifiers": {
              "P1810": [
                {
                  "snaktype": "value",
                  "property": "P1810",
                  "hash": "6d9209b5b84fd57b348b1531a6a894ef42f5eea1",
                  "datavalue": {
                    "value": "ADAMS DOUGLAS",
                    "type": "string"
                  },
                  "datatype": "string"
                }
              ]
            },
            "qualifiers-order": [
              "P1810"
            ],
            "id": "Q42$ee526c73-46f5-69fe-fa30-159d01e6c56c",
            "rank": "normal",
            "references": [
              {
                "hash": "0fa7eacdae4f30a9c805e2bde03ac83af70b4009",
                "snaks": {
                  "P854": [
                    {
                      "snaktype": "value",
                      "property": "P854",
                      "hash": "1b8696d3c6c1536b76347cd1bc6d3d804024e576",
                      "datavalue": {
                        "value": "https://iswcnet.cisac.org/",
                        "type": "string"
                      },
                      "datatype": "url"
                    }
                  ],
                  "P813": [
                    {
                      "snaktype": "value",
                      "property": "P813",
                      "hash": "ab03d6b502d44ee645bae730a92a0e0ff8956188",
                      "datavalue": {
                        "value": {
                          "time": "+2020-02-26T00:00:00Z",
                          "timezone": 0,
                          "before": 0,
                          "after": 0,
                          "precision": 11,
                          "calendarmodel": "http://www.wikidata.org/entity/Q1985727"
                        },
                        "type": "time"
                      },
                      "datatype": "time"
                    }
                  ]
                },
                "snaks-order": [
                  "P854",
                  "P813"
                ]
              }
            ]
          }
        ],
        "P7154": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7154",
              "hash": "fde8226e4be6c82f6fdb65e96ba02bb6073300fe",
              "datavalue": {
                "value": "adams+douglas",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$ba75c7bf-45b5-bb6f-75c8-f2e7b0613537",
            "rank": "normal"
          }
        ],
        "P4198": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4198",
              "hash": "98a3d9536e3bbaf21d6dafb6123062056eda9173",
              "datavalue": {
                "value": "Acv2pnc5mj2oxjxych7atdfljky",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$378e2eb7-4d59-05bc-b015-1c07ad70f929",
            "rank": "normal"
          }
        ],
        "P6972": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6972",
              "hash": "97e86bc2549284c9c93505ee5378eff3e9c73f0b",
              "datavalue": {
                "value": "douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$21de97a8-473c-852a-bdf2-65ff6d257e8a",
            "rank": "normal"
          }
        ],
        "P7071": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7071",
              "hash": "729e538c481350cca79362380aab0856b00d9b0e",
              "datavalue": {
                "value": "douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$a9798bf7-4151-bb05-222e-98c713c0c293",
            "rank": "normal"
          }
        ],
        "P3479": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3479",
              "hash": "0e62004b073f541d757e7a15aa96e7e22fbe549b",
              "datavalue": {
                "value": "39a33dc4-5a81-4d67-91d6-1daecdb854e3",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$7a4e6732-4220-b468-6876-ff7c4d1accff",
            "rank": "normal"
          }
        ],
        "P7284": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7284",
              "hash": "b684754f108215513312406a0bd46b3967a5955c",
              "datavalue": {
                "value": "douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$34f575cc-49d1-06de-c154-54e87c2e1654",
            "rank": "normal"
          }
        ],
        "P6620": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6620",
              "hash": "3ba37b93ee36c92aea3f44f544cd83e2658c4fcc",
              "datavalue": {
                "value": "douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$6bc43986-4c0e-7f7e-6267-7ae38af05c99",
            "rank": "normal"
          }
        ],
        "P4204": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P4204",
              "hash": "435d710f1b5c9b41cacf9082848586b463e68463",
              "datavalue": {
                "value": "Douglas-Adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$40dd2b67-4f6a-76ff-25f3-d1bd25ee6137",
            "rank": "normal"
          }
        ],
        "P7506": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7506",
              "hash": "fcf97cf491ff37f98c295f4810e5cd2777ecbe4b",
              "datavalue": {
                "value": "2078791",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$e2acdf62-407f-3a2a-6c07-c6b757d1dc11",
            "rank": "normal"
          }
        ],
        "P3341": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3341",
              "hash": "0adc8438584ced3eca0263c730e6cfaee07260cc",
              "datavalue": {
                "value": "21019",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$7b4ecd7b-4697-151b-ed85-c5f789b7ad34",
            "rank": "normal"
          }
        ],
        "P7803": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7803",
              "hash": "f0e825ddffd9f0d4828dd3fd884d2ccffd412c8b",
              "datavalue": {
                "value": "40761",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$a54b2838-45ac-bab9-d114-40630f8df3aa",
            "rank": "normal"
          }
        ],
        "P3388": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P3388",
              "hash": "99c191787210a779523c04fbd5e747d76feec5fa",
              "datavalue": {
                "value": "168761",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$e4c6970b-43d5-d27f-e399-0f324f8efa44",
            "rank": "normal"
          }
        ],
        "P2087": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2087",
              "hash": "816085afd8571e514fd6c09f4ebe45993db73f2e",
              "datavalue": {
                "value": "douglas-adams",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$788133bf-4c31-8a1f-cde3-3671ae66dc4a",
            "rank": "normal"
          }
        ],
        "P7369": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7369",
              "hash": "87d5431a6a97c36cb5cdf37f495abe8c32f84ba1",
              "datavalue": {
                "value": "000263040",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$5B2391E3-31ED-4EE2-8D8C-8E38277D7C0D",
            "rank": "normal"
          }
        ],
        "P7699": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7699",
              "hash": "0d56adbf0329d0cdc845c7b25925b8b05c5394ca",
              "datavalue": {
                "value": "LNB:M_r___;=B_f_",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$D532ADB5-0DD6-472A-A5A5-595EA4E43892",
            "rank": "normal"
          }
        ],
        "P6298": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6298",
              "hash": "dc9f82d730fad6a954d0e3de5578259f0f847de8",
              "datavalue": {
                "value": "16115",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$13d9d139-4276-3423-9a72-6ee874b530d7",
            "rank": "normal"
          }
        ],
        "P2889": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P2889",
              "hash": "8de6ac03db5d70e6866e950405fef32c37aa7f52",
              "datavalue": {
                "value": "9XLD-SZS",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$1d08f4aa-4b04-c41a-8376-da03dd29dfe7",
            "rank": "normal"
          }
        ],
        "P6886": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P6886",
              "hash": "5ba8b48f714e1f7318e9d48ed1deb5ec28b207ca",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 1860,
                  "id": "Q1860"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$32C860DF-F954-4142-9F11-5AFD52CB613E",
            "rank": "normal"
          }
        ],
        "P1424": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P1424",
              "hash": "932d83e7faf08e71700231a041b00960cadbcd88",
              "datavalue": {
                "value": {
                  "entity-type": "item",
                  "numeric-id": 22898962,
                  "id": "Q22898962"
                },
                "type": "wikibase-entityid"
              },
              "datatype": "wikibase-item"
            },
            "type": "statement",
            "id": "Q42$67c4ee30-4126-ec57-b870-e30643f19f99",
            "rank": "normal"
          }
        ],
        "P7902": [
          {
            "mainsnak": {
              "snaktype": "value",
              "property": "P7902",
              "hash": "6cbd99c9d720f7fbd2a816978cd0c24096c7c252",
              "datavalue": {
                "value": "119033364",
                "type": "string"
              },
              "datatype": "external-id"
            },
            "type": "statement",
            "id": "Q42$AEAC1235-AFC4-4A52-9883-8CD612CE043F",
            "rank": "normal"
          }
        ]
      },
      "sitelinks": {
        "afwiki": {
          "site": "afwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "arwiki": {
          "site": "arwiki",
          "title": "دوغلاس آدمز",
          "badges": []
        },
        "arwikiquote": {
          "site": "arwikiquote",
          "title": "دوجلاس آدامز",
          "badges": []
        },
        "arzwiki": {
          "site": "arzwiki",
          "title": "دوجلاس ادامز",
          "badges": []
        },
        "astwiki": {
          "site": "astwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "azbwiki": {
          "site": "azbwiki",
          "title": "داقلاس آدامز",
          "badges": []
        },
        "azwiki": {
          "site": "azwiki",
          "title": "Duqlas Adams",
          "badges": []
        },
        "azwikiquote": {
          "site": "azwikiquote",
          "title": "Duqlas Noel Adams",
          "badges": []
        },
        "barwiki": {
          "site": "barwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "be_x_oldwiki": {
          "site": "be_x_oldwiki",
          "title": "Дуглас Адамз",
          "badges": []
        },
        "bewiki": {
          "site": "bewiki",
          "title": "Дуглас Адамс",
          "badges": []
        },
        "bgwiki": {
          "site": "bgwiki",
          "title": "Дъглас Адамс",
          "badges": []
        },
        "bgwikiquote": {
          "site": "bgwikiquote",
          "title": "Дъглас Адамс",
          "badges": []
        },
        "bnwiki": {
          "site": "bnwiki",
          "title": "ডগলাস অ্যাডামস",
          "badges": []
        },
        "bswiki": {
          "site": "bswiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "bswikiquote": {
          "site": "bswikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "cawiki": {
          "site": "cawiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "cswiki": {
          "site": "cswiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "cswikiquote": {
          "site": "cswikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "cywiki": {
          "site": "cywiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "dawiki": {
          "site": "dawiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "dewiki": {
          "site": "dewiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "dewikiquote": {
          "site": "dewikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "elwiki": {
          "site": "elwiki",
          "title": "Ντάγκλας Άνταμς",
          "badges": []
        },
        "elwikiquote": {
          "site": "elwikiquote",
          "title": "Ντάγκλας Άνταμς",
          "badges": []
        },
        "enwiki": {
          "site": "enwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "enwikiquote": {
          "site": "enwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "eowiki": {
          "site": "eowiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "eowikiquote": {
          "site": "eowikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "eswiki": {
          "site": "eswiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "eswikiquote": {
          "site": "eswikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "etwiki": {
          "site": "etwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "etwikiquote": {
          "site": "etwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "euwiki": {
          "site": "euwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "fawiki": {
          "site": "fawiki",
          "title": "داگلاس آدامز",
          "badges": []
        },
        "fawikiquote": {
          "site": "fawikiquote",
          "title": "داگلاس آدامز",
          "badges": []
        },
        "fiwiki": {
          "site": "fiwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "fiwikiquote": {
          "site": "fiwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "frwiki": {
          "site": "frwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "frwikiquote": {
          "site": "frwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "gawiki": {
          "site": "gawiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "glwiki": {
          "site": "glwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "glwikiquote": {
          "site": "glwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "hewiki": {
          "site": "hewiki",
          "title": "דאגלס אדמס",
          "badges": []
        },
        "hewikiquote": {
          "site": "hewikiquote",
          "title": "דאגלס אדמס",
          "badges": []
        },
        "hrwiki": {
          "site": "hrwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "huwiki": {
          "site": "huwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "huwikiquote": {
          "site": "huwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "hywiki": {
          "site": "hywiki",
          "title": "Դուգլաս Ադամս",
          "badges": []
        },
        "hywikiquote": {
          "site": "hywikiquote",
          "title": "Դուգլաս Ադամս",
          "badges": []
        },
        "iawiki": {
          "site": "iawiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "idwiki": {
          "site": "idwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "iowiki": {
          "site": "iowiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "iswiki": {
          "site": "iswiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "itwiki": {
          "site": "itwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "itwikiquote": {
          "site": "itwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "jawiki": {
          "site": "jawiki",
          "title": "ダグラス・アダムズ",
          "badges": []
        },
        "jvwiki": {
          "site": "jvwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "kawiki": {
          "site": "kawiki",
          "title": "დაგლას ადამსი",
          "badges": []
        },
        "kowiki": {
          "site": "kowiki",
          "title": "더글러스 애덤스",
          "badges": []
        },
        "kywiki": {
          "site": "kywiki",
          "title": "Дуглас Адамс",
          "badges": []
        },
        "lawiki": {
          "site": "lawiki",
          "title": "Duglassius Adams",
          "badges": []
        },
        "lfnwiki": {
          "site": "lfnwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "liwikiquote": {
          "site": "liwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "ltwiki": {
          "site": "ltwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "ltwikiquote": {
          "site": "ltwikiquote",
          "title": "Douglas Adamsas",
          "badges": []
        },
        "lvwiki": {
          "site": "lvwiki",
          "title": "Duglass Adamss",
          "badges": []
        },
        "mgwiki": {
          "site": "mgwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "mkwiki": {
          "site": "mkwiki",
          "title": "Даглас Адамс",
          "badges": []
        },
        "mlwiki": {
          "site": "mlwiki",
          "title": "ഡഗ്ലസ് ആഡംസ്",
          "badges": []
        },
        "mrjwiki": {
          "site": "mrjwiki",
          "title": "Адамс, Дуглас",
          "badges": []
        },
        "mrwiki": {
          "site": "mrwiki",
          "title": "डग्लस अ‍ॅडम्स",
          "badges": []
        },
        "nlwiki": {
          "site": "nlwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "nlwikiquote": {
          "site": "nlwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "nnwiki": {
          "site": "nnwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "nowiki": {
          "site": "nowiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "ocwiki": {
          "site": "ocwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "pawiki": {
          "site": "pawiki",
          "title": "ਡਗਲਸ ਐਡਮਸ",
          "badges": []
        },
        "plwiki": {
          "site": "plwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "plwikiquote": {
          "site": "plwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "pnbwiki": {
          "site": "pnbwiki",
          "title": "ڈگلس ایڈمس",
          "badges": []
        },
        "ptwiki": {
          "site": "ptwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "ptwikiquote": {
          "site": "ptwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "rowiki": {
          "site": "rowiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "ruwiki": {
          "site": "ruwiki",
          "title": "Адамс, Дуглас",
          "badges": []
        },
        "ruwikiquote": {
          "site": "ruwikiquote",
          "title": "Дуглас Ноэль Адамс",
          "badges": []
        },
        "scowiki": {
          "site": "scowiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "scwiki": {
          "site": "scwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "shwiki": {
          "site": "shwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "simplewiki": {
          "site": "simplewiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "simplewikiquote": {
          "site": "simplewikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "skwiki": {
          "site": "skwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "skwikiquote": {
          "site": "skwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "slwiki": {
          "site": "slwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "sqwiki": {
          "site": "sqwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "srwiki": {
          "site": "srwiki",
          "title": "Даглас Адамс",
          "badges": []
        },
        "svwiki": {
          "site": "svwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "svwikiquote": {
          "site": "svwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "tawiki": {
          "site": "tawiki",
          "title": "டக்ளஸ் ஆடம்ஸ்",
          "badges": []
        },
        "trwiki": {
          "site": "trwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "trwikiquote": {
          "site": "trwikiquote",
          "title": "Douglas Adams",
          "badges": []
        },
        "ukwiki": {
          "site": "ukwiki",
          "title": "Дуглас Адамс",
          "badges": []
        },
        "ukwikiquote": {
          "site": "ukwikiquote",
          "title": "Дуглас Адамс",
          "badges": []
        },
        "urwiki": {
          "site": "urwiki",
          "title": "ڈگلس ایڈمس",
          "badges": []
        },
        "vepwiki": {
          "site": "vepwiki",
          "title": "Adams Duglas",
          "badges": []
        },
        "viwiki": {
          "site": "viwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "warwiki": {
          "site": "warwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "wuuwiki": {
          "site": "wuuwiki",
          "title": "道格拉斯·亚当斯",
          "badges": []
        },
        "zh_min_nanwiki": {
          "site": "zh_min_nanwiki",
          "title": "Douglas Adams",
          "badges": []
        },
        "zh_yuewiki": {
          "site": "zh_yuewiki",
          "title": "道格拉斯亞當斯",
          "badges": []
        },
        "zhwiki": {
          "site": "zhwiki",
          "title": "道格拉斯·亚当斯",
          "badges": []
        },
        "zhwikiquote": {
          "site": "zhwikiquote",
          "title": "道格拉斯·亞當斯",
          "badges": []
        }
      }
}
''';

dynamic q42ParsedJson = jsonDecode(q42Json);
