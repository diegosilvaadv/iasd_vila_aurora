import 'package:built_value/standard_json_plugin.dart';

import 'user_posts_record.dart';
import 'users_record.dart';
import 'post_comments_record.dart';
import 'friends_record.dart';
import 'chats_record.dart';
import 'chat_messages_record.dart';
import 'escala_sonoplastia_record.dart';
import 'escala_pregadores_record.dart';
import 'ensaio_musical_record.dart';
import 'escola_sabatina_record.dart';
import 'anuncios_record.dart';
import 'limpeza_record.dart';
import 'mini_musical_record.dart';
import 'anotacoes_record.dart';
import 'testedados_record.dart';

import 'index.dart';

export 'index.dart';

part 'serializers.g.dart';

const kDocumentReferenceField = 'Document__Reference__Field';

@SerializersFor(const [
  UserPostsRecord,
  UsersRecord,
  PostCommentsRecord,
  FriendsRecord,
  ChatsRecord,
  ChatMessagesRecord,
  EscalaSonoplastiaRecord,
  EscalaPregadoresRecord,
  EnsaioMusicalRecord,
  EscolaSabatinaRecord,
  AnunciosRecord,
  LimpezaRecord,
  MiniMusicalRecord,
  AnotacoesRecord,
  TestedadosRecord,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(DocumentReferenceSerializer())
      ..add(DateTimeSerializer())
      ..add(LatLngSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();

extension SerializerExtensions on Serializers {
  Map<String, dynamic> toFirestore<T>(Serializer<T> serializer, T object) =>
      mapToFirestore(serializeWith(serializer, object));
}

class DocumentReferenceSerializer
    implements PrimitiveSerializer<DocumentReference> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([DocumentReference]);
  @override
  final String wireName = 'DocumentReference';

  @override
  Object serialize(Serializers serializers, DocumentReference reference,
      {FullType specifiedType: FullType.unspecified}) {
    return reference;
  }

  @override
  DocumentReference deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as DocumentReference;
}

class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  @override
  final Iterable<Type> types = new BuiltList<Type>([DateTime]);
  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(Serializers serializers, DateTime dateTime,
      {FullType specifiedType: FullType.unspecified}) {
    return dateTime;
  }

  @override
  DateTime deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as DateTime;
}

class LatLngSerializer implements PrimitiveSerializer<LatLng> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([LatLng]);
  @override
  final String wireName = 'LatLng';

  @override
  Object serialize(Serializers serializers, LatLng location,
      {FullType specifiedType: FullType.unspecified}) {
    return location;
  }

  @override
  LatLng deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as LatLng;
}

Map<String, dynamic> serializedData(DocumentSnapshot doc) =>
    {...mapFromFirestore(doc.data()), kDocumentReferenceField: doc.reference};

Map<String, dynamic> mapFromFirestore(Map<String, dynamic> data) =>
    data.map((key, value) {
      if (value is Timestamp) {
        value = (value as Timestamp).toDate();
      }
      if (value is GeoPoint) {
        value = (value as GeoPoint).toLatLng();
      }
      return MapEntry(key, value);
    });

Map<String, dynamic> mapToFirestore(Map<String, dynamic> data) =>
    data.map((key, value) {
      if (value is LatLng) {
        value = (value as LatLng).toGeoPoint();
      }
      return MapEntry(key, value);
    });

extension GeoPointExtension on LatLng {
  GeoPoint toGeoPoint() => GeoPoint(latitude, longitude);
}

extension LatLngExtension on GeoPoint {
  LatLng toLatLng() => LatLng(latitude, longitude);
}

DocumentReference toRef(String ref) => FirebaseFirestore.instance.doc(ref);

T safeGet<T>(T Function() func, [Function(dynamic) reportError]) {
  try {
    return func();
  } catch (e) {
    reportError?.call(e);
  }
  return null;
}
