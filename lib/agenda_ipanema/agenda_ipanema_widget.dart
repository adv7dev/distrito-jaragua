import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class AgendaIpanemaWidget extends StatefulWidget {
  const AgendaIpanemaWidget({Key key}) : super(key: key);

  @override
  _AgendaIpanemaWidgetState createState() => _AgendaIpanemaWidgetState();
}

class _AgendaIpanemaWidgetState extends State<AgendaIpanemaWidget> {
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
            Icons.arrow_back_rounded,
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
                          child: StreamBuilder<List<AnunciosIpanemaRecord>>(
                            stream: queryAnunciosIpanemaRecord(
                              queryBuilder: (anunciosIpanemaRecord) =>
                                  anunciosIpanemaRecord
                                      .where('ativo', isEqualTo: true)
                                      .where('data',
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
                              List<AnunciosIpanemaRecord>
                              listViewAnunciosIpanemaRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                listViewAnunciosIpanemaRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewAnunciosIpanemaRecord =
                                  listViewAnunciosIpanemaRecordList[
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
                                                                listViewAnunciosIpanemaRecord
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
                                                              listViewAnunciosIpanemaRecord
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
                                                        listViewAnunciosIpanemaRecord
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
                                                            listViewAnunciosIpanemaRecord
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
                                                                  listViewAnunciosIpanemaRecord
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
                                                                  listViewAnunciosIpanemaRecord
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
                                                                  listViewAnunciosIpanemaRecord
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
                                                                  listViewAnunciosIpanemaRecord
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
                          child: StreamBuilder<List<IpanemaPregadoresRecord>>(
                            stream: queryIpanemaPregadoresRecord(
                              queryBuilder: (ipanemaPregadoresRecord) =>
                                  ipanemaPregadoresRecord
                                      .where('ativo', isEqualTo: true)
                                      .where('data',
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
                              List<IpanemaPregadoresRecord>
                              listViewIpanemaPregadoresRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                listViewIpanemaPregadoresRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewIpanemaPregadoresRecord =
                                  listViewIpanemaPregadoresRecordList[
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
                                                                listViewIpanemaPregadoresRecord
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
                                                              listViewIpanemaPregadoresRecord
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
                                                        listViewIpanemaPregadoresRecord
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
                                                            listViewIpanemaPregadoresRecord
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
                                                                  listViewIpanemaPregadoresRecord
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
                                                              Text(
                                                                'WhatsApp:  ',
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
                                                                      .w600,
                                                                  useGoogleFonts:
                                                                  false,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  listViewIpanemaPregadoresRecord
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
                                                                  listViewIpanemaPregadoresRecord
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
                          child: StreamBuilder<List<IpanemaSonoplastiaRecord>>(
                            stream: queryIpanemaSonoplastiaRecord(
                              queryBuilder: (ipanemaSonoplastiaRecord) =>
                                  ipanemaSonoplastiaRecord
                                      .where('ativo', isEqualTo: true)
                                      .where('data',
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
                              List<IpanemaSonoplastiaRecord>
                              listViewIpanemaSonoplastiaRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                listViewIpanemaSonoplastiaRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewIpanemaSonoplastiaRecord =
                                  listViewIpanemaSonoplastiaRecordList[
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
                                                                listViewIpanemaSonoplastiaRecord
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
                                                              listViewIpanemaSonoplastiaRecord
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
                                                        listViewIpanemaSonoplastiaRecord
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
                                                            listViewIpanemaSonoplastiaRecord
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
                                                                  listViewIpanemaSonoplastiaRecord
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
                                                                  'Sonoplasta responsável por esse dia.',
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
                          child: StreamBuilder<List<IpanemaMusicaRecord>>(
                            stream: queryIpanemaMusicaRecord(
                              queryBuilder: (ipanemaMusicaRecord) =>
                                  ipanemaMusicaRecord
                                      .where('ativo', isEqualTo: true)
                                      .where('data',
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
                              List<IpanemaMusicaRecord>
                              listViewIpanemaMusicaRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                listViewIpanemaMusicaRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewIpanemaMusicaRecord =
                                  listViewIpanemaMusicaRecordList[
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
                                                                listViewIpanemaMusicaRecord
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
                                                              listViewIpanemaMusicaRecord
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
                                                        listViewIpanemaMusicaRecord
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
                                                            listViewIpanemaMusicaRecord
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
                                                                  listViewIpanemaMusicaRecord
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
                                                              Text(
                                                                'WhatsApp:  ',
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
                                                                      .w600,
                                                                  useGoogleFonts:
                                                                  false,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  listViewIpanemaMusicaRecord
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
                                                                  listViewIpanemaMusicaRecord
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
