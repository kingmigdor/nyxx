part of nyxx;

/// Single instance of Embed's field. Can contain null elements.
class EmbedField {
  /// Field name
  String name;

  /// Contents of field (aka value)
  String content;

  /// Indicates of field is inlined in embed
  bool inline;

  /// The raw object returned by the API
  Map<String, dynamic> raw;

  /// Parent embed
  Embed embed;

  EmbedField._new(this.raw, this.embed) {
    this.name = raw['name'] as String;
    this.content = raw['value'] as String;
    this.inline = raw['inline'] as bool;

    this.embed.fields[name] = this;
  }
}