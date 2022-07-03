// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_girl_wallpapers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnimeGirlWallpapersRecord> _$animeGirlWallpapersRecordSerializer =
    new _$AnimeGirlWallpapersRecordSerializer();

class _$AnimeGirlWallpapersRecordSerializer
    implements StructuredSerializer<AnimeGirlWallpapersRecord> {
  @override
  final Iterable<Type> types = const [
    AnimeGirlWallpapersRecord,
    _$AnimeGirlWallpapersRecord
  ];
  @override
  final String wireName = 'AnimeGirlWallpapersRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AnimeGirlWallpapersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.favorite;
    if (value != null) {
      result
        ..add('favorite')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.download;
    if (value != null) {
      result
        ..add('download')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.randon;
    if (value != null) {
      result
        ..add('randon')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  AnimeGirlWallpapersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnimeGirlWallpapersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'favorite':
          result.favorite = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'download':
          result.download = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'randon':
          result.randon = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$AnimeGirlWallpapersRecord extends AnimeGirlWallpapersRecord {
  @override
  final int favorite;
  @override
  final int download;
  @override
  final String url;
  @override
  final int randon;
  @override
  final DateTime date;
  @override
  final DocumentReference<Object> reference;

  factory _$AnimeGirlWallpapersRecord(
          [void Function(AnimeGirlWallpapersRecordBuilder) updates]) =>
      (new AnimeGirlWallpapersRecordBuilder()..update(updates)).build();

  _$AnimeGirlWallpapersRecord._(
      {this.favorite,
      this.download,
      this.url,
      this.randon,
      this.date,
      this.reference})
      : super._();

  @override
  AnimeGirlWallpapersRecord rebuild(
          void Function(AnimeGirlWallpapersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeGirlWallpapersRecordBuilder toBuilder() =>
      new AnimeGirlWallpapersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimeGirlWallpapersRecord &&
        favorite == other.favorite &&
        download == other.download &&
        url == other.url &&
        randon == other.randon &&
        date == other.date &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, favorite.hashCode), download.hashCode),
                    url.hashCode),
                randon.hashCode),
            date.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnimeGirlWallpapersRecord')
          ..add('favorite', favorite)
          ..add('download', download)
          ..add('url', url)
          ..add('randon', randon)
          ..add('date', date)
          ..add('reference', reference))
        .toString();
  }
}

class AnimeGirlWallpapersRecordBuilder
    implements
        Builder<AnimeGirlWallpapersRecord, AnimeGirlWallpapersRecordBuilder> {
  _$AnimeGirlWallpapersRecord _$v;

  int _favorite;
  int get favorite => _$this._favorite;
  set favorite(int favorite) => _$this._favorite = favorite;

  int _download;
  int get download => _$this._download;
  set download(int download) => _$this._download = download;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _randon;
  int get randon => _$this._randon;
  set randon(int randon) => _$this._randon = randon;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AnimeGirlWallpapersRecordBuilder() {
    AnimeGirlWallpapersRecord._initializeBuilder(this);
  }

  AnimeGirlWallpapersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _favorite = $v.favorite;
      _download = $v.download;
      _url = $v.url;
      _randon = $v.randon;
      _date = $v.date;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimeGirlWallpapersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnimeGirlWallpapersRecord;
  }

  @override
  void update(void Function(AnimeGirlWallpapersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnimeGirlWallpapersRecord build() {
    final _$result = _$v ??
        new _$AnimeGirlWallpapersRecord._(
            favorite: favorite,
            download: download,
            url: url,
            randon: randon,
            date: date,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
