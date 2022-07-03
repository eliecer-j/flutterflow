import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'anime_girl_wallpapers_record.g.dart';

abstract class AnimeGirlWallpapersRecord
    implements
        Built<AnimeGirlWallpapersRecord, AnimeGirlWallpapersRecordBuilder> {
  static Serializer<AnimeGirlWallpapersRecord> get serializer =>
      _$animeGirlWallpapersRecordSerializer;

  @nullable
  int get favorite;

  @nullable
  int get download;

  @nullable
  String get url;

  @nullable
  int get randon;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AnimeGirlWallpapersRecordBuilder builder) =>
      builder
        ..favorite = 0
        ..download = 0
        ..url = ''
        ..randon = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AnimeGirlWallpapers');

  static Stream<AnimeGirlWallpapersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AnimeGirlWallpapersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnimeGirlWallpapersRecord._();
  factory AnimeGirlWallpapersRecord(
          [void Function(AnimeGirlWallpapersRecordBuilder) updates]) =
      _$AnimeGirlWallpapersRecord;

  static AnimeGirlWallpapersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnimeGirlWallpapersRecordData({
  int favorite,
  int download,
  String url,
  int randon,
  DateTime date,
}) =>
    serializers.toFirestore(
        AnimeGirlWallpapersRecord.serializer,
        AnimeGirlWallpapersRecord((a) => a
          ..favorite = favorite
          ..download = download
          ..url = url
          ..randon = randon
          ..date = date));
