import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en', 'ru', 'zh_Hant', 'it', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
    String? ruText = '',
    String? zh_HantText = '',
    String? itText = '',
    String? frText = '',
  }) =>
      [esText, enText, ruText, zh_HantText, itText, frText][languageIndex] ??
      '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoginSignin
  {
    'u6kw9aif': {
      'es': 'Ingresar',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'yaol9jen': {
      'es': 'Ingrese su dirección de correo electrónico',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'ku047vvz': {
      'es': 'Ejm: xio@gmail.com',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'nsubwqji': {
      'es': 'Ingrese su contraseña',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '8yvyilwz': {
      'es': 'Contraseña',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'tantvtdh': {
      'es': 'Ingresar',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '54sk6f0g': {
      'es': '¿Olvido su contraseña?',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '1fwd8jil': {
      'es': '---  O usar  ---',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'j5wmx7a2': {
      'es': 'G',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'mh7a8kcw': {
      'es': 'Fecha:',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '2zamxllt': {
      'es': 'Tipo de cambio de dolar:',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'wmzfcin2': {
      'es': '\$',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'qior9h91': {
      'es': 'Crear cuenta',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'l67vt9gs': {
      'es': 'Ingrese el correo electrónico',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'm6j4c9t1': {
      'es': 'Correo',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'ewlhlpr1': {
      'es': 'Ingrese una identificación',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '5t543o4g': {
      'es': 'Cédula',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'vfamjnk8': {
      'es': 'Nombre Usuario',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'xffhf47s': {
      'es': 'Nombre',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'eruwml9h': {
      'es': 'Número teléfono',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'wzuxia9g': {
      'es': 'Nombre',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'a393whc2': {
      'es': 'Ingrese su contraseña mayor 6 dígitos',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'zr8zbp4x': {
      'es': 'Contraseña',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'ye3pvrq3': {
      'es': 'Ingrese nuevamente su contraseña',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'hmomxvfk': {
      'es': 'Verificar contraseña',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '5emijk1i': {
      'es': 'Crear cuenta',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '0i2eio4c': {
      'es': '---  O usar  ---',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'yrq3v9bn': {
      'es': 'G',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'iw2jaboc': {
      'es': 'Ingrsar',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
  },
  // HomePage
  {
    '4yynqteu': {
      'es': 'Page Title',
      'en': 'Page Title',
      'fr': 'Titre de la page',
      'it': 'Titolo della pagina',
      'ru': 'Заголовок страницы',
      'zh_Hant': '頁面標題',
    },
    'y24nhwgw': {
      'es': 'Home',
      'en': 'home',
      'fr': 'maison',
      'it': 'casa',
      'ru': 'дом',
      'zh_Hant': '家',
    },
  },
  // ForgotYourPassword
  {
    '2kocnx96': {
      'es': 'Restablecer contraseña',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'xupa8jdz': {
      'es':
          'Enviaremos un correo con un enlace para restablecer su contraseña, por favor ingrese su correo asociado a la cuenta que desea restablecer la contraseña en el siguiente campo de texto.',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'zzg07uk9': {
      'es': 'Su dirección de correo electronico...',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'qjmr8bon': {
      'es': 'Ingrese su correo electronico...',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'feqx8b6v': {
      'es': 'Enviar enlace',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'sbixvcd1': {
      'es': 'Cancelar',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'clg3egdw': {
      'es': 'Home',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
  },
  // Miscellaneous
  {
    '9pxf09j9': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'ykf8vou8': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'zki5i2tn': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '9xvw7h0p': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '7lz3at95': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'cakm2lh4': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '01x99lac': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'qukr4nk0': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'bymytxnn': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '0v6s90jz': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'mdebsak9': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '2ornpvat': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'gmcm81oj': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'zhh2b8p7': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '60r7qy8p': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '9s8h6ytq': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'ryrhdepy': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'k54s6xgh': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'ui8ssk95': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'k1xmrfem': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '2z1dmm74': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
  },
].reduce((a, b) => a..addAll(b));
