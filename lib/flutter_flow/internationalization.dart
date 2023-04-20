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
  // Login
  {
    'u6kw9aif': {
      'es': 'Ingresar',
      'en': 'Login',
      'fr': 'Entrer dans',
      'it': 'Entrare dentro',
      'ru': 'Попасть в',
      'zh_Hant': '進入',
    },
    'alqkhtxs': {
      'es': 'Ingrese su dirección de correo electrónico',
      'en': 'Enter your email address',
      'fr': 'Entrez votre adresse email',
      'it': 'Inserisci il tuo indirizzo email',
      'ru': 'Введите ваш адрес электронной почты',
      'zh_Hant': '輸入你的電子郵箱地址',
    },
    'ku047vvz': {
      'es': 'Ejm: xio@gmail.com',
      'en': 'Example: xio@gmail.com',
      'fr': 'Exemple : xio@gmail.com',
      'it': 'Esempio: xio@gmail.com',
      'ru': 'Пример: xio@gmail.com',
      'zh_Hant': '示例：xio@gmail.com',
    },
    '9y7am44x': {
      'es': 'Ingrese su contraseña',
      'en': 'Enter your password',
      'fr': 'Tapez votre mot de passe',
      'it': 'Inserisci la tua password',
      'ru': 'Введите ваш пароль',
      'zh_Hant': '輸入您的密碼',
    },
    '8yvyilwz': {
      'es': 'Contraseña',
      'en': 'Password',
      'fr': 'Mot de passe',
      'it': 'Parola d\'ordine',
      'ru': 'Пароль',
      'zh_Hant': '密碼',
    },
    'tantvtdh': {
      'es': 'Ingresar',
      'en': 'Get into',
      'fr': 'Entrer dans',
      'it': 'Entrare dentro',
      'ru': 'Попасть в',
      'zh_Hant': '進入',
    },
    '54sk6f0g': {
      'es': '¿Olvido su contraseña?',
      'en': 'Forgot your password?',
      'fr': 'Vous avez oublié votre mot de passe?',
      'it': 'Hai dimenticato la password?',
      'ru': 'Забыли пароль?',
      'zh_Hant': '忘記密碼了嗎？',
    },
    '1fwd8jil': {
      'es': '---  O usar  ---',
      'en': '--- Or use ---',
      'fr': '--- Ou utiliser ---',
      'it': '--- Oppure usa ---',
      'ru': '--- Или используйте ---',
      'zh_Hant': '--- 或使用 ---',
    },
    'j5wmx7a2': {
      'es': 'G',
      'en': 'G',
      'fr': 'G.',
      'it': 'G.',
      'ru': 'Г',
      'zh_Hant': 'G',
    },
    'mh7a8kcw': {
      'es': 'Fecha:',
      'en': 'Date:',
      'fr': 'Date:',
      'it': 'Data:',
      'ru': 'Дата:',
      'zh_Hant': '日期：',
    },
    '2zamxllt': {
      'es': 'Tipo de cambio de dolar:',
      'en': 'Dollar exchange rate:',
      'fr': 'Taux de change du dollar :',
      'it': 'Tasso di cambio del dollaro:',
      'ru': 'Курс доллара:',
      'zh_Hant': '美元匯率：',
    },
    'wmzfcin2': {
      'es': '\$',
      'en': '\$',
      'fr': '\$',
      'it': '\$',
      'ru': '\$',
      'zh_Hant': '\$',
    },
    'iw2jaboc': {
      'es': 'Ingresar',
      'en': 'login',
      'fr': 'connexion',
      'it': 'login',
      'ru': 'авторизоваться',
      'zh_Hant': '登錄',
    },
  },
  // HomePage
  {
    'qssw50t4': {
      'es': 'Página principal',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'ufvbm16q': {
      'es': 'Usuarios',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '7ewt40wt': {
      'es': 'Cerrar sesión',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'q5cch4g7': {
      'es': 'Inicio',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
  },
  // ForgotYourPassword
  {
    '2kocnx96': {
      'es': 'Restablecer contraseña',
      'en': 'Restore password',
      'fr': 'Restaurer le mot de passe',
      'it': 'Ripristina password',
      'ru': 'Восстановить пароль',
      'zh_Hant': '恢復密碼',
    },
    'xupa8jdz': {
      'es':
          'Enviaremos un correo con un enlace para restablecer su contraseña, por favor ingrese su correo asociado a la cuenta que desea restablecer la contraseña en el siguiente campo de texto.',
      'en':
          'We will send an email with a link to reset your password, please enter your email associated with the account you want to reset the password in the text field below.',
      'fr':
          'Nous vous enverrons un e-mail avec un lien pour réinitialiser votre mot de passe, veuillez entrer votre e-mail associé au compte dont vous souhaitez réinitialiser le mot de passe dans le champ de texte ci-dessous.',
      'it':
          'Ti invieremo un\'e-mail con un link per reimpostare la tua password, inserisci la tua e-mail associata all\'account di cui desideri reimpostare la password nel campo di testo sottostante.',
      'ru':
          'Мы отправим электронное письмо со ссылкой для сброса пароля. Введите адрес электронной почты, связанный с учетной записью, для которой вы хотите сбросить пароль, в текстовое поле ниже.',
      'zh_Hant': '我們將發送一封電子郵件，其中包含重置密碼的鏈接，請在下面的文本字段中輸入與您要重置密碼的帳戶關聯的電子郵件。',
    },
    'zzg07uk9': {
      'es': 'Ingrese su dirección de correo electrónico...',
      'en': 'Your email address...',
      'fr': 'Votre adresse e-mail...',
      'it': 'Il tuo indirizzo di posta elettronica...',
      'ru': 'Ваш электронный адрес...',
      'zh_Hant': '您的電子郵件地址...',
    },
    'qjmr8bon': {
      'es': 'Ejm: xio@gmail.com',
      'en': 'Enter your email...',
      'fr': 'Entrer votre Email...',
      'it': 'Inserisci il tuo indirizzo email...',
      'ru': 'Введите адрес электронной почты...',
      'zh_Hant': '輸入你的電子郵箱...',
    },
    'feqx8b6v': {
      'es': 'Enviar enlace',
      'en': 'send link',
      'fr': 'envoyer un lien',
      'it': 'invia il link',
      'ru': 'Отправить ссылку',
      'zh_Hant': '發送鏈接',
    },
    'sbixvcd1': {
      'es': 'Cancelar',
      'en': 'Cancel',
      'fr': 'Annuler',
      'it': 'Annulla',
      'ru': 'Отмена',
      'zh_Hant': '取消',
    },
    'clg3egdw': {
      'es': 'Home',
      'en': 'home',
      'fr': 'maison',
      'it': 'casa',
      'ru': 'дом',
      'zh_Hant': '家',
    },
  },
  // Users
  {
    '8fmtfryb': {
      'es': 'Usuarios',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'mfsx70gd': {
      'es': 'Administradores',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'mtrb17xw': {
      'es': 'Colaboradores',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'th3bdzfb': {
      'es': 'Registrar usuario',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '8o7mx9qk': {
      'es': 'Home',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
  },
  // addUser
  {
    'rxehhel6': {
      'es': 'Crear usuario',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    'yfgd20v4': {
      'es': 'Ingrese el correo electrónico',
      'en': 'Enter email',
      'fr': 'Entrez l\'e-mail',
      'it': 'Inserisci l\'email',
      'ru': 'Введите адрес электронной почты',
      'zh_Hant': '輸入電子郵件',
    },
    '9pf7jyim': {
      'es': 'Correo',
      'en': 'Mail',
      'fr': 'Poster',
      'it': 'Posta',
      'ru': 'Почта',
      'zh_Hant': '郵件',
    },
    'he65vlf4': {
      'es': 'Ingrese una identificación',
      'en': 'Enter an ID',
      'fr': 'Entrez un identifiant',
      'it': 'Inserisci un ID',
      'ru': 'Введите идентификатор',
      'zh_Hant': '輸入一個 ID',
    },
    'qvtxy0f2': {
      'es': 'Cédula',
      'en': 'Identification card',
      'fr': 'Carte d\'identité',
      'it': 'Carta d\'identità',
      'ru': 'Идентификационная карта',
      'zh_Hant': '身份證',
    },
    'mfbqfhbr': {
      'es': 'Nombre Usuario',
      'en': 'Username',
      'fr': 'Nom d\'utilisateur',
      'it': 'Nome utente',
      'ru': 'Имя пользователя',
      'zh_Hant': '用戶名',
    },
    'l45omczh': {
      'es': 'Nombre',
      'en': 'Name',
      'fr': 'nom',
      'it': 'Nome',
      'ru': 'Имя',
      'zh_Hant': '姓名',
    },
    'a7taa6qv': {
      'es': 'Número teléfono',
      'en': 'Phone number',
      'fr': 'Numéro de téléphone',
      'it': 'Numero di telefono',
      'ru': 'Номер телефона',
      'zh_Hant': '電話號碼',
    },
    'o83amorm': {
      'es': 'Teléfono',
      'en': 'Phone',
      'fr': 'nom',
      'it': 'Nome',
      'ru': 'Имя',
      'zh_Hant': '姓名',
    },
    '31vxftgl': {
      'es': 'Ingrese su contraseña mayor 6 dígitos',
      'en': 'Enter your password greater than 6 digits',
      'fr': 'Entrez votre mot de passe supérieur à 6 chiffres',
      'it': 'Inserisci la tua password superiore a 6 cifre',
      'ru': 'Введите пароль длиной более 6 цифр',
      'zh_Hant': '請輸入大於 6 位的密碼',
    },
    'etfygoil': {
      'es': 'Contraseña',
      'en': 'Password',
      'fr': 'Mot de passe',
      'it': 'Parola d\'ordine',
      'ru': 'Пароль',
      'zh_Hant': '密碼',
    },
    'jeka2xsu': {
      'es': 'Ingrese nuevamente su contraseña',
      'en': 'Enter your password again',
      'fr': 'Saisissez à nouveau votre mot de passe',
      'it': 'Inserisci di nuovo la tua password',
      'ru': 'Введите пароль еще раз',
      'zh_Hant': '再次輸入您的密碼',
    },
    '8etzoebj': {
      'es': 'Verificar contraseña',
      'en': 'Verify password',
      'fr': 'vérifier le mot de passe',
      'it': 'verifica la password',
      'ru': 'подтвердите пароль',
      'zh_Hant': '驗證密碼',
    },
    'irp7tab8': {
      'es': 'Agregar',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '427pagzg': {
      'es': 'Inicio',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
  },
  // Miscellaneous
  {
    '0t51txt8': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
    '61g48s0z': {
      'es': '',
      'en': '',
      'fr': '',
      'it': '',
      'ru': '',
      'zh_Hant': '',
    },
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
