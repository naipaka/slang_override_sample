import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:slang/overrides.dart';

import 'firebase_options.dart';
import 'i18n/strings.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await LocaleSettings.useDeviceLocale();

  // Update translation data at startup
  await updateTranslationsFromCloud();

  runApp(TranslationProvider(child: const MainApp()));
}

/// Download translation files from Firebase Cloud Storage and override translations
Future<void> updateTranslationsFromCloud() async {
  final storage = FirebaseStorage.instance;

  // Download files according to current locale
  for (final locale in AppLocale.values) {
    final fileName = '${locale.languageCode}.i18n.yaml';
    final ref = storage.ref().child('i18n/1.0.0/$fileName');

    // Download YAML file
    final data = await ref.getData();
    if (data != null) {
      final yamlContent = utf8.decode(data);

      // Use slang's translation override feature
      LocaleSettings.overrideTranslations(
        locale: locale,
        fileType: FileType.yaml,
        content: yamlContent,
      );
    }
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(t.greeting),
              Text(t.welcomeMessage),
              _LanguageSelection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _LanguageSelection extends StatelessWidget {
  const _LanguageSelection();

  @override
  Widget build(BuildContext context) {
    return DropdownButton<AppLocale>(
      value: TranslationProvider.of(context).locale,
      items: AppLocale.values.map((locale) {
        return DropdownMenuItem<AppLocale>(
          value: locale,
          child: Text(locale.name),
        );
      }).toList(),
      onChanged: (newLocale) {
        if (newLocale == null) {
          return;
        }
        LocaleSettings.setLocale(newLocale);
      },
    );
  }
}
