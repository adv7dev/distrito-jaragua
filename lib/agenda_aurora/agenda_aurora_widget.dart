import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class AgendaAuroraWidget extends StatefulWidget {
  const AgendaAuroraWidget({Key key}) : super(key: key);

  @override
  _AgendaAuroraWidgetState createState() => _AgendaAuroraWidgetState();
}

class _AgendaAuroraWidgetState extends State<AgendaAuroraWidget> {
  DateTimeRange calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

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
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'AGENDA',
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
                FlutterFlowCalendar(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  iconColor: FlutterFlowTheme.of(context).primaryText,
                  weekFormat: false,
                  weekStartsMonday: false,
                  locale: FFLocalizations.of(context).languageCode,
                  onChange: (DateTimeRange newSelectedDate) {
                    setState(() => calendarSelectedDay = newSelectedDate);
                  },
                  titleStyle: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  dayOfWeekStyle: TextStyle(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
                  dateStyle: TextStyle(
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  selectedDateStyle: TextStyle(
                    color: Colors.white,
                  ),
                  inactiveDateStyle: TextStyle(),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: StreamBuilder<List<AnunciosAuroraRecord>>(
                            stream: queryAnunciosAuroraRecord(
                              queryBuilder: (anunciosAuroraRecord) =>
                                  anunciosAuroraRecord.where('data',
                                      isEqualTo: calendarSelectedDay.start),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: SpinKitRing(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 50,
                                    ),
                                  ),
                                );
                              }
                              List<AnunciosAuroraRecord>
                              listViewAnunciosAuroraRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                listViewAnunciosAuroraRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewAnunciosAuroraRecord =
                                  listViewAnunciosAuroraRecordList[
                                  listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 5, 10),
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
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'ANÚNCIOS',
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .title3
                                                          .override(
                                                        fontFamily:
                                                        'Advent Sans',
                                                        color: Colors.white,
                                                        useGoogleFonts:
                                                        false,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  InkWell(
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
                                                            CachedNetworkImage(
                                                              imageUrl:
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewAnunciosAuroraRecord
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
                                                              listViewAnunciosAuroraRecord
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
                                                      tag: valueOrDefault<
                                                          String>(
                                                        listViewAnunciosAuroraRecord
                                                            .img,
                                                        'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg' +
                                                            '$listViewIndex',
                                                      ),
                                                      transitionOnUserGestures:
                                                      true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5),
                                                        child:
                                                        CachedNetworkImage(
                                                          imageUrl:
                                                          valueOrDefault<
                                                              String>(
                                                            listViewAnunciosAuroraRecord
                                                                .img,
                                                            'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg',
                                                          ),
                                                          width: 100,
                                                          height: 100,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAnunciosAuroraRecord
                                                                      .titulo,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                    FontWeight.bold,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAnunciosAuroraRecord
                                                                      .descricao
                                                                      .maybeHandleOverflow(
                                                                    maxChars:
                                                                    30,
                                                                    replacement:
                                                                    '…',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                    15,
                                                                    fontWeight:
                                                                    FontWeight.w300,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAnunciosAuroraRecord
                                                                      .local,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                    15,
                                                                    fontWeight:
                                                                    FontWeight.w300,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Text(
                                                                'Horário: ',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .subtitle1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Advent Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                  15,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                                  useGoogleFonts:
                                                                  false,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAnunciosAuroraRecord
                                                                      .horario,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                    15,
                                                                    fontWeight:
                                                                    FontWeight.w300,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
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
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: StreamBuilder<List<AuroraPregadoresRecord>>(
                            stream: queryAuroraPregadoresRecord(
                              queryBuilder: (auroraPregadoresRecord) =>
                                  auroraPregadoresRecord.where('data',
                                      isEqualTo: calendarSelectedDay.start),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: SpinKitRing(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 50,
                                    ),
                                  ),
                                );
                              }
                              List<AuroraPregadoresRecord>
                              listViewAuroraPregadoresRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                listViewAuroraPregadoresRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewAuroraPregadoresRecord =
                                  listViewAuroraPregadoresRecordList[
                                  listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 5, 10),
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
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'PREGADOR',
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .title3
                                                          .override(
                                                        fontFamily:
                                                        'Advent Sans',
                                                        color: Colors.white,
                                                        useGoogleFonts:
                                                        false,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  InkWell(
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
                                                            CachedNetworkImage(
                                                              imageUrl:
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewAuroraPregadoresRecord
                                                                    .img,
                                                                'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                              ),
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                            allowRotation:
                                                            false,
                                                            tag: valueOrDefault<
                                                                String>(
                                                              listViewAuroraPregadoresRecord
                                                                  .img,
                                                              'https://i.ibb.co/cC6RmGZ/businessman.png' +
                                                                  '$listViewIndex',
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
                                                        listViewAuroraPregadoresRecord
                                                            .img,
                                                        'https://i.ibb.co/cC6RmGZ/businessman.png' +
                                                            '$listViewIndex',
                                                      ),
                                                      transitionOnUserGestures:
                                                      true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(100),
                                                        child:
                                                        CachedNetworkImage(
                                                          imageUrl:
                                                          valueOrDefault<
                                                              String>(
                                                            listViewAuroraPregadoresRecord
                                                                .img,
                                                            'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                          ),
                                                          width: 100,
                                                          height: 100,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAuroraPregadoresRecord
                                                                      .nome,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                    FontWeight.bold,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    3,
                                                                    0,
                                                                    5,
                                                                    0),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .whatsapp,
                                                                  color: Color(
                                                                      0xFF1FDC21),
                                                                  size: 20,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAuroraPregadoresRecord
                                                                      .whatsapp,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                    15,
                                                                    fontWeight:
                                                                    FontWeight.w300,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAuroraPregadoresRecord
                                                                      .igreja,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                    15,
                                                                    fontWeight:
                                                                    FontWeight.w300,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
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
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: StreamBuilder<List<AuroraSonoplastiaRecord>>(
                            stream: queryAuroraSonoplastiaRecord(
                              queryBuilder: (auroraSonoplastiaRecord) =>
                                  auroraSonoplastiaRecord.where('data',
                                      isEqualTo: calendarSelectedDay.start),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: SpinKitRing(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 50,
                                    ),
                                  ),
                                );
                              }
                              List<AuroraSonoplastiaRecord>
                              listViewAuroraSonoplastiaRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                listViewAuroraSonoplastiaRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewAuroraSonoplastiaRecord =
                                  listViewAuroraSonoplastiaRecordList[
                                  listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 5, 10),
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
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'SONOPLASTA',
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .title3
                                                          .override(
                                                        fontFamily:
                                                        'Advent Sans',
                                                        color: Colors.white,
                                                        useGoogleFonts:
                                                        false,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  InkWell(
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
                                                            CachedNetworkImage(
                                                              imageUrl:
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewAuroraSonoplastiaRecord
                                                                    .img,
                                                                'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                              ),
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                            allowRotation:
                                                            false,
                                                            tag: valueOrDefault<
                                                                String>(
                                                              listViewAuroraSonoplastiaRecord
                                                                  .img,
                                                              'https://i.ibb.co/cC6RmGZ/businessman.png' +
                                                                  '$listViewIndex',
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
                                                        listViewAuroraSonoplastiaRecord
                                                            .img,
                                                        'https://i.ibb.co/cC6RmGZ/businessman.png' +
                                                            '$listViewIndex',
                                                      ),
                                                      transitionOnUserGestures:
                                                      true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(100),
                                                        child:
                                                        CachedNetworkImage(
                                                          imageUrl:
                                                          valueOrDefault<
                                                              String>(
                                                            listViewAuroraSonoplastiaRecord
                                                                .img,
                                                            'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                          ),
                                                          width: 100,
                                                          height: 100,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAuroraSonoplastiaRecord
                                                                      .nome,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                    FontWeight.bold,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Sonoplasta responsável por ficar no som!',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                    15,
                                                                    fontWeight:
                                                                    FontWeight.w300,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
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
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: StreamBuilder<List<AuroraMusicaRecord>>(
                            stream: queryAuroraMusicaRecord(
                              queryBuilder: (auroraMusicaRecord) =>
                                  auroraMusicaRecord.where('data',
                                      isEqualTo: calendarSelectedDay.start),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: SpinKitRing(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 50,
                                    ),
                                  ),
                                );
                              }
                              List<AuroraMusicaRecord>
                              listViewAuroraMusicaRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                listViewAuroraMusicaRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewAuroraMusicaRecord =
                                  listViewAuroraMusicaRecordList[
                                  listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 5, 10),
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
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'CANTOR',
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .title3
                                                          .override(
                                                        fontFamily:
                                                        'Advent Sans',
                                                        color: Colors.white,
                                                        useGoogleFonts:
                                                        false,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  InkWell(
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
                                                            CachedNetworkImage(
                                                              imageUrl:
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewAuroraMusicaRecord
                                                                    .img,
                                                                'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                              ),
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                            allowRotation:
                                                            false,
                                                            tag: valueOrDefault<
                                                                String>(
                                                              listViewAuroraMusicaRecord
                                                                  .img,
                                                              'https://i.ibb.co/cC6RmGZ/businessman.png' +
                                                                  '$listViewIndex',
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
                                                        listViewAuroraMusicaRecord
                                                            .img,
                                                        'https://i.ibb.co/cC6RmGZ/businessman.png' +
                                                            '$listViewIndex',
                                                      ),
                                                      transitionOnUserGestures:
                                                      true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(100),
                                                        child:
                                                        CachedNetworkImage(
                                                          imageUrl:
                                                          valueOrDefault<
                                                              String>(
                                                            listViewAuroraMusicaRecord
                                                                .img,
                                                            'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                          ),
                                                          width: 100,
                                                          height: 100,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAuroraMusicaRecord
                                                                      .nome,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                    FontWeight.bold,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    3,
                                                                    0,
                                                                    5,
                                                                    0),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .whatsapp,
                                                                  color: Color(
                                                                      0xFF1FDC21),
                                                                  size: 20,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAuroraMusicaRecord
                                                                      .whatsapp,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                    15,
                                                                    fontWeight:
                                                                    FontWeight.w300,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAuroraMusicaRecord
                                                                      .igreja,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                    15,
                                                                    fontWeight:
                                                                    FontWeight.w300,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
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
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: StreamBuilder<List<AuroraSabatinaRecord>>(
                            stream: queryAuroraSabatinaRecord(
                              queryBuilder: (auroraSabatinaRecord) =>
                                  auroraSabatinaRecord.where('data',
                                      isEqualTo: calendarSelectedDay.start),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: SpinKitRing(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 50,
                                    ),
                                  ),
                                );
                              }
                              List<AuroraSabatinaRecord>
                              listViewAuroraSabatinaRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                listViewAuroraSabatinaRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewAuroraSabatinaRecord =
                                  listViewAuroraSabatinaRecordList[
                                  listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 5, 10),
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
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'PROF. ESCOLA SABATINA',
                                                        textAlign:
                                                        TextAlign.center,
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .title3
                                                            .override(
                                                          fontFamily:
                                                          'Advent Sans',
                                                          color:
                                                          Colors.white,
                                                          useGoogleFonts:
                                                          false,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  InkWell(
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
                                                            CachedNetworkImage(
                                                              imageUrl:
                                                              'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                            allowRotation:
                                                            false,
                                                            tag: 'imageTag5',
                                                            useHeroAnimation:
                                                            true,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Hero(
                                                      tag: 'imageTag5',
                                                      transitionOnUserGestures:
                                                      true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(100),
                                                        child:
                                                        CachedNetworkImage(
                                                          imageUrl:
                                                          'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                          width: 100,
                                                          height: 100,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAuroraSabatinaRecord
                                                                      .nome,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                    FontWeight.bold,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Professor(a) responsável por passar a lição da escola sabatina.',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                    15,
                                                                    fontWeight:
                                                                    FontWeight.w300,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
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
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: StreamBuilder<List<AuroraLimpezaRecord>>(
                            stream: queryAuroraLimpezaRecord(
                              queryBuilder: (auroraLimpezaRecord) =>
                                  auroraLimpezaRecord.where('data',
                                      isEqualTo: calendarSelectedDay.start),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: SpinKitRing(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 50,
                                    ),
                                  ),
                                );
                              }
                              List<AuroraLimpezaRecord>
                              listViewAuroraLimpezaRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                listViewAuroraLimpezaRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewAuroraLimpezaRecord =
                                  listViewAuroraLimpezaRecordList[
                                  listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 5, 10),
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
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'LIMPEZA DA IGREJA',
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .title3
                                                          .override(
                                                        fontFamily:
                                                        'Advent Sans',
                                                        color: Colors.white,
                                                        useGoogleFonts:
                                                        false,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  InkWell(
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
                                                            CachedNetworkImage(
                                                              imageUrl:
                                                              'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                            allowRotation:
                                                            false,
                                                            tag: 'imageTag6',
                                                            useHeroAnimation:
                                                            true,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Hero(
                                                      tag: 'imageTag6',
                                                      transitionOnUserGestures:
                                                      true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(100),
                                                        child:
                                                        CachedNetworkImage(
                                                          imageUrl:
                                                          'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                          width: 100,
                                                          height: 100,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  listViewAuroraLimpezaRecord
                                                                      .nome,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                    FontWeight.bold,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Família resposánvel por limpar a igreja essa semana!',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Advent Sans',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                    15,
                                                                    fontWeight:
                                                                    FontWeight.w300,
                                                                    useGoogleFonts:
                                                                    false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
