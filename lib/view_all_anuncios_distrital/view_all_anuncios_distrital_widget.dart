import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/add_anuncios_widget.dart';
import '../components/delete_anuncios_distrital_widget.dart';
import '../components/detalhes_anuncios_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
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
          buttonSize: 60,
          icon: Icon(
            Icons.chevron_left_sharp,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Anuncios Distrital',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Advent Sans',
            color: Colors.white,
            fontSize: 22,
            useGoogleFonts: false,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Ativos:',
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Advent Sans',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                          ),
                          if (currentUserDocument?.admGeral ?? true)
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: AuthUserStreamWidget(
                                child: InkWell(
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                          MediaQuery.of(context).viewInsets,
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height *
                                                0.7,
                                            child: AddAnunciosWidget(),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.add_circle,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                      child: StreamBuilder<List<AnunciosDistritalRecord>>(
                        stream: queryAnunciosDistritalRecord(
                          queryBuilder: (anunciosDistritalRecord) =>
                              anunciosDistritalRecord.where('ativo',
                                  isEqualTo: true),
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
                          columnAnunciosDistritalRecordList = snapshot.data;
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                columnAnunciosDistritalRecordList.length,
                                    (columnIndex) {
                                  final columnAnunciosDistritalRecord =
                                  columnAnunciosDistritalRecordList[
                                  columnIndex];
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Card(
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding:
                                                        MediaQuery.of(context)
                                                            .viewInsets,
                                                        child: Container(
                                                          height:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.7,
                                                          child:
                                                          DetalhesAnunciosWidget(
                                                            titulo:
                                                            columnAnunciosDistritalRecord
                                                                .titulo,
                                                            descricao:
                                                            columnAnunciosDistritalRecord
                                                                .descricao,
                                                            data:
                                                            columnAnunciosDistritalRecord
                                                                .data,
                                                            horario:
                                                            columnAnunciosDistritalRecord
                                                                .horario,
                                                            img:
                                                            columnAnunciosDistritalRecord
                                                                .img,
                                                            local:
                                                            columnAnunciosDistritalRecord
                                                                .local,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                onLongPress: () async {
                                                  if ((currentUserDocument
                                                      ?.admGeral) ==
                                                      true) {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                      Colors.transparent,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                          MediaQuery.of(context)
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
                                                              columnAnunciosDistritalRecord
                                                                  .reference,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  }
                                                },
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsetsDirectional
                                                          .fromSTEB(5, 5, 5, 5),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            PageTransition(
                                                              type:
                                                              PageTransitionType
                                                                  .fade,
                                                              child:
                                                              FlutterFlowExpandedImageView(
                                                                image:
                                                                Image.network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    columnAnunciosDistritalRecord
                                                                        .img,
                                                                    'https://cdn-icons-png.flaticon.com/512/4064/4064205.png',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                                allowRotation:
                                                                false,
                                                                tag: valueOrDefault<
                                                                    String>(
                                                                  columnAnunciosDistritalRecord
                                                                      .img,
                                                                  'https://cdn-icons-png.flaticon.com/512/4064/4064205.png' +
                                                                      '$columnIndex',
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
                                                            'https://cdn-icons-png.flaticon.com/512/4064/4064205.png' +
                                                                '$columnIndex',
                                                          ),
                                                          transitionOnUserGestures:
                                                          true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                            child: Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnAnunciosDistritalRecord
                                                                    .img,
                                                                'https://cdn-icons-png.flaticon.com/512/4064/4064205.png',
                                                              ),
                                                              width: 100,
                                                              height: 100,
                                                              fit: BoxFit.cover,
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
                                                            5, 15, 0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize.max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                  AutoSizeText(
                                                                    columnAnunciosDistritalRecord
                                                                        .titulo
                                                                        .maybeHandleOverflow(
                                                                        maxChars:
                                                                        30),
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                      'Advent Sans',
                                                                      color: Colors
                                                                          .white,
                                                                      useGoogleFonts:
                                                                      false,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Divider(
                                                              height: 10,
                                                              color:
                                                              Color(0xFFD4D4D4),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                  0, 0, 5),
                                                              child: Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        columnAnunciosDistritalRecord
                                                                            .descricao,
                                                                        'Sem Descrição',
                                                                      ).maybeHandleOverflow(
                                                                          maxChars:
                                                                          50),
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                        'Advent Sans',
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                        fontStyle:
                                                                        FontStyle.italic,
                                                                        useGoogleFonts:
                                                                        false,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize.max,
                                                              children: [
                                                                Text(
                                                                  'DATA: ',
                                                                  style: FlutterFlowTheme
                                                                      .of(context)
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: Colors
                                                                        .white,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    dateTimeFormat(
                                                                        'd/M/y',
                                                                        columnAnunciosDistritalRecord
                                                                            .data),
                                                                    'S/ Data',
                                                                  ),
                                                                  style: FlutterFlowTheme
                                                                      .of(context)
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: Color(
                                                                        0xFFDBDBDB),
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      10,
                                                                      0,
                                                                      0,
                                                                      0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      dateTimeFormat(
                                                                          'Hm',
                                                                          columnAnunciosDistritalRecord
                                                                              .data),
                                                                      'Sem Horário',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                      'Advent Sans',
                                                                      color: Color(
                                                                          0xFFF9F9F9),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                      useGoogleFonts:
                                                                      false,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize.max,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Text(
                                                                  'LOCAL: ',
                                                                  style: FlutterFlowTheme
                                                                      .of(context)
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: Colors
                                                                        .white,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                  AutoSizeText(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnAnunciosDistritalRecord
                                                                          .local,
                                                                      'S/ Igreja',
                                                                    ).maybeHandleOverflow(
                                                                      maxChars: 20,
                                                                      replacement:
                                                                      '…',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                      'Advent Sans',
                                                                      color: Color(
                                                                          0xFFDBDBDB),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                      useGoogleFonts:
                                                                      false,
                                                                    ),
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
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Histórico:',
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Advent Sans',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                  child: StreamBuilder<List<AnunciosDistritalRecord>>(
                    stream: queryAnunciosDistritalRecord(
                      queryBuilder: (anunciosDistritalRecord) =>
                          anunciosDistritalRecord.where('ativo',
                              isEqualTo: false),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitRing(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      List<AnunciosDistritalRecord>
                      columnAnunciosDistritalRecordList = snapshot.data;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            columnAnunciosDistritalRecordList.length,
                                (columnIndex) {
                              final columnAnunciosDistritalRecord =
                              columnAnunciosDistritalRecordList[columnIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context).alternate,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 5, 5, 5),
                                                child: InkWell(
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type:
                                                        PageTransitionType.fade,
                                                        child:
                                                        FlutterFlowExpandedImageView(
                                                          image: Image.network(
                                                            valueOrDefault<String>(
                                                              columnAnunciosDistritalRecord
                                                                  .img,
                                                              'https://cdn-icons-png.flaticon.com/512/4064/4064205.png',
                                                            ),
                                                            fit: BoxFit.contain,
                                                          ),
                                                          allowRotation: false,
                                                          tag: valueOrDefault<
                                                              String>(
                                                            columnAnunciosDistritalRecord
                                                                .img,
                                                            'https://cdn-icons-png.flaticon.com/512/4064/4064205.png' +
                                                                '$columnIndex',
                                                          ),
                                                          useHeroAnimation: true,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Hero(
                                                    tag: valueOrDefault<String>(
                                                      columnAnunciosDistritalRecord
                                                          .img,
                                                      'https://cdn-icons-png.flaticon.com/512/4064/4064205.png' +
                                                          '$columnIndex',
                                                    ),
                                                    transitionOnUserGestures: true,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                      BorderRadius.circular(10),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          columnAnunciosDistritalRecord
                                                              .img,
                                                          'https://cdn-icons-png.flaticon.com/512/4064/4064205.png',
                                                        ),
                                                        width: 100,
                                                        height: 100,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 0, 0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: AutoSizeText(
                                                              columnAnunciosDistritalRecord
                                                                  .titulo
                                                                  .maybeHandleOverflow(
                                                                  maxChars: 30),
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Advent Sans',
                                                                color: Colors
                                                                    .white,
                                                                useGoogleFonts:
                                                                false,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        height: 10,
                                                        color: Color(0xFFD4D4D4),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            0, 0, 0, 5),
                                                        child: Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnAnunciosDistritalRecord
                                                                      .descricao,
                                                                  'Sem Descrição',
                                                                ).maybeHandleOverflow(
                                                                    maxChars: 40),
                                                                style: FlutterFlowTheme
                                                                    .of(context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Advent Sans',
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                                  fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                                  useGoogleFonts:
                                                                  false,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'DATA: ',
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyText1
                                                                .override(
                                                              fontFamily:
                                                              'Advent Sans',
                                                              color:
                                                              Colors.white,
                                                              useGoogleFonts:
                                                              false,
                                                            ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<String>(
                                                              dateTimeFormat(
                                                                  'd/M/y',
                                                                  columnAnunciosDistritalRecord
                                                                      .data),
                                                              'S/ Data',
                                                            ),
                                                            style:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .bodyText1
                                                                .override(
                                                              fontFamily:
                                                              'Advent Sans',
                                                              color: Color(
                                                                  0xFFDBDBDB),
                                                              fontWeight:
                                                              FontWeight
                                                                  .normal,
                                                              useGoogleFonts:
                                                              false,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                0, 0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                dateTimeFormat(
                                                                    'Hm',
                                                                    columnAnunciosDistritalRecord
                                                                        .data),
                                                                'Sem Horário',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Advent Sans',
                                                                color: Color(
                                                                    0xFFF9F9F9),
                                                                fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                                useGoogleFonts:
                                                                false,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Text(
                                                            'LOCAL: ',
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyText1
                                                                .override(
                                                              fontFamily:
                                                              'Advent Sans',
                                                              color:
                                                              Colors.white,
                                                              useGoogleFonts:
                                                              false,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnAnunciosDistritalRecord
                                                                    .local,
                                                                'S/ Igreja',
                                                              ).maybeHandleOverflow(
                                                                maxChars: 20,
                                                                replacement: '…',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Advent Sans',
                                                                color: Color(
                                                                    0xFFDBDBDB),
                                                                fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                                useGoogleFonts:
                                                                false,
                                                              ),
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
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      );
                    },
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
