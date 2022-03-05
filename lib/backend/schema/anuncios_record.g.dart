// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anuncios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnunciosRecord> _$anunciosRecordSerializer =
    new _$AnunciosRecordSerializer();

class _$AnunciosRecordSerializer
    implements StructuredSerializer<AnunciosRecord> {
  @override
  final Iterable<Type> types = const [AnunciosRecord, _$AnunciosRecord];
  @override
  final String wireName = 'AnunciosRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AnunciosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mensagem;
    if (value != null) {
      result
        ..add('mensagem')
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
    value = object.local;
    if (value != null) {
      result
        ..add('local')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.horario;
    if (value != null) {
      result
        ..add('horario')
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
  AnunciosRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnunciosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mensagem':
          result.mensagem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'local':
          result.local = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'horario':
          result.horario = serializers.deserialize(value,
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

class _$AnunciosRecord extends AnunciosRecord {
  @override
  final String titulo;
  @override
  final String img;
  @override
  final String mensagem;
  @override
  final DateTime data;
  @override
  final String local;
  @override
  final String horario;
  @override
  final DocumentReference<Object> reference;

  factory _$AnunciosRecord([void Function(AnunciosRecordBuilder) updates]) =>
      (new AnunciosRecordBuilder()..update(updates)).build();

  _$AnunciosRecord._(
      {this.titulo,
      this.img,
      this.mensagem,
      this.data,
      this.local,
      this.horario,
      this.reference})
      : super._();

  @override
  AnunciosRecord rebuild(void Function(AnunciosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnunciosRecordBuilder toBuilder() =>
      new AnunciosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnunciosRecord &&
        titulo == other.titulo &&
        img == other.img &&
        mensagem == other.mensagem &&
        data == other.data &&
        local == other.local &&
        horario == other.horario &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, titulo.hashCode), img.hashCode),
                        mensagem.hashCode),
                    data.hashCode),
                local.hashCode),
            horario.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnunciosRecord')
          ..add('titulo', titulo)
          ..add('img', img)
          ..add('mensagem', mensagem)
          ..add('data', data)
          ..add('local', local)
          ..add('horario', horario)
          ..add('reference', reference))
        .toString();
  }
}

class AnunciosRecordBuilder
    implements Builder<AnunciosRecord, AnunciosRecordBuilder> {
  _$AnunciosRecord _$v;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  String _mensagem;
  String get mensagem => _$this._mensagem;
  set mensagem(String mensagem) => _$this._mensagem = mensagem;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _local;
  String get local => _$this._local;
  set local(String local) => _$this._local = local;

  String _horario;
  String get horario => _$this._horario;
  set horario(String horario) => _$this._horario = horario;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AnunciosRecordBuilder() {
    AnunciosRecord._initializeBuilder(this);
  }

  AnunciosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _img = $v.img;
      _mensagem = $v.mensagem;
      _data = $v.data;
      _local = $v.local;
      _horario = $v.horario;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnunciosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnunciosRecord;
  }

  @override
  void update(void Function(AnunciosRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnunciosRecord build() {
    final _$result = _$v ??
        new _$AnunciosRecord._(
            titulo: titulo,
            img: img,
            mensagem: mensagem,
            data: data,
            local: local,
            horario: horario,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
