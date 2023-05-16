// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FilesRecord> _$filesRecordSerializer = new _$FilesRecordSerializer();

class _$FilesRecordSerializer implements StructuredSerializer<FilesRecord> {
  @override
  final Iterable<Type> types = const [FilesRecord, _$FilesRecord];
  @override
  final String wireName = 'FilesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FilesRecord object,
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
    value = object.fecha;
    if (value != null) {
      result
        ..add('Fecha')
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
  FilesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FilesRecordBuilder();

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
        case 'Fecha':
          result.fecha = serializers.deserialize(value,
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

class _$FilesRecord extends FilesRecord {
  @override
  final BuiltList<DocumentReference<Object?>>? files;
  @override
  final String? nameArchive;
  @override
  final DateTime? fecha;
  @override
  final String? urlArchiveUploadPlace;
  @override
  final String? fileType;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FilesRecord([void Function(FilesRecordBuilder)? updates]) =>
      (new FilesRecordBuilder()..update(updates))._build();

  _$FilesRecord._(
      {this.files,
      this.nameArchive,
      this.fecha,
      this.urlArchiveUploadPlace,
      this.fileType,
      this.ffRef})
      : super._();

  @override
  FilesRecord rebuild(void Function(FilesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilesRecordBuilder toBuilder() => new FilesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilesRecord &&
        files == other.files &&
        nameArchive == other.nameArchive &&
        fecha == other.fecha &&
        urlArchiveUploadPlace == other.urlArchiveUploadPlace &&
        fileType == other.fileType &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jc(_$hash, nameArchive.hashCode);
    _$hash = $jc(_$hash, fecha.hashCode);
    _$hash = $jc(_$hash, urlArchiveUploadPlace.hashCode);
    _$hash = $jc(_$hash, fileType.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilesRecord')
          ..add('files', files)
          ..add('nameArchive', nameArchive)
          ..add('fecha', fecha)
          ..add('urlArchiveUploadPlace', urlArchiveUploadPlace)
          ..add('fileType', fileType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FilesRecordBuilder implements Builder<FilesRecord, FilesRecordBuilder> {
  _$FilesRecord? _$v;

  ListBuilder<DocumentReference<Object?>>? _files;
  ListBuilder<DocumentReference<Object?>> get files =>
      _$this._files ??= new ListBuilder<DocumentReference<Object?>>();
  set files(ListBuilder<DocumentReference<Object?>>? files) =>
      _$this._files = files;

  String? _nameArchive;
  String? get nameArchive => _$this._nameArchive;
  set nameArchive(String? nameArchive) => _$this._nameArchive = nameArchive;

  DateTime? _fecha;
  DateTime? get fecha => _$this._fecha;
  set fecha(DateTime? fecha) => _$this._fecha = fecha;

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

  FilesRecordBuilder() {
    FilesRecord._initializeBuilder(this);
  }

  FilesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _files = $v.files?.toBuilder();
      _nameArchive = $v.nameArchive;
      _fecha = $v.fecha;
      _urlArchiveUploadPlace = $v.urlArchiveUploadPlace;
      _fileType = $v.fileType;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilesRecord;
  }

  @override
  void update(void Function(FilesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilesRecord build() => _build();

  _$FilesRecord _build() {
    _$FilesRecord _$result;
    try {
      _$result = _$v ??
          new _$FilesRecord._(
              files: _files?.build(),
              nameArchive: nameArchive,
              fecha: fecha,
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
            r'FilesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
