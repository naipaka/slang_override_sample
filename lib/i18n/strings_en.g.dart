///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	/// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	String get greeting => TranslationOverrides.string(_root.$meta, 'greeting', {}) ?? 'Hello!';
	String get welcomeMessage => TranslationOverrides.string(_root.$meta, 'welcomeMessage', {}) ?? 'Welcome to our application.';
	late final TranslationsLanguageEn language = TranslationsLanguageEn._(_root);
}

// Path: language
class TranslationsLanguageEn {
	TranslationsLanguageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get english => TranslationOverrides.string(_root.$meta, 'language.english', {}) ?? 'English';
	String get japanese => TranslationOverrides.string(_root.$meta, 'language.japanese', {}) ?? 'Japanese';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'greeting': return TranslationOverrides.string(_root.$meta, 'greeting', {}) ?? 'Hello!';
			case 'welcomeMessage': return TranslationOverrides.string(_root.$meta, 'welcomeMessage', {}) ?? 'Welcome to our application.';
			case 'language.english': return TranslationOverrides.string(_root.$meta, 'language.english', {}) ?? 'English';
			case 'language.japanese': return TranslationOverrides.string(_root.$meta, 'language.japanese', {}) ?? 'Japanese';
			default: return null;
		}
	}
}

