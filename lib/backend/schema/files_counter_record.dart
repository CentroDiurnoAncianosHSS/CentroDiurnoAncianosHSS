import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'files_counter_record.g.dart';

abstract class FilesCounterRecord
    implements Built<FilesCounterRecord, FilesCounterRecordBuilder> {
  static Serializer<FilesCounterRecord> get serializer =>
      _$filesCounterRecordSerializer;

  @BuiltValueField(wireName: 'Files')
  BuiltList<DocumentReference>? get files;

  @BuiltValueField(wireName: 'NameArchive')
  String? get nameArchive;

  @BuiltValueField(wireName: 'Date')
  DateTime? get date;

  @BuiltValueField(wireName: 'UrlArchiveUploadPlace')
  String? get urlArchiveUploadPlace;

  String? get fileType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FilesCounterRecordBuilder builder) => builder
    ..files = ListBuilder()
    ..nameArchive = ''
    ..urlArchiveUploadPlace = ''
    ..fileType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FilesCounter');

  static Stream<FilesCounterRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FilesCounterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FilesCounterRecord._();
  factory FilesCounterRecord(
          [void Function(FilesCounterRecordBuilder) updates]) =
      _$FilesCounterRecord;

  static FilesCounterRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFilesCounterRecordData({
  String? nameArchive,
  DateTime? date,
  String? urlArchiveUploadPlace,
  String? fileType,
}) {
  final firestoreData = serializers.toFirestore(
    FilesCounterRecord.serializer,
    FilesCounterRecord(
      (f) => f
        ..files = null
        ..nameArchive = nameArchive
        ..date = date
        ..urlArchiveUploadPlace = urlArchiveUploadPlace
        ..fileType = fileType,
    ),
  );

  return firestoreData;
}
