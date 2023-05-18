// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files_counter_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FilesCounterRecord> _$filesCounterRecordSerializer =
    new _$FilesCounterRecordSerializer();

class _$FilesCounterRecordSerializer
    implements StructuredSerializer<FilesCounterRecord> {
  @override
  final Iterable<Type> types = const [FilesCounterRecord, _$FilesCounterRecord];
  @override
  final String wireName = 'FilesCounterRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FilesCounterRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.files;
    if (value != null) {
      result
        ..add('Files')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.nameArchive;
    if (value != null) {
      result
        ..add('NameArchive')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.urlArchiveUploadPlace;
    if (value != null) {
      result
        ..add('UrlArchiveUploadPlace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fileType;
    if (value != null) {
      result
        ..add('fileType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FilesCounterRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FilesCounterRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Files':
          result.files.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'NameArchive':
          result.nameArchive = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'UrlArchiveUploadPlace':
          result.urlArchiveUploadPlace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fileType':
          result.fileType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FilesCounterRecord extends FilesCounterRecord {
  @override
  final BuiltList<DocumentReference<Object?>>? files;
  @override
  final String? nameArchive;
  @override
  final DateTime? date;
  @override
  final String? urlArchiveUploadPlace;
  @override
  final String? fileType;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FilesCounterRecord(
          [void Function(FilesCounterRecordBuilder)? updates]) =>
      (new FilesCounterRecordBuilder()..update(updates))._build();

  _$FilesCounterRecord._(
      {this.files,
      this.nameArchive,
      this.date,
      this.urlArchiveUploadPlace,
      this.fileType,
      this.ffRef})
      : super._();

  @override
  FilesCounterRecord rebuild(
          void Function(FilesCounterRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilesCounterRecordBuilder toBuilder() =>
      new FilesCounterRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilesCounterRecord &&
        files == other.files &&
        nameArchive == other.nameArchive &&
        date == other.date &&
        urlArchiveUploadPlace == other.urlArchiveUploadPlace &&
        fileType == other.fileType &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jc(_$hash, nameArchive.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, urlArchiveUploadPlace.hashCode);
    _$hash = $jc(_$hash, fileType.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilesCounterRecord')
          ..add('files', files)
          ..add('nameArchive', nameArchive)
          ..add('date', date)
          ..add('urlArchiveUploadPlace', urlArchiveUploadPlace)
          ..add('fileType', fileType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FilesCounterRecordBuilder
    implements Builder<FilesCounterRecord, FilesCounterRecordBuilder> {
  _$FilesCounterRecord? _$v;

  ListBuilder<DocumentReference<Object?>>? _files;
  ListBuilder<DocumentReference<Object?>> get files =>
      _$this._files ??= new ListBuilder<DocumentReference<Object?>>();
  set files(ListBuilder<DocumentReference<Object?>>? files) =>
      _$this._files = files;

  String? _nameArchive;
  String? get nameArchive => _$this._nameArchive;
  set nameArchive(String? nameArchive) => _$this._nameArchive = nameArchive;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _urlArchiveUploadPlace;
  String? get urlArchiveUploadPlace => _$this._urlArchiveUploadPlace;
  set urlArchiveUploadPlace(String? urlArchiveUploadPlace) =>
      _$this._urlArchiveUploadPlace = urlArchiveUploadPlace;

  String? _fileType;
  String? get fileType => _$this._fileType;
  set fileType(String? fileType) => _$this._fileType = fileType;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FilesCounterRecordBuilder() {
    FilesCounterRecord._initializeBuilder(this);
  }

  FilesCounterRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _files = $v.files?.toBuilder();
      _nameArchive = $v.nameArchive;
      _date = $v.date;
      _urlArchiveUploadPlace = $v.urlArchiveUploadPlace;
      _fileType = $v.fileType;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilesCounterRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilesCounterRecord;
  }

  @override
  void update(void Function(FilesCounterRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilesCounterRecord build() => _build();

  _$FilesCounterRecord _build() {
    _$FilesCounterRecord _$result;
    try {
      _$result = _$v ??
          new _$FilesCounterRecord._(
              files: _files?.build(),
              nameArchive: nameArchive,
              date: date,
              urlArchiveUploadPlace: urlArchiveUploadPlace,
              fileType: fileType,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FilesCounterRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
