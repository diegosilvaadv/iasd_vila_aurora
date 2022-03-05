// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ensaio_musical_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnsaioMusicalRecord> _$ensaioMusicalRecordSerializer =
    new _$EnsaioMusicalRecordSerializer();

class _$EnsaioMusicalRecordSerializer
    implements StructuredSerializer<EnsaioMusicalRecord> {
  @override
  final Iterable<Type> types = const [
    EnsaioMusicalRecord,
    _$EnsaioMusicalRecord
  ];
  @override
  final String wireName = 'EnsaioMusicalRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, EnsaioMusicalRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nomeMusica;
    if (value != null) {
      result
        ..add('nome_musica')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.letra;
    if (value != null) {
      result
        ..add('letra')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantada;
    if (value != null) {
      result
        ..add('cantada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.conjunto;
    if (value != null) {
      result
        ..add('conjunto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.playback;
    if (value != null) {
      result
        ..add('playback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tenor;
    if (value != null) {
      result
        ..add('tenor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.soprano;
    if (value != null) {
      result
        ..add('soprano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contralto;
    if (value != null) {
      result
        ..add('contralto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.barito;
    if (value != null) {
      result
        ..add('barito')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.baixo;
    if (value != null) {
      result
        ..add('baixo')
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
  EnsaioMusicalRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnsaioMusicalRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nome_musica':
          result.nomeMusica = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'letra':
          result.letra = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cantada':
          result.cantada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'conjunto':
          result.conjunto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'playback':
          result.playback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tenor':
          result.tenor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'soprano':
          result.soprano = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contralto':
          result.contralto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'barito':
          result.barito = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'baixo':
          result.baixo = serializers.deserialize(value,
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

class _$EnsaioMusicalRecord extends EnsaioMusicalRecord {
  @override
  final String nomeMusica;
  @override
  final String letra;
  @override
  final String cantada;
  @override
  final String conjunto;
  @override
  final String playback;
  @override
  final String tenor;
  @override
  final String soprano;
  @override
  final String contralto;
  @override
  final String barito;
  @override
  final String baixo;
  @override
  final DocumentReference<Object> reference;

  factory _$EnsaioMusicalRecord(
          [void Function(EnsaioMusicalRecordBuilder) updates]) =>
      (new EnsaioMusicalRecordBuilder()..update(updates)).build();

  _$EnsaioMusicalRecord._(
      {this.nomeMusica,
      this.letra,
      this.cantada,
      this.conjunto,
      this.playback,
      this.tenor,
      this.soprano,
      this.contralto,
      this.barito,
      this.baixo,
      this.reference})
      : super._();

  @override
  EnsaioMusicalRecord rebuild(
          void Function(EnsaioMusicalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnsaioMusicalRecordBuilder toBuilder() =>
      new EnsaioMusicalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnsaioMusicalRecord &&
        nomeMusica == other.nomeMusica &&
        letra == other.letra &&
        cantada == other.cantada &&
        conjunto == other.conjunto &&
        playback == other.playback &&
        tenor == other.tenor &&
        soprano == other.soprano &&
        contralto == other.contralto &&
        barito == other.barito &&
        baixo == other.baixo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, nomeMusica.hashCode),
                                            letra.hashCode),
                                        cantada.hashCode),
                                    conjunto.hashCode),
                                playback.hashCode),
                            tenor.hashCode),
                        soprano.hashCode),
                    contralto.hashCode),
                barito.hashCode),
            baixo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EnsaioMusicalRecord')
          ..add('nomeMusica', nomeMusica)
          ..add('letra', letra)
          ..add('cantada', cantada)
          ..add('conjunto', conjunto)
          ..add('playback', playback)
          ..add('tenor', tenor)
          ..add('soprano', soprano)
          ..add('contralto', contralto)
          ..add('barito', barito)
          ..add('baixo', baixo)
          ..add('reference', reference))
        .toString();
  }
}

class EnsaioMusicalRecordBuilder
    implements Builder<EnsaioMusicalRecord, EnsaioMusicalRecordBuilder> {
  _$EnsaioMusicalRecord _$v;

  String _nomeMusica;
  String get nomeMusica => _$this._nomeMusica;
  set nomeMusica(String nomeMusica) => _$this._nomeMusica = nomeMusica;

  String _letra;
  String get letra => _$this._letra;
  set letra(String letra) => _$this._letra = letra;

  String _cantada;
  String get cantada => _$this._cantada;
  set cantada(String cantada) => _$this._cantada = cantada;

  String _conjunto;
  String get conjunto => _$this._conjunto;
  set conjunto(String conjunto) => _$this._conjunto = conjunto;

  String _playback;
  String get playback => _$this._playback;
  set playback(String playback) => _$this._playback = playback;

  String _tenor;
  String get tenor => _$this._tenor;
  set tenor(String tenor) => _$this._tenor = tenor;

  String _soprano;
  String get soprano => _$this._soprano;
  set soprano(String soprano) => _$this._soprano = soprano;

  String _contralto;
  String get contralto => _$this._contralto;
  set contralto(String contralto) => _$this._contralto = contralto;

  String _barito;
  String get barito => _$this._barito;
  set barito(String barito) => _$this._barito = barito;

  String _baixo;
  String get baixo => _$this._baixo;
  set baixo(String baixo) => _$this._baixo = baixo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  EnsaioMusicalRecordBuilder() {
    EnsaioMusicalRecord._initializeBuilder(this);
  }

  EnsaioMusicalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nomeMusica = $v.nomeMusica;
      _letra = $v.letra;
      _cantada = $v.cantada;
      _conjunto = $v.conjunto;
      _playback = $v.playback;
      _tenor = $v.tenor;
      _soprano = $v.soprano;
      _contralto = $v.contralto;
      _barito = $v.barito;
      _baixo = $v.baixo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnsaioMusicalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnsaioMusicalRecord;
  }

  @override
  void update(void Function(EnsaioMusicalRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EnsaioMusicalRecord build() {
    final _$result = _$v ??
        new _$EnsaioMusicalRecord._(
            nomeMusica: nomeMusica,
            letra: letra,
            cantada: cantada,
            conjunto: conjunto,
            playback: playback,
            tenor: tenor,
            soprano: soprano,
            contralto: contralto,
            barito: barito,
            baixo: baixo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
