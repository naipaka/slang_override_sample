///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'package:slang/overrides.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsJa implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	/// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override String get greeting => TranslationOverrides.string(_root.$meta, 'greeting', {}) ?? 'こんにちは!';
	@override String get welcomeMessage => TranslationOverrides.string(_root.$meta, 'welcomeMessage', {}) ?? '私たちのアプリケーションへようこそ';
	@override late final _TranslationsLanguageJa language = _TranslationsLanguageJa._(_root);
}

// Path: language
class _TranslationsLanguageJa implements TranslationsLanguageEn {
	_TranslationsLanguageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get english => TranslationOverrides.string(_root.$meta, 'language.english', {}) ?? '英語';
	@override String get japanese => TranslationOverrides.string(_root.$meta, 'language.japanese', {}) ?? '日本語';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'greeting': return TranslationOverrides.string(_root.$meta, 'greeting', {}) ?? 'こんにちは!';
			case 'welcomeMessage': return TranslationOverrides.string(_root.$meta, 'welcomeMessage', {}) ?? '私たちのアプリケーションへようこそ';
			case 'language.english': return TranslationOverrides.string(_root.$meta, 'language.english', {}) ?? '英語';
			case 'language.japanese': return TranslationOverrides.string(_root.$meta, 'language.japanese', {}) ?? '日本語';
			default: return null;
		}
	}
}

