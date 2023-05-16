import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'files_record.g.dart';

abstract class FilesRecord implements Built<FilesRecord, FilesRecordBuilder> {
  static Serializer<FilesRecord> get serializer => _$filesRecordSerializer;

  @BuiltValueField(wireName: 'Files')
  BuiltList<DocumentReference>? get files;

  @BuiltValueField(wireName: 'NameArchive')
  String? get nameArchive;

  @BuiltValueField(wireName: 'Fecha')
  DateTime? get fecha;

  @BuiltValueField(wireName: 'UrlArchiveUploadPlace')
  String? get urlArchiveUploadPlace;

  String? get fileType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FilesRecordBuilder builder) => builder
    ..files = ListBuilder()
    ..nameArchive = ''
    ..urlArchiveUploadPlace = ''
    ..fileType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Files');

  static Stream<FilesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FilesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FilesRecord._();
  factory FilesRecord([void Function(FilesRecordBuilder) updates]) =
      _$FilesRecord;

  static FilesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFilesRecordData({
  String? nameArchive,
  DateTime? fecha,
  String? urlArchiveUploadPlace,
  String? fileType,
}) {
  final firestoreData = serializers.toFirestore(
    FilesRecord.serializer,
    FilesRecord(
      (f) => f
        ..files = null
        ..nameArchive = nameArchive
        ..fecha = fecha
        ..urlArchiveUploadPlace = urlArchiveUploadPlace
        ..fileType = fileType,
    ),
  );

  return firestoreData;
}
