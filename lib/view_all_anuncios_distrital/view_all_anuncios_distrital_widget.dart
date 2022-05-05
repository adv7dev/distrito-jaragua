import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/add_anuncios_widget.dart';
import '../components/delete_anuncios_distrital_widget.dart';
import '../components/detalhes_anuncios_widget.dart';
import '../components/edit_anuncios_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class ViewAllAnunciosDistritalWidget extends StatefulWidget {
  const ViewAllAnunciosDistritalWidget({Key key}) : super(key: key);

  @override
  _ViewAllAnunciosDistritalWidgetState createState() =>
      _ViewAllAnunciosDistritalWidgetState();
}

class _ViewAllAnunciosDistritalWidgetState
    extends State<ViewAllAnunciosDistritalWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 70,
          icon: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 40,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'ANÚNCIOS DISTRITAL',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Advent Sans',
            color: Colors.white,
            fontSize: 20,
            useGoogleFonts: false,
          ),
        ),
        actions: [
          Visibility(
            visible: (currentUserDocument?.admGeral) == true,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
              child: AuthUserStreamWidget(
                child: InkWell(
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.9,
                            child: AddAnunciosWidget(),
                          ),
                        );
                      },
                    );
                  },
                  child: Icon(
                    Icons.add_circle,
                    color: FlutterFlowTheme.of(context).secondaryColor,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: StreamBuilder<List<AnunciosDistritalRecord>>(
                        stream: queryAnunciosDistritalRecord(
                          queryBuilder: (anunciosDistritalRecord) =>
                              anunciosDistritalRecord
                                  .where('ativo', isEqualTo: true)
                                  .orderBy('data', descending: true),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitRing(
                                  color:
                                  FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<AnunciosDistritalRecord>
                          listViewAnunciosDistritalRecordList =
                              snapshot.data;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            scrollDirection: Axis.vertical,
                            itemCount:
                            listViewAnunciosDistritalRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewAnunciosDistritalRecord =
                              listViewAnunciosDistritalRecordList[
                              listViewIndex];
                              return Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 3),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Card(
                                            clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                        true,
                                                        backgroundColor:
                                                        Color(0x3A000000),
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding:
                                                            MediaQuery.of(
                                                                context)
                                                                .viewInsets,
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .height *
                                                                  0.9,
                                                              child:
                                                              DetalhesAnunciosWidget(
                                                                titulo:
                                                                listViewAnunciosDistritalRecord
                                                                    .titulo,
                                                                descricao:
                                                                listViewAnunciosDistritalRecord
                                                                    .descricao,
                                                                data:
                                                                listViewAnunciosDistritalRecord
                                                                    .data,
                                                                horario:
                                                                listViewAnunciosDistritalRecord
                                                                    .horario,
                                                                img:
                                                                listViewAnunciosDistritalRecord
                                                                    .img,
                                                                local:
                                                                listViewAnunciosDistritalRecord
                                                                    .local,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    onDoubleTap: () async {
                                                      if ((currentUserDocument
                                                          ?.admGeral) ==
                                                          true) {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                          true,
                                                          backgroundColor:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .primaryBackground,
                                                          context: context,
                                                          builder: (context) {
                                                            return Padding(
                                                              padding: MediaQuery
                                                                  .of(context)
                                                                  .viewInsets,
                                                              child: Container(
                                                                height: MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .height *
                                                                    0.9,
                                                                child:
                                                                EditAnunciosWidget(
                                                                  titulo:
                                                                  listViewAnunciosDistritalRecord
                                                                      .titulo,
                                                                  descricao:
                                                                  listViewAnunciosDistritalRecord
                                                                      .descricao,
                                                                  img:
                                                                  listViewAnunciosDistritalRecord
                                                                      .img,
                                                                  horario:
                                                                  listViewAnunciosDistritalRecord
                                                                      .horario,
                                                                  data:
                                                                  listViewAnunciosDistritalRecord
                                                                      .data,
                                                                  local:
                                                                  listViewAnunciosDistritalRecord
                                                                      .local,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      } else {
                                                        await Future.delayed(
                                                            const Duration(
                                                                milliseconds:
                                                                1000));
                                                      }
                                                    },
                                                    onLongPress: () async {
                                                      if (currentUserDocument
                                                          ?.admGeral) {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                          true,
                                                          backgroundColor:
                                                          Colors
                                                              .transparent,
                                                          context: context,
                                                          builder: (context) {
                                                            return Padding(
                                                              padding: MediaQuery
                                                                  .of(context)
                                                                  .viewInsets,
                                                              child: Container(
                                                                height: MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .height *
                                                                    0.5,
                                                                child:
                                                                DeleteAnunciosDistritalWidget(
                                                                  anunciosdistrital:
                                                                  listViewAnunciosDistritalRecord
                                                                      .reference,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      } else {
                                                        await Future.delayed(
                                                            const Duration(
                                                                milliseconds:
                                                                1000));
                                                      }
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(5,
                                                              5, 5, 5),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              await Navigator
                                                                  .push(
                                                                context,
                                                                PageTransition(
                                                                  type:
                                                                  PageTransitionType
                                                                      .fade,
                                                                  child:
                                                                  FlutterFlowExpandedImageView(
                                                                    image:
                                                                    CachedNetworkImage(
                                                                      imageUrl:
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewAnunciosDistritalRecord
                                                                            .img,
                                                                        'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg',
                                                                      ),
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                    allowRotation:
                                                                    false,
                                                                    tag: valueOrDefault<
                                                                        String>(
                                                                      listViewAnunciosDistritalRecord
                                                                          .img,
                                                                      'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg' +
                                                                          '$listViewIndex',
                                                                    ),
                                                                    useHeroAnimation:
                                                                    true,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Hero(
                                                              tag:
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewAnunciosDistritalRecord
                                                                    .img,
                                                                'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg' +
                                                                    '$listViewIndex',
                                                              ),
                                                              transitionOnUserGestures:
                                                              true,
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    5),
                                                                child:
                                                                CachedNetworkImage(
                                                                  imageUrl:
                                                                  valueOrDefault<
                                                                      String>(
                                                                    listViewAnunciosDistritalRecord
                                                                        .img,
                                                                    'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg',
                                                                  ),
                                                                  width: 100,
                                                                  height: 100,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                5,
                                                                5,
                                                                5,
                                                                5),
                                                            child: Column(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          listViewAnunciosDistritalRecord
                                                                              .titulo,
                                                                          'S/ Titulo',
                                                                        ).maybeHandleOverflow(
                                                                          maxChars:
                                                                          20,
                                                                          replacement:
                                                                          '…',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily: 'Advent Sans',
                                                                          color: FlutterFlowTheme.of(context).secondaryColor,
                                                                          fontSize: 16,
                                                                          fontWeight: FontWeight.w600,
                                                                          useGoogleFonts: false,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        listViewIndex
                                                                            .toString(),
                                                                        textAlign:
                                                                        TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Divider(
                                                                  height: 10,
                                                                  color: Color(
                                                                      0xFFD4D4D4),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                        child:
                                                                        Text(
                                                                          listViewAnunciosDistritalRecord
                                                                              .descricao
                                                                              .maybeHandleOverflow(
                                                                            maxChars:
                                                                            30,
                                                                            replacement:
                                                                            '…',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily: 'Advent Sans',
                                                                            color: Colors.white,
                                                                            fontWeight: FontWeight.normal,
                                                                            fontStyle: FontStyle.italic,
                                                                            useGoogleFonts: false,
                                                                            lineHeight: 2,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      3),
                                                                  child:
                                                                  SingleChildScrollView(
                                                                    scrollDirection:
                                                                    Axis.horizontal,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                      children: [
                                                                        AutoSizeText(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            dateTimeFormat('dd/MM/y',
                                                                                listViewAnunciosDistritalRecord.data),
                                                                            'S/ data',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily: 'Advent Sans',
                                                                            color: FlutterFlowTheme.of(context).secondaryColor,
                                                                            fontWeight: FontWeight.w600,
                                                                            useGoogleFonts: false,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          AutoSizeText(
                                                                            valueOrDefault<String>(
                                                                              dateTimeFormat('EEEE', listViewAnunciosDistritalRecord.data),
                                                                              'S/ data',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                              fontFamily: 'Advent Sans',
                                                                              color: Color(0xFFD4D4D4),
                                                                              fontWeight: FontWeight.normal,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          AutoSizeText(
                                                                            valueOrDefault<String>(
                                                                              listViewAnunciosDistritalRecord.horario,
                                                                              'S/ data',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                              fontFamily: 'Advent Sans',
                                                                              color: Color(0xFFD4D4D4),
                                                                              fontWeight: FontWeight.normal,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Text(
                                                                      'Local:',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                        'Advent Sans',
                                                                        color:
                                                                        Colors.white,
                                                                        fontWeight:
                                                                        FontWeight.w600,
                                                                        useGoogleFonts:
                                                                        false,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewAnunciosDistritalRecord
                                                                            .local,
                                                                        'S/ Igreja',
                                                                      ).maybeHandleOverflow(
                                                                        maxChars:
                                                                        20,
                                                                        replacement:
                                                                        '…',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                        'Advent Sans',
                                                                        color:
                                                                        Color(0xFFDBDBDB),
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                        useGoogleFonts:
                                                                        false,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              color: Color(0xFFA4A4A4),
                              child: ExpandableNotifier(
                                initialExpanded: false,
                                child: ExpandablePanel(
                                  header: Text(
                                    '  Histórico',
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                      fontFamily: 'Advent Sans',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                  collapsed: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Text(
                                        '  Ver histórico de Pregadores',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                          fontFamily: 'Advent Sans',
                                          color: Color(0x8A000000),
                                          useGoogleFonts: false,
                                        ),
                                      ),
                                    ),
                                  ),
                                  expanded: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: StreamBuilder<
                                        List<AnunciosDistritalRecord>>(
                                      stream: queryAnunciosDistritalRecord(
                                        queryBuilder:
                                            (anunciosDistritalRecord) =>
                                            anunciosDistritalRecord
                                                .where('ativo',
                                                isEqualTo: false)
                                                .orderBy('data'),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: SpinKitRing(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                                size: 50,
                                              ),
                                            ),
                                          );
                                        }
                                        List<AnunciosDistritalRecord>
                                        columnAnunciosDistritalRecordList =
                                            snapshot.data;
                                        return SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                columnAnunciosDistritalRecordList
                                                    .length, (columnIndex) {
                                              final columnAnunciosDistritalRecord =
                                              columnAnunciosDistritalRecordList[
                                              columnIndex];
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .alternate,
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          InkWell(
                                                            onTap: () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                true,
                                                                backgroundColor:
                                                                Color(
                                                                    0x45000000),
                                                                context:
                                                                context,
                                                                builder:
                                                                    (context) {
                                                                  return Padding(
                                                                    padding: MediaQuery.of(
                                                                        context)
                                                                        .viewInsets,
                                                                    child:
                                                                    Container(
                                                                      height: MediaQuery.of(context)
                                                                          .size
                                                                          .height *
                                                                          0.9,
                                                                      child:
                                                                      DetalhesAnunciosWidget(
                                                                        titulo:
                                                                        columnAnunciosDistritalRecord.titulo,
                                                                        descricao:
                                                                        columnAnunciosDistritalRecord.descricao,
                                                                        data: columnAnunciosDistritalRecord
                                                                            .data,
                                                                        horario:
                                                                        columnAnunciosDistritalRecord.horario,
                                                                        img: columnAnunciosDistritalRecord
                                                                            .img,
                                                                        local: columnAnunciosDistritalRecord
                                                                            .local,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                            onLongPress:
                                                                () async {
                                                              if (currentUserDocument
                                                                  ?.admGeral) {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                  true,
                                                                  backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                                  context:
                                                                  context,
                                                                  builder:
                                                                      (context) {
                                                                    return Padding(
                                                                      padding: MediaQuery.of(
                                                                          context)
                                                                          .viewInsets,
                                                                      child:
                                                                      Container(
                                                                        height: MediaQuery.of(context).size.height *
                                                                            0.5,
                                                                        child:
                                                                        DeleteAnunciosDistritalWidget(
                                                                          anunciosdistrital:
                                                                          columnAnunciosDistritalRecord.reference,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              } else {
                                                                await Future.delayed(
                                                                    const Duration(
                                                                        milliseconds:
                                                                        1000));
                                                              }
                                                            },
                                                            child: Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      5,
                                                                      5,
                                                                      5,
                                                                      5),
                                                                  child:
                                                                  InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      await Navigator
                                                                          .push(
                                                                        context,
                                                                        PageTransition(
                                                                          type:
                                                                          PageTransitionType.fade,
                                                                          child:
                                                                          FlutterFlowExpandedImageView(
                                                                            image:
                                                                            CachedNetworkImage(
                                                                              imageUrl: valueOrDefault<String>(
                                                                                columnAnunciosDistritalRecord.img,
                                                                                'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg',
                                                                              ),
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                            allowRotation:
                                                                            false,
                                                                            tag:
                                                                            valueOrDefault<String>(
                                                                              columnAnunciosDistritalRecord.img,
                                                                              'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg' + '$columnIndex',
                                                                            ),
                                                                            useHeroAnimation:
                                                                            true,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                    child: Hero(
                                                                      tag: valueOrDefault<
                                                                          String>(
                                                                        columnAnunciosDistritalRecord
                                                                            .img,
                                                                        'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg' +
                                                                            '$columnIndex',
                                                                      ),
                                                                      transitionOnUserGestures:
                                                                      true,
                                                                      child:
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                        BorderRadius.circular(5),
                                                                        child:
                                                                        CachedNetworkImage(
                                                                          imageUrl:
                                                                          valueOrDefault<String>(
                                                                            columnAnunciosDistritalRecord.img,
                                                                            'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg',
                                                                          ),
                                                                          width:
                                                                          100,
                                                                          height:
                                                                          100,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Column(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  columnAnunciosDistritalRecord.titulo,
                                                                                  'S/ Titulo',
                                                                                ).maybeHandleOverflow(
                                                                                  maxChars: 20,
                                                                                  replacement: '…',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Advent Sans',
                                                                                  color: Color(0xFFDBDBDB),
                                                                                  fontSize: 16,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                              child: Text(
                                                                                columnIndex.toString(),
                                                                                textAlign: TextAlign.end,
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Divider(
                                                                          height:
                                                                          10,
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Text(
                                                                                columnAnunciosDistritalRecord.descricao.maybeHandleOverflow(
                                                                                  maxChars: 40,
                                                                                  replacement: '…',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Advent Sans',
                                                                                  color: Colors.white,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontStyle: FontStyle.italic,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              dateTimeFormat('dd/MM/y', columnAnunciosDistritalRecord.data),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                fontFamily: 'Advent Sans',
                                                                                color: Colors.white,
                                                                                fontWeight: FontWeight.w600,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                              child: Text(
                                                                                dateTimeFormat('EEEE', columnAnunciosDistritalRecord.data),
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Advent Sans',
                                                                                  color: Colors.white,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                              child: Text(
                                                                                columnAnunciosDistritalRecord.horario,
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Advent Sans',
                                                                                  color: Colors.white,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              'Local: ',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                fontFamily: 'Advent Sans',
                                                                                color: Colors.white,
                                                                                fontWeight: FontWeight.w600,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              valueOrDefault<String>(
                                                                                columnAnunciosDistritalRecord.local,
                                                                                'S/ Local',
                                                                              ).maybeHandleOverflow(
                                                                                maxChars: 20,
                                                                                replacement: '…',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                fontFamily: 'Advent Sans',
                                                                                color: Color(0xFFDBDBDB),
                                                                                fontWeight: FontWeight.normal,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            }),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                    ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
