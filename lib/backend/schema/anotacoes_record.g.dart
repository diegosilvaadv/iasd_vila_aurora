// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anotacoes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnotacoesRecord> _$anotacoesRecordSerializer =
    new _$AnotacoesRecordSerializer();

class _$AnotacoesRecordSerializer
    implements StructuredSerializer<AnotacoesRecord> {
  @override
  final Iterable<Type> types = const [AnotacoesRecord, _$AnotacoesRecord];
  @override
  final String wireName = 'AnotacoesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AnotacoesRecord object,
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
    value = object.anotacao;
    if (value != null) {
      result
        ..add('anotacao')
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
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.concluida;
    if (value != null) {
      result
        ..add('concluida')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  AnotacoesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnotacoesRecordBuilder();

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
        case 'anotacao':
          result.anotacao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'users':
          result.users = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'concluida':
          result.concluida = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$AnotacoesRecord extends AnotacoesRecord {
  @override
  final String titulo;
  @override
  final String anotacao;
  @override
  final DateTime data;
  @override
  final DocumentReference<Object> users;
  @override
  final bool concluida;
  @override
  final DocumentReference<Object> reference;

  factory _$AnotacoesRecord([void Function(AnotacoesRecordBuilder) updates]) =>
      (new AnotacoesRecordBuilder()..update(updates)).build();

  _$AnotacoesRecord._(
      {this.titulo,
      this.anotacao,
      this.data,
      this.users,
      this.concluida,
      this.reference})
      : super._();

  @override
  AnotacoesRecord rebuild(void Function(AnotacoesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnotacoesRecordBuilder toBuilder() =>
      new AnotacoesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnotacoesRecord &&
        titulo == other.titulo &&
        anotacao == other.anotacao &&
        data == other.data &&
        users == other.users &&
        concluida == other.concluida &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, titulo.hashCode), anotacao.hashCode),
                    data.hashCode),
                users.hashCode),
            concluida.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnotacoesRecord')
          ..add('titulo', titulo)
          ..add('anotacao', anotacao)
          ..add('data', data)
          ..add('users', users)
          ..add('concluida', concluida)
          ..add('reference', reference))
        .toString();
  }
}

class AnotacoesRecordBuilder
    implements Builder<AnotacoesRecord, AnotacoesRecordBuilder> {
  _$AnotacoesRecord _$v;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  String _anotacao;
  String get anotacao => _$this._anotacao;
  set anotacao(String anotacao) => _$this._anotacao = anotacao;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  DocumentReference<Object> _users;
  DocumentReference<Object> get users => _$this._users;
  set users(DocumentReference<Object> users) => _$this._users = users;

  bool _concluida;
  bool get concluida => _$this._concluida;
  set concluida(bool concluida) => _$this._concluida = concluida;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AnotacoesRecordBuilder() {
    AnotacoesRecord._initializeBuilder(this);
  }

  AnotacoesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _anotacao = $v.anotacao;
      _data = $v.data;
      _users = $v.users;
      _concluida = $v.concluida;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnotacoesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnotacoesRecord;
  }

  @override
  void update(void Function(AnotacoesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnotacoesRecord build() {
    final _$result = _$v ??
        new _$AnotacoesRecord._(
            titulo: titulo,
            anotacao: anotacao,
            data: data,
            users: users,
            concluida: concluida,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
