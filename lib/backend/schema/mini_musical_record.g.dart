// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mini_musical_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MiniMusicalRecord> _$miniMusicalRecordSerializer =
    new _$MiniMusicalRecordSerializer();

class _$MiniMusicalRecordSerializer
    implements StructuredSerializer<MiniMusicalRecord> {
  @override
  final Iterable<Type> types = const [MiniMusicalRecord, _$MiniMusicalRecord];
  @override
  final String wireName = 'MiniMusicalRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MiniMusicalRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.cantor;
    if (value != null) {
      result
        ..add('cantor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.igreja;
    if (value != null) {
      result
        ..add('igreja')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contato;
    if (value != null) {
      result
        ..add('contato')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  MiniMusicalRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MiniMusicalRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'cantor':
          result.cantor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'igreja':
          result.igreja = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contato':
          result.contato = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$MiniMusicalRecord extends MiniMusicalRecord {
  @override
  final String cantor;
  @override
  final DateTime data;
  @override
  final String igreja;
  @override
  final String contato;
  @override
  final DocumentReference<Object> reference;

  factory _$MiniMusicalRecord(
          [void Function(MiniMusicalRecordBuilder) updates]) =>
      (new MiniMusicalRecordBuilder()..update(updates)).build();

  _$MiniMusicalRecord._(
      {this.cantor, this.data, this.igreja, this.contato, this.reference})
      : super._();

  @override
  MiniMusicalRecord rebuild(void Function(MiniMusicalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MiniMusicalRecordBuilder toBuilder() =>
      new MiniMusicalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MiniMusicalRecord &&
        cantor == other.cantor &&
        data == other.data &&
        igreja == other.igreja &&
        contato == other.contato &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, cantor.hashCode), data.hashCode), igreja.hashCode),
            contato.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MiniMusicalRecord')
          ..add('cantor', cantor)
          ..add('data', data)
          ..add('igreja', igreja)
          ..add('contato', contato)
          ..add('reference', reference))
        .toString();
  }
}

class MiniMusicalRecordBuilder
    implements Builder<MiniMusicalRecord, MiniMusicalRecordBuilder> {
  _$MiniMusicalRecord _$v;

  String _cantor;
  String get cantor => _$this._cantor;
  set cantor(String cantor) => _$this._cantor = cantor;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _igreja;
  String get igreja => _$this._igreja;
  set igreja(String igreja) => _$this._igreja = igreja;

  String _contato;
  String get contato => _$this._contato;
  set contato(String contato) => _$this._contato = contato;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MiniMusicalRecordBuilder() {
    MiniMusicalRecord._initializeBuilder(this);
  }

  MiniMusicalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cantor = $v.cantor;
      _data = $v.data;
      _igreja = $v.igreja;
      _contato = $v.contato;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MiniMusicalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MiniMusicalRecord;
  }

  @override
  void update(void Function(MiniMusicalRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MiniMusicalRecord build() {
    final _$result = _$v ??
        new _$MiniMusicalRecord._(
            cantor: cantor,
            data: data,
            igreja: igreja,
            contato: contato,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
