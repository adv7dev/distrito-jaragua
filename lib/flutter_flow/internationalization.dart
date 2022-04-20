import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'pt'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String ptText = '',
  }) =>
      [enText, ptText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'kszve5yi': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // calendar
  {
    'wdl9tnx8': {
      'en': 'Page Title',
      'pt': 'Título da página',
    },
    'dwlusr8u': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // bemvindo
  {
    'c0zgz7is': {
      'en': 'Search for Books',
      'pt': 'Pesquisar livros',
    },
    'epsd8wkv': {
      'en': 'Find amazing classic books in our library.',
      'pt': 'Encontre livros clássicos incríveis em nossa biblioteca.',
    },
    'awrmldnu': {
      'en': 'Purchase Books',
      'pt': 'Comprar livros',
    },
    '6zzufajs': {
      'en': 'Buy and view all your favorite books you find in this library.',
      'pt':
      'Compre e visualize todos os seus livros favoritos que encontrar nesta biblioteca.',
    },
    '5nbwhndl': {
      'en': 'Review Purchases',
      'pt': 'Revisar compras',
    },
    'aup9une6': {
      'en':
      'Keep track of all your purchases that you have made, want to trade books in? Go ahead and list them for exchange.',
      'pt':
      'Acompanhe todas as suas compras que você fez, quer trocar livros? Vá em frente e liste-os para troca.',
    },
    '1de4r3uf': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
  },
].reduce((a, b) => a..addAll(b));
