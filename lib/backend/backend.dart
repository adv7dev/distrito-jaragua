import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../flutter_flow/flutter_flow_util.dart';

import 'schema/user_posts_record.dart';
import 'schema/users_record.dart';
import 'schema/post_comments_record.dart';
import 'schema/user_stories_record.dart';
import 'schema/story_comments_record.dart';
import 'schema/friends_record.dart';
import 'schema/chats_record.dart';
import 'schema/chat_messages_record.dart';
import 'schema/anuncios_distrital_record.dart';
import 'schema/jaragua_pregadores_record.dart';
import 'schema/jaragua_sonoplastia_record.dart';
import 'schema/jaragua_musica_record.dart';
import 'schema/anuncios_jaragua_record.dart';
import 'schema/ipanema_pregadores_record.dart';
import 'schema/ipanema_sonoplastia_record.dart';
import 'schema/ipanema_musica_record.dart';
import 'schema/anuncios_ipanema_record.dart';
import 'schema/panamericano_pregadores_record.dart';
import 'schema/panamericano_sonoplastia_record.dart';
import 'schema/panamericano_musica_record.dart';
import 'schema/anuncios_panamericano_record.dart';
import 'schema/aurora_pregadores_record.dart';
import 'schema/aurora_sonoplastia_record.dart';
import 'schema/aurora_musica_record.dart';
import 'schema/anuncios_aurora_record.dart';
import 'schema/escala_pastoral_record.dart';
import 'schema/aurora_limpeza_record.dart';
import 'schema/aurora_sabatina_record.dart';
import 'schema/lideres_jaragua_record.dart';
import 'schema/lideres_ipanema_record.dart';
import 'schema/lideres_panamericano_record.dart';
import 'schema/lideres_aurora_record.dart';
import 'schema/serializers.dart';
import 'schema/kits_musical_record.dart';

export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/serializers.dart';

export 'schema/user_posts_record.dart';
export 'schema/users_record.dart';
export 'schema/post_comments_record.dart';
export 'schema/user_stories_record.dart';
export 'schema/story_comments_record.dart';
export 'schema/friends_record.dart';
export 'schema/chats_record.dart';
export 'schema/chat_messages_record.dart';
export 'schema/anuncios_distrital_record.dart';
export 'schema/jaragua_pregadores_record.dart';
export 'schema/jaragua_sonoplastia_record.dart';
export 'schema/jaragua_musica_record.dart';
export 'schema/anuncios_jaragua_record.dart';
export 'schema/ipanema_pregadores_record.dart';
export 'schema/ipanema_sonoplastia_record.dart';
export 'schema/ipanema_musica_record.dart';
export 'schema/anuncios_ipanema_record.dart';
export 'schema/panamericano_pregadores_record.dart';
export 'schema/panamericano_sonoplastia_record.dart';
export 'schema/panamericano_musica_record.dart';
export 'schema/anuncios_panamericano_record.dart';
export 'schema/aurora_pregadores_record.dart';
export 'schema/aurora_sonoplastia_record.dart';
export 'schema/aurora_musica_record.dart';
export 'schema/anuncios_aurora_record.dart';
export 'schema/escala_pastoral_record.dart';
export 'schema/aurora_limpeza_record.dart';
export 'schema/aurora_sabatina_record.dart';
export 'schema/lideres_jaragua_record.dart';
export 'schema/lideres_ipanema_record.dart';
export 'schema/lideres_panamericano_record.dart';
export 'schema/lideres_aurora_record.dart';
export 'schema/kits_musical_record.dart';

/// Functions to query UserPostsRecords (as a Stream and as a Future).
Stream<List<UserPostsRecord>> queryUserPostsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(UserPostsRecord.collection, UserPostsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<UserPostsRecord>> queryUserPostsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(UserPostsRecord.collection, UserPostsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<UserPostsRecord>> queryUserPostsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(UserPostsRecord.collection, UserPostsRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query UsersRecords (as a Stream and as a Future).
Stream<List<UsersRecord>> queryUsersRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(UsersRecord.collection, UsersRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<UsersRecord>> queryUsersRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(UsersRecord.collection, UsersRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<UsersRecord>> queryUsersRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(UsersRecord.collection, UsersRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query PostCommentsRecords (as a Stream and as a Future).
Stream<List<PostCommentsRecord>> queryPostCommentsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        PostCommentsRecord.collection, PostCommentsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<PostCommentsRecord>> queryPostCommentsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        PostCommentsRecord.collection, PostCommentsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<PostCommentsRecord>> queryPostCommentsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        PostCommentsRecord.collection, PostCommentsRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query UserStoriesRecords (as a Stream and as a Future).
Stream<List<UserStoriesRecord>> queryUserStoriesRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(UserStoriesRecord.collection, UserStoriesRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<UserStoriesRecord>> queryUserStoriesRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        UserStoriesRecord.collection, UserStoriesRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<UserStoriesRecord>> queryUserStoriesRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        UserStoriesRecord.collection, UserStoriesRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query StoryCommentsRecords (as a Stream and as a Future).
Stream<List<StoryCommentsRecord>> queryStoryCommentsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        StoryCommentsRecord.collection, StoryCommentsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<StoryCommentsRecord>> queryStoryCommentsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        StoryCommentsRecord.collection, StoryCommentsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<StoryCommentsRecord>> queryStoryCommentsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        StoryCommentsRecord.collection, StoryCommentsRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query FriendsRecords (as a Stream and as a Future).
Stream<List<FriendsRecord>> queryFriendsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(FriendsRecord.collection, FriendsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<FriendsRecord>> queryFriendsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(FriendsRecord.collection, FriendsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<FriendsRecord>> queryFriendsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(FriendsRecord.collection, FriendsRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query ChatsRecords (as a Stream and as a Future).
Stream<List<ChatsRecord>> queryChatsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(ChatsRecord.collection, ChatsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<ChatsRecord>> queryChatsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(ChatsRecord.collection, ChatsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<ChatsRecord>> queryChatsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(ChatsRecord.collection, ChatsRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query KitsMusicalRecords (as a Stream and as a Future).
Stream<List<KitsMusicalRecord>> queryKitsMusicalRecord(
    {Query Function(Query) queryBuilder,
      int limit = -1,
      bool singleRecord = false}) =>
    queryCollection(KitsMusicalRecord.collection, KitsMusicalRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<KitsMusicalRecord>> queryKitsMusicalRecordOnce(
    {Query Function(Query) queryBuilder,
      int limit = -1,
      bool singleRecord = false}) =>
    queryCollectionOnce(
        KitsMusicalRecord.collection, KitsMusicalRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<KitsMusicalRecord>> queryKitsMusicalRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        KitsMusicalRecord.collection, KitsMusicalRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query ChatMessagesRecords (as a Stream and as a Future).
Stream<List<ChatMessagesRecord>> queryChatMessagesRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        ChatMessagesRecord.collection, ChatMessagesRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<ChatMessagesRecord>> queryChatMessagesRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        ChatMessagesRecord.collection, ChatMessagesRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<ChatMessagesRecord>> queryChatMessagesRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        ChatMessagesRecord.collection, ChatMessagesRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query AnunciosDistritalRecords (as a Stream and as a Future).
Stream<List<AnunciosDistritalRecord>> queryAnunciosDistritalRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AnunciosDistritalRecord.collection, AnunciosDistritalRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AnunciosDistritalRecord>> queryAnunciosDistritalRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AnunciosDistritalRecord.collection, AnunciosDistritalRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<AnunciosDistritalRecord>>
    queryAnunciosDistritalRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize, bool isStream,
}) =>
        queryCollectionPage(AnunciosDistritalRecord.collection,
            AnunciosDistritalRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query JaraguaPregadoresRecords (as a Stream and as a Future).
Stream<List<JaraguaPregadoresRecord>> queryJaraguaPregadoresRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        JaraguaPregadoresRecord.collection, JaraguaPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<JaraguaPregadoresRecord>> queryJaraguaPregadoresRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        JaraguaPregadoresRecord.collection, JaraguaPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<JaraguaPregadoresRecord>>
    queryJaraguaPregadoresRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
        queryCollectionPage(JaraguaPregadoresRecord.collection,
            JaraguaPregadoresRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query JaraguaSonoplastiaRecords (as a Stream and as a Future).
Stream<List<JaraguaSonoplastiaRecord>> queryJaraguaSonoplastiaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(JaraguaSonoplastiaRecord.collection,
        JaraguaSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<JaraguaSonoplastiaRecord>> queryJaraguaSonoplastiaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(JaraguaSonoplastiaRecord.collection,
        JaraguaSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<JaraguaSonoplastiaRecord>>
    queryJaraguaSonoplastiaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
        queryCollectionPage(JaraguaSonoplastiaRecord.collection,
            JaraguaSonoplastiaRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query JaraguaMusicaRecords (as a Stream and as a Future).
Stream<List<JaraguaMusicaRecord>> queryJaraguaMusicaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        JaraguaMusicaRecord.collection, JaraguaMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<JaraguaMusicaRecord>> queryJaraguaMusicaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        JaraguaMusicaRecord.collection, JaraguaMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<JaraguaMusicaRecord>> queryJaraguaMusicaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        JaraguaMusicaRecord.collection, JaraguaMusicaRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query AnunciosJaraguaRecords (as a Stream and as a Future).
Stream<List<AnunciosJaraguaRecord>> queryAnunciosJaraguaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AnunciosJaraguaRecord.collection, AnunciosJaraguaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AnunciosJaraguaRecord>> queryAnunciosJaraguaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AnunciosJaraguaRecord.collection, AnunciosJaraguaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<AnunciosJaraguaRecord>> queryAnunciosJaraguaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        AnunciosJaraguaRecord.collection, AnunciosJaraguaRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query IpanemaPregadoresRecords (as a Stream and as a Future).
Stream<List<IpanemaPregadoresRecord>> queryIpanemaPregadoresRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        IpanemaPregadoresRecord.collection, IpanemaPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<IpanemaPregadoresRecord>> queryIpanemaPregadoresRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        IpanemaPregadoresRecord.collection, IpanemaPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<IpanemaPregadoresRecord>>
    queryIpanemaPregadoresRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
        queryCollectionPage(IpanemaPregadoresRecord.collection,
            IpanemaPregadoresRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query IpanemaSonoplastiaRecords (as a Stream and as a Future).
Stream<List<IpanemaSonoplastiaRecord>> queryIpanemaSonoplastiaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(IpanemaSonoplastiaRecord.collection,
        IpanemaSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<IpanemaSonoplastiaRecord>> queryIpanemaSonoplastiaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(IpanemaSonoplastiaRecord.collection,
        IpanemaSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<IpanemaSonoplastiaRecord>>
    queryIpanemaSonoplastiaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
        queryCollectionPage(IpanemaSonoplastiaRecord.collection,
            IpanemaSonoplastiaRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query IpanemaMusicaRecords (as a Stream and as a Future).
Stream<List<IpanemaMusicaRecord>> queryIpanemaMusicaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        IpanemaMusicaRecord.collection, IpanemaMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<IpanemaMusicaRecord>> queryIpanemaMusicaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        IpanemaMusicaRecord.collection, IpanemaMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<IpanemaMusicaRecord>> queryIpanemaMusicaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        IpanemaMusicaRecord.collection, IpanemaMusicaRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query AnunciosIpanemaRecords (as a Stream and as a Future).
Stream<List<AnunciosIpanemaRecord>> queryAnunciosIpanemaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AnunciosIpanemaRecord.collection, AnunciosIpanemaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AnunciosIpanemaRecord>> queryAnunciosIpanemaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AnunciosIpanemaRecord.collection, AnunciosIpanemaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<AnunciosIpanemaRecord>> queryAnunciosIpanemaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        AnunciosIpanemaRecord.collection, AnunciosIpanemaRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query PanamericanoPregadoresRecords (as a Stream and as a Future).
Stream<List<PanamericanoPregadoresRecord>> queryPanamericanoPregadoresRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(PanamericanoPregadoresRecord.collection,
        PanamericanoPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<PanamericanoPregadoresRecord>>
    queryPanamericanoPregadoresRecordOnce(
            {Query Function(Query) queryBuilder,
            int limit = -1,
            bool singleRecord = false}) =>
        queryCollectionOnce(PanamericanoPregadoresRecord.collection,
            PanamericanoPregadoresRecord.serializer,
            queryBuilder: queryBuilder,
            limit: limit,
            singleRecord: singleRecord);

Future<FFFirestorePage<PanamericanoPregadoresRecord>>
    queryPanamericanoPregadoresRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
        queryCollectionPage(PanamericanoPregadoresRecord.collection,
            PanamericanoPregadoresRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query PanamericanoSonoplastiaRecords (as a Stream and as a Future).
Stream<List<PanamericanoSonoplastiaRecord>> queryPanamericanoSonoplastiaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(PanamericanoSonoplastiaRecord.collection,
        PanamericanoSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<PanamericanoSonoplastiaRecord>>
    queryPanamericanoSonoplastiaRecordOnce(
            {Query Function(Query) queryBuilder,
            int limit = -1,
            bool singleRecord = false}) =>
        queryCollectionOnce(PanamericanoSonoplastiaRecord.collection,
            PanamericanoSonoplastiaRecord.serializer,
            queryBuilder: queryBuilder,
            limit: limit,
            singleRecord: singleRecord);

Future<FFFirestorePage<PanamericanoSonoplastiaRecord>>
    queryPanamericanoSonoplastiaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
        queryCollectionPage(PanamericanoSonoplastiaRecord.collection,
            PanamericanoSonoplastiaRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query PanamericanoMusicaRecords (as a Stream and as a Future).
Stream<List<PanamericanoMusicaRecord>> queryPanamericanoMusicaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(PanamericanoMusicaRecord.collection,
        PanamericanoMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<PanamericanoMusicaRecord>> queryPanamericanoMusicaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(PanamericanoMusicaRecord.collection,
        PanamericanoMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<PanamericanoMusicaRecord>>
    queryPanamericanoMusicaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
        queryCollectionPage(PanamericanoMusicaRecord.collection,
            PanamericanoMusicaRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query AnunciosPanamericanoRecords (as a Stream and as a Future).
Stream<List<AnunciosPanamericanoRecord>> queryAnunciosPanamericanoRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(AnunciosPanamericanoRecord.collection,
        AnunciosPanamericanoRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AnunciosPanamericanoRecord>> queryAnunciosPanamericanoRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(AnunciosPanamericanoRecord.collection,
        AnunciosPanamericanoRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<AnunciosPanamericanoRecord>>
    queryAnunciosPanamericanoRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
        queryCollectionPage(AnunciosPanamericanoRecord.collection,
            AnunciosPanamericanoRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query AuroraPregadoresRecords (as a Stream and as a Future).
Stream<List<AuroraPregadoresRecord>> queryAuroraPregadoresRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AuroraPregadoresRecord.collection, AuroraPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AuroraPregadoresRecord>> queryAuroraPregadoresRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AuroraPregadoresRecord.collection, AuroraPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<AuroraPregadoresRecord>>
    queryAuroraPregadoresRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
        queryCollectionPage(AuroraPregadoresRecord.collection,
            AuroraPregadoresRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query AuroraSonoplastiaRecords (as a Stream and as a Future).
Stream<List<AuroraSonoplastiaRecord>> queryAuroraSonoplastiaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AuroraSonoplastiaRecord.collection, AuroraSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AuroraSonoplastiaRecord>> queryAuroraSonoplastiaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AuroraSonoplastiaRecord.collection, AuroraSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<AuroraSonoplastiaRecord>>
    queryAuroraSonoplastiaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
        queryCollectionPage(AuroraSonoplastiaRecord.collection,
            AuroraSonoplastiaRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query AuroraMusicaRecords (as a Stream and as a Future).
Stream<List<AuroraMusicaRecord>> queryAuroraMusicaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AuroraMusicaRecord.collection, AuroraMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AuroraMusicaRecord>> queryAuroraMusicaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AuroraMusicaRecord.collection, AuroraMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<AuroraMusicaRecord>> queryAuroraMusicaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        AuroraMusicaRecord.collection, AuroraMusicaRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query AnunciosAuroraRecords (as a Stream and as a Future).
Stream<List<AnunciosAuroraRecord>> queryAnunciosAuroraRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AnunciosAuroraRecord.collection, AnunciosAuroraRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AnunciosAuroraRecord>> queryAnunciosAuroraRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AnunciosAuroraRecord.collection, AnunciosAuroraRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<AnunciosAuroraRecord>> queryAnunciosAuroraRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        AnunciosAuroraRecord.collection, AnunciosAuroraRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query EscalaPastoralRecords (as a Stream and as a Future).
Stream<List<EscalaPastoralRecord>> queryEscalaPastoralRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        EscalaPastoralRecord.collection, EscalaPastoralRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<EscalaPastoralRecord>> queryEscalaPastoralRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        EscalaPastoralRecord.collection, EscalaPastoralRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<EscalaPastoralRecord>> queryEscalaPastoralRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        EscalaPastoralRecord.collection, EscalaPastoralRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query AuroraLimpezaRecords (as a Stream and as a Future).
Stream<List<AuroraLimpezaRecord>> queryAuroraLimpezaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AuroraLimpezaRecord.collection, AuroraLimpezaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AuroraLimpezaRecord>> queryAuroraLimpezaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AuroraLimpezaRecord.collection, AuroraLimpezaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<AuroraLimpezaRecord>> queryAuroraLimpezaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        AuroraLimpezaRecord.collection, AuroraLimpezaRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query AuroraSabatinaRecords (as a Stream and as a Future).
Stream<List<AuroraSabatinaRecord>> queryAuroraSabatinaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AuroraSabatinaRecord.collection, AuroraSabatinaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AuroraSabatinaRecord>> queryAuroraSabatinaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AuroraSabatinaRecord.collection, AuroraSabatinaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<AuroraSabatinaRecord>> queryAuroraSabatinaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        AuroraSabatinaRecord.collection, AuroraSabatinaRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query LideresJaraguaRecords (as a Stream and as a Future).
Stream<List<LideresJaraguaRecord>> queryLideresJaraguaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        LideresJaraguaRecord.collection, LideresJaraguaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<LideresJaraguaRecord>> queryLideresJaraguaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        LideresJaraguaRecord.collection, LideresJaraguaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<LideresJaraguaRecord>> queryLideresJaraguaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        LideresJaraguaRecord.collection, LideresJaraguaRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query LideresIpanemaRecords (as a Stream and as a Future).
Stream<List<LideresIpanemaRecord>> queryLideresIpanemaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        LideresIpanemaRecord.collection, LideresIpanemaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<LideresIpanemaRecord>> queryLideresIpanemaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        LideresIpanemaRecord.collection, LideresIpanemaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<LideresIpanemaRecord>> queryLideresIpanemaRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        LideresIpanemaRecord.collection, LideresIpanemaRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

/// Functions to query LideresPanamericanoRecords (as a Stream and as a Future).
Stream<List<LideresPanamericanoRecord>> queryLideresPanamericanoRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(LideresPanamericanoRecord.collection,
        LideresPanamericanoRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<LideresPanamericanoRecord>> queryLideresPanamericanoRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(LideresPanamericanoRecord.collection,
        LideresPanamericanoRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<LideresPanamericanoRecord>>
    queryLideresPanamericanoRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
        queryCollectionPage(LideresPanamericanoRecord.collection,
            LideresPanamericanoRecord.serializer,
            queryBuilder: queryBuilder,
            nextPageMarker: nextPageMarker,
            pageSize: pageSize);

/// Functions to query LideresAuroraRecords (as a Stream and as a Future).
Stream<List<LideresAuroraRecord>> queryLideresAuroraRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        LideresAuroraRecord.collection, LideresAuroraRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<LideresAuroraRecord>> queryLideresAuroraRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        LideresAuroraRecord.collection, LideresAuroraRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<FFFirestorePage<LideresAuroraRecord>> queryLideresAuroraRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) =>
    queryCollectionPage(
        LideresAuroraRecord.collection, LideresAuroraRecord.serializer,
        queryBuilder: queryBuilder,
        nextPageMarker: nextPageMarker,
        pageSize: pageSize);

Stream<List<T>> queryCollection<T>(
    CollectionReference collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().map((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    CollectionReference collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

class FFFirestorePage<T> {
  final List<T> data;
  final QueryDocumentSnapshot nextPageMarker;

  FFFirestorePage(this.data, this.nextPageMarker);

  get dataStream => null;
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  CollectionReference collection,
  Serializer<T> serializer, {
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  final docSnapshots = await query.get();
  final data = docSnapshots.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList();
  final nextPageToken =
      docSnapshots.docs.isEmpty ? null : docSnapshots.docs.last;
  return FFFirestorePage(data, nextPageToken);
}

// Creates a Firestore record representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    return;
  }

  final userData = createUsersRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
}
