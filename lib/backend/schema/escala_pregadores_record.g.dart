// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escala_pregadores_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EscalaPregadoresRecord> _$escalaPregadoresRecordSerializer =
    new _$EscalaPregadoresRecordSerializer();

class _$EscalaPregadoresRecordSerializer
    implements StructuredSerializer<EscalaPregadoresRecord> {
  @override
  final Iterable<Type> types = const [
    EscalaPregadoresRecord,
    _$EscalaPregadoresRecord
  ];
  @override
  final String wireName = 'EscalaPregadoresRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, EscalaPregadoresRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.imgPregador;
    if (value != null) {
      result
        ..add('img_pregador')
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
    value = object.whatsapp;
    if (value != null) {
      result
        ..add('whatsapp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.igreja;
    if (value != null) {
      result
        ..add('igreja')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomePregador;
    if (value != null) {
      result
        ..add('nome_pregador')
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
  EscalaPregadoresRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EscalaPregadoresRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'img_pregador':
          result.imgPregador = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'whatsapp':
          result.whatsapp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'igreja':
          result.igreja = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nome_pregador':
          result.nomePregador = serializers.deserialize(value,
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

class _$EscalaPregadoresRecord extends EscalaPregadoresRecord {
  @override
  final String imgPregador;
  @override
  final DateTime data;
  @override
  final String whatsapp;
  @override
  final String igreja;
  @override
  final String nomePregador;
  @override
  final DocumentReference<Object> reference;

  factory _$EscalaPregadoresRecord(
          [void Function(EscalaPregadoresRecordBuilder) updates]) =>
      (new EscalaPregadoresRecordBuilder()..update(updates)).build();

  _$EscalaPregadoresRecord._(
      {this.imgPregador,
      this.data,
      this.whatsapp,
      this.igreja,
      this.nomePregador,
      this.reference})
      : super._();

  @override
  EscalaPregadoresRecord rebuild(
          void Function(EscalaPregadoresRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EscalaPregadoresRecordBuilder toBuilder() =>
      new EscalaPregadoresRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EscalaPregadoresRecord &&
        imgPregador == other.imgPregador &&
        data == other.data &&
        whatsapp == other.whatsapp &&
        igreja == other.igreja &&
        nomePregador == other.nomePregador &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, imgPregador.hashCode), data.hashCode),
                    whatsapp.hashCode),
                igreja.hashCode),
            nomePregador.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EscalaPregadoresRecord')
          ..add('imgPregador', imgPregador)
          ..add('data', data)
          ..add('whatsapp', whatsapp)
          ..add('igreja', igreja)
          ..add('nomePregador', nomePregador)
          ..add('reference', reference))
        .toString();
  }
}

class EscalaPregadoresRecordBuilder
    implements Builder<EscalaPregadoresRecord, EscalaPregadoresRecordBuilder> {
  _$EscalaPregadoresRecord _$v;

  String _imgPregador;
  String get imgPregador => _$this._imgPregador;
  set imgPregador(String imgPregador) => _$this._imgPregador = imgPregador;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _whatsapp;
  String get whatsapp => _$this._whatsapp;
  set whatsapp(String whatsapp) => _$this._whatsapp = whatsapp;

  String _igreja;
  String get igreja => _$this._igreja;
  set igreja(String igreja) => _$this._igreja = igreja;

  String _nomePregador;
  String get nomePregador => _$this._nomePregador;
  set nomePregador(String nomePregador) => _$this._nomePregador = nomePregador;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  EscalaPregadoresRecordBuilder() {
    EscalaPregadoresRecord._initializeBuilder(this);
  }

  EscalaPregadoresRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imgPregador = $v.imgPregador;
      _data = $v.data;
      _whatsapp = $v.whatsapp;
      _igreja = $v.igreja;
      _nomePregador = $v.nomePregador;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EscalaPregadoresRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EscalaPregadoresRecord;
  }

  @override
  void update(void Function(EscalaPregadoresRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EscalaPregadoresRecord build() {
    final _$result = _$v ??
        new _$EscalaPregadoresRecord._(
            imgPregador: imgPregador,
            data: data,
            whatsapp: whatsapp,
            igreja: igreja,
            nomePregador: nomePregador,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
