import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/add_escola_s_aurora_widget.dart';
import '../components/delete_escola_s_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class EscEscolaSAuroraWidget extends StatefulWidget {
  const EscEscolaSAuroraWidget({Key key}) : super(key: key);

  @override
  _EscEscolaSAuroraWidgetState createState() => _EscEscolaSAuroraWidgetState();
}

class _EscEscolaSAuroraWidgetState extends State<EscEscolaSAuroraWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
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
          'ESCOLA SABATINA',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Advent Sans',
            color: Colors.white,
            fontSize: 20,
            useGoogleFonts: false,
          ),
        ),
        actions: [
          Visibility(
            visible: (currentUserDocument?.admAurora) == true,
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
                            child: AddEscolaSAuroraWidget(),
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
                TextFormField(
                  controller: textController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController',
                    Duration(milliseconds: 500),
                        () => setState(() {}),
                  ),
                  onFieldSubmitted: (_) async {
                    await Future.delayed(const Duration(milliseconds: 500));
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Buscar por nomes',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20,
                    ),
                    suffixIcon: textController.text.isNotEmpty
                        ? InkWell(
                      onTap: () => setState(
                            () => textController.clear(),
                      ),
                      child: Icon(
                        Icons.clear,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 22,
                      ),
                    )
                        : null,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Advent Sans',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    useGoogleFonts: false,
                  ),
                  textAlign: TextAlign.start,
                ),
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
                      child: StreamBuilder<List<AuroraSabatinaRecord>>(
                        stream: queryAuroraSabatinaRecord(
                          queryBuilder: (auroraSabatinaRecord) =>
                              auroraSabatinaRecord
                                  .where('ativo', isEqualTo: true)
                                  .where('nome',
                                  isEqualTo: textController.text != ''
                                      ? textController.text
                                      : null)
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
                                  FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<AuroraSabatinaRecord>
                          listViewAuroraSabatinaRecordList = snapshot.data;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewAuroraSabatinaRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewAuroraSabatinaRecord =
                              listViewAuroraSabatinaRecordList[
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
                                                    onLongPress: () async {
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
                                                            padding:
                                                            MediaQuery.of(
                                                                context)
                                                                .viewInsets,
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .height *
                                                                  0.5,
                                                              child:
                                                              DeleteEscolaSWidget(
                                                                auroraEscolaS:
                                                                listViewAuroraSabatinaRecord
                                                                    .reference,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
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
                                                                    image: Image
                                                                        .asset(
                                                                      'assets/images/unnamed.jpg',
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                    allowRotation:
                                                                    false,
                                                                    tag:
                                                                    'imageTag1',
                                                                    useHeroAnimation:
                                                                    true,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Hero(
                                                              tag: 'imageTag1',
                                                              transitionOnUserGestures:
                                                              true,
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    100),
                                                                child:
                                                                Image.asset(
                                                                  'assets/images/unnamed.jpg',
                                                                  width: 70,
                                                                  height: 70,
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
                                                                0,
                                                                0,
                                                                0),
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
                                                                          listViewAuroraSabatinaRecord
                                                                              .nome,
                                                                          'S/ Nome',
                                                                        ).maybeHandleOverflow(
                                                                          maxChars:
                                                                          20,
                                                                          replacement:
                                                                          '???',
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
                                                                    Text(
                                                                      'DATA: ',
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
                                                                        dateTimeFormat(
                                                                            'dd/MM/y',
                                                                            listViewAuroraSabatinaRecord.data),
                                                                        'S/ Data',
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
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          dateTimeFormat(
                                                                              'EEEE',
                                                                              listViewAuroraSabatinaRecord.data),
                                                                          'S/ Dia',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily: 'Advent Sans',
                                                                          color: Color(0xFFF9F9F9),
                                                                          fontWeight: FontWeight.w500,
                                                                          useGoogleFonts: false,
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
                                    '  Hist??rico',
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
                                        '  Ver hist??rico de Pregadores',
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
                                        List<AuroraSabatinaRecord>>(
                                      stream: queryAuroraSabatinaRecord(
                                        queryBuilder: (auroraSabatinaRecord) =>
                                            auroraSabatinaRecord
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
                                        List<AuroraSabatinaRecord>
                                        columnAuroraSabatinaRecordList =
                                            snapshot.data;
                                        return SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                columnAuroraSabatinaRecordList
                                                    .length, (columnIndex) {
                                              final columnAuroraSabatinaRecord =
                                              columnAuroraSabatinaRecordList[
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
                                                                FlutterFlowTheme.of(
                                                                    context)
                                                                    .primaryBackground,
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
                                                                          0.5,
                                                                      child:
                                                                      DeleteEscolaSWidget(
                                                                        auroraEscolaS:
                                                                        columnAuroraSabatinaRecord.reference,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
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
                                                                            Image.asset(
                                                                              'assets/images/channels4_profile-removebg-preview.png',
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                            allowRotation:
                                                                            false,
                                                                            tag:
                                                                            'imageTag2',
                                                                            useHeroAnimation:
                                                                            true,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                    child: Hero(
                                                                      tag:
                                                                      'imageTag2',
                                                                      transitionOnUserGestures:
                                                                      true,
                                                                      child:
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                        BorderRadius.circular(100),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/channels4_profile-removebg-preview.png',
                                                                          width:
                                                                          70,
                                                                          height:
                                                                          70,
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
                                                                                  columnAuroraSabatinaRecord.nome,
                                                                                  'S/ Nome',
                                                                                ).maybeHandleOverflow(
                                                                                  maxChars: 20,
                                                                                  replacement: '???',
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
                                                                            Text(
                                                                              'DATA: ',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                fontFamily: 'Advent Sans',
                                                                                color: Colors.white,
                                                                                fontWeight: FontWeight.w600,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              valueOrDefault<String>(
                                                                                dateTimeFormat('dd/MM/y', columnAuroraSabatinaRecord.data),
                                                                                'S/ Data',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                fontFamily: 'Advent Sans',
                                                                                color: Color(0xFFDBDBDB),
                                                                                fontWeight: FontWeight.normal,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  dateTimeFormat('EEEE', columnAuroraSabatinaRecord.data),
                                                                                  'S/ Dia',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Advent Sans',
                                                                                  color: Color(0xFFF9F9F9),
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: false,
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
