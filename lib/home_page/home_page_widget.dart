import 'dart:async';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/detalhes_anuncios_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../view_all_anuncios_aurora/view_all_anuncios_aurora_widget.dart';
import '../view_all_anuncios_distrital/view_all_anuncios_distrital_widget.dart';
import '../view_all_anuncios_ipanema/view_all_anuncios_ipanema_widget.dart';
import '../view_all_anuncios_jaragua/view_all_anuncios_jaragua_widget.dart';
import '../view_all_anuncios_panamericano/view_all_anuncios_panamericano_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  PagingController<DocumentSnapshot, AnunciosDistritalRecord>
  _pagingController = PagingController(firstPageKey: null);
  List<StreamSubscription> _streamSubscriptions = [];

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1.1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'imageOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1.1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1.1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1.1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1.1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1.1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'iconOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1.1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((nextPageMarker) {
      queryAnunciosDistritalRecordPage(
        queryBuilder: (anunciosDistritalRecord) => anunciosDistritalRecord
            .where('ativo', isEqualTo: true)
            .orderBy('data'),
        nextPageMarker: nextPageMarker,
        pageSize: 10,
        isStream: false,
      ).then((page) {
        _pagingController.appendPage(
          page.data,
          page.nextPageMarker,
        );
        final streamSubscription = page.dataStream?.listen((data) {
          final itemIndexes = _pagingController.itemList
              .asMap()
              .map((k, v) => MapEntry(v.reference.id, k));
          data.forEach((item) {
            final index = itemIndexes[item.reference.id];
            if (index != null) {
              _pagingController.itemList.replaceRange(index, index + 1, [item]);
            }
          });
          setState(() {});
        });
        _streamSubscriptions.add(streamSubscription);
      });
    });

    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );
  }

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (!(Theme.of(context).brightness == Brightness.dark) ?? true)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                child: InkWell(
                  onTap: () async {
                    setDarkModeSetting(context, ThemeMode.dark);
                  },
                  child: FaIcon(
                    FontAwesomeIcons.solidMoon,
                    color: Colors.black,
                    size: 30,
                  ),
                ).animated([animationsMap['iconOnPageLoadAnimation']]),
              ),
            if (Theme.of(context).brightness == Brightness.dark ?? true)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                child: InkWell(
                  onTap: () async {
                    setDarkModeSetting(context, ThemeMode.light);
                  },
                  child: Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
          ],
        ),
        title: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Igreja Adventista do',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Advent Sans',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DISTRITO JARAGUÁ',
                    style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Advent Sans',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 20,
                      useGoogleFonts: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ).animated([animationsMap['columnOnPageLoadAnimation']]),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 5),
            child: AuthUserStreamWidget(
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: Duration(milliseconds: 300),
                      reverseDuration: Duration(milliseconds: 300),
                      child: NavBarPage(initialPage: 'ProfilePage'),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedNetworkImage(
                    imageUrl: valueOrDefault<String>(
                      currentUserPhoto,
                      'https://avatars.githubusercontent.com/u/73316748?v=4',
                    ),
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ).animated([animationsMap['imageOnPageLoadAnimation']]),
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(3, 10, 5, 5),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 400),
                            reverseDuration: Duration(milliseconds: 400),
                            child: ViewAllAnunciosDistritalWidget(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Anuncios Distrital',
                            style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Advent Sans',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Icon(
                              Icons.chevron_right,
                              color:
                              FlutterFlowTheme.of(context).secondaryColor,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ).animated([animationsMap['rowOnPageLoadAnimation1']]),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: 270,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: PagedListView<DocumentSnapshot<Object>,
                                AnunciosDistritalRecord>(
                              pagingController: _pagingController,
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              builderDelegate: PagedChildBuilderDelegate<
                                  AnunciosDistritalRecord>(
                                // Customize what your widget looks like when it's loading the first page.
                                firstPageProgressIndicatorBuilder: (_) =>
                                    Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitRing(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 50,
                                        ),
                                      ),
                                    ),

                                itemBuilder: (context, _, listViewIndex) {
                                  final listViewAnunciosDistritalRecord =
                                  _pagingController.itemList[listViewIndex];
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              5, 5, 5, 5),
                                          child: Container(
                                            width: 200,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .customColor1,
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            child: InkWell(
                                              onTap: () async {
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
                                                    );
                                                  },
                                                );
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        5, 7, 5, 3),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(10),
                                                          child:
                                                          CachedNetworkImage(
                                                            imageUrl:
                                                            valueOrDefault<
                                                                String>(
                                                              listViewAnunciosDistritalRecord
                                                                  .img,
                                                              'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg',
                                                            ),
                                                            width: 190,
                                                            height: 150,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ).animated([
                                                          animationsMap[
                                                          'imageOnActionTriggerAnimation']
                                                        ]),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 0, 5, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: AutoSizeText(
                                                              listViewAnunciosDistritalRecord
                                                                  .titulo
                                                                  .maybeHandleOverflow(
                                                                maxChars: 25,
                                                                replacement:
                                                                '…',
                                                              ),
                                                              textAlign:
                                                              TextAlign
                                                                  .center,
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Advent Sans',
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600,
                                                                useGoogleFonts:
                                                                false,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SingleChildScrollView(
                                                    scrollDirection:
                                                    Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      children: [
                                                        Text(
                                                          dateTimeFormat(
                                                              'dd/MM/y',
                                                              listViewAnunciosDistritalRecord
                                                                  .data),
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyText1
                                                              .override(
                                                            fontFamily:
                                                            'Advent Sans',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .primaryText,
                                                            fontWeight:
                                                            FontWeight
                                                                .normal,
                                                            useGoogleFonts:
                                                            false,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        10, 0, 10, 10),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            listViewAnunciosDistritalRecord
                                                                .local
                                                                .maybeHandleOverflow(
                                                              maxChars: 10,
                                                              replacement: '…',
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyText1
                                                                .override(
                                                              fontFamily:
                                                              'Advent Sans',
                                                              color: FlutterFlowTheme.of(
                                                                  context)
                                                                  .primaryText,
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
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: ViewAllAnunciosJaraguaWidget(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Jaraguá Anuncios',
                            style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Advent Sans',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Icon(
                              Icons.chevron_right,
                              color:
                              FlutterFlowTheme.of(context).secondaryColor,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ).animated([animationsMap['rowOnPageLoadAnimation2']]),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: 270,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: StreamBuilder<List<AnunciosJaraguaRecord>>(
                              stream: queryAnunciosJaraguaRecord(
                                queryBuilder: (anunciosJaraguaRecord) =>
                                    anunciosJaraguaRecord
                                        .where('ativo', isEqualTo: true)
                                        .orderBy('data'),
                                limit: 15,
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
                                List<AnunciosJaraguaRecord>
                                listViewAnunciosJaraguaRecordList =
                                    snapshot.data;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                  listViewAnunciosJaraguaRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewAnunciosJaraguaRecord =
                                    listViewAnunciosJaraguaRecordList[
                                    listViewIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                5, 5, 5, 5),
                                            child: Container(
                                              width: 150,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .customColor1,
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                              child: InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                    Colors.transparent,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                            context)
                                                            .viewInsets,
                                                        child:
                                                        DetalhesAnunciosWidget(
                                                          titulo:
                                                          listViewAnunciosJaraguaRecord
                                                              .titulo,
                                                          descricao:
                                                          listViewAnunciosJaraguaRecord
                                                              .descricao,
                                                          data:
                                                          listViewAnunciosJaraguaRecord
                                                              .data,
                                                          horario:
                                                          listViewAnunciosJaraguaRecord
                                                              .horario,
                                                          img:
                                                          listViewAnunciosJaraguaRecord
                                                              .img,
                                                          local:
                                                          listViewAnunciosJaraguaRecord
                                                              .local,
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 7, 5, 3),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            child:
                                                            CachedNetworkImage(
                                                              imageUrl:
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewAnunciosJaraguaRecord
                                                                    .img,
                                                                'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg',
                                                              ),
                                                              width: 140,
                                                              height: 140,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 5, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                              AutoSizeText(
                                                                listViewAnunciosJaraguaRecord
                                                                    .titulo
                                                                    .maybeHandleOverflow(
                                                                  maxChars: 25,
                                                                  replacement:
                                                                  '…',
                                                                ),
                                                                textAlign:
                                                                TextAlign
                                                                    .center,
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Advent Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                                  useGoogleFonts:
                                                                  false,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Text(
                                                            dateTimeFormat(
                                                                'dd/MM/y',
                                                                listViewAnunciosJaraguaRecord
                                                                    .data),
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyText1
                                                                .override(
                                                              fontFamily:
                                                              'Advent Sans',
                                                              color: FlutterFlowTheme.of(
                                                                  context)
                                                                  .primaryText,
                                                              fontWeight:
                                                              FontWeight
                                                                  .normal,
                                                              useGoogleFonts:
                                                              false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(10, 0,
                                                          10, 10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              listViewAnunciosJaraguaRecord
                                                                  .local
                                                                  .maybeHandleOverflow(
                                                                maxChars: 10,
                                                                replacement:
                                                                '…',
                                                              ),
                                                              textAlign:
                                                              TextAlign
                                                                  .center,
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Advent Sans',
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .primaryText,
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
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: ViewAllAnunciosIpanemaWidget(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Jard. Ipanema Anuncios',
                            style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Advent Sans',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Icon(
                              Icons.chevron_right,
                              color:
                              FlutterFlowTheme.of(context).secondaryColor,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ).animated([animationsMap['rowOnPageLoadAnimation3']]),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: 270,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: StreamBuilder<List<AnunciosIpanemaRecord>>(
                              stream: queryAnunciosIpanemaRecord(
                                queryBuilder: (anunciosIpanemaRecord) =>
                                    anunciosIpanemaRecord
                                        .where('ativo', isEqualTo: true)
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
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                  listViewAnunciosIpanemaRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewAnunciosIpanemaRecord =
                                    listViewAnunciosIpanemaRecordList[
                                    listViewIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                5, 5, 5, 5),
                                            child: Container(
                                              width: 150,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .customColor1,
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                              child: InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                    Colors.transparent,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                            context)
                                                            .viewInsets,
                                                        child:
                                                        DetalhesAnunciosWidget(
                                                          titulo:
                                                          listViewAnunciosIpanemaRecord
                                                              .titulo,
                                                          descricao:
                                                          listViewAnunciosIpanemaRecord
                                                              .descricao,
                                                          data:
                                                          listViewAnunciosIpanemaRecord
                                                              .data,
                                                          horario:
                                                          listViewAnunciosIpanemaRecord
                                                              .horario,
                                                          img:
                                                          listViewAnunciosIpanemaRecord
                                                              .img,
                                                          local:
                                                          listViewAnunciosIpanemaRecord
                                                              .local,
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 7, 5, 3),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            child:
                                                            CachedNetworkImage(
                                                              imageUrl:
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewAnunciosIpanemaRecord
                                                                    .img,
                                                                'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg',
                                                              ),
                                                              width: 140,
                                                              height: 140,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 5, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                              AutoSizeText(
                                                                listViewAnunciosIpanemaRecord
                                                                    .titulo
                                                                    .maybeHandleOverflow(
                                                                  maxChars: 25,
                                                                  replacement:
                                                                  '…',
                                                                ),
                                                                textAlign:
                                                                TextAlign
                                                                    .center,
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Advent Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                                  useGoogleFonts:
                                                                  false,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Text(
                                                            dateTimeFormat(
                                                                'dd/MM/y',
                                                                listViewAnunciosIpanemaRecord
                                                                    .data),
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyText1
                                                                .override(
                                                              fontFamily:
                                                              'Advent Sans',
                                                              color: FlutterFlowTheme.of(
                                                                  context)
                                                                  .primaryText,
                                                              fontWeight:
                                                              FontWeight
                                                                  .normal,
                                                              useGoogleFonts:
                                                              false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(10, 0,
                                                          10, 10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              listViewAnunciosIpanemaRecord
                                                                  .local
                                                                  .maybeHandleOverflow(
                                                                maxChars: 10,
                                                                replacement:
                                                                '…',
                                                              ),
                                                              textAlign:
                                                              TextAlign
                                                                  .center,
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Advent Sans',
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .primaryText,
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
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: ViewAllAnunciosPanamericanoWidget(),
                          ),
                        );
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Jard. Panamericano Anuncios',
                              style:
                              FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Advent Sans',
                                color: FlutterFlowTheme.of(context)
                                    .secondaryText,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: false,
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Icon(
                                Icons.chevron_right,
                                color:
                                FlutterFlowTheme.of(context).secondaryColor,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: 270,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child:
                            StreamBuilder<List<AnunciosPanamericanoRecord>>(
                              stream: queryAnunciosPanamericanoRecord(
                                queryBuilder: (anunciosPanamericanoRecord) =>
                                    anunciosPanamericanoRecord
                                        .where('ativo', isEqualTo: true)
                                        .orderBy('data'),
                                limit: 15,
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
                                List<AnunciosPanamericanoRecord>
                                listViewAnunciosPanamericanoRecordList =
                                    snapshot.data;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                  listViewAnunciosPanamericanoRecordList
                                      .length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewAnunciosPanamericanoRecord =
                                    listViewAnunciosPanamericanoRecordList[
                                    listViewIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                5, 5, 5, 5),
                                            child: Container(
                                              width: 150,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .customColor1,
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                              child: InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                    Colors.transparent,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                            context)
                                                            .viewInsets,
                                                        child:
                                                        DetalhesAnunciosWidget(
                                                          titulo:
                                                          listViewAnunciosPanamericanoRecord
                                                              .titulo,
                                                          descricao:
                                                          listViewAnunciosPanamericanoRecord
                                                              .descricao,
                                                          data:
                                                          listViewAnunciosPanamericanoRecord
                                                              .data,
                                                          horario:
                                                          listViewAnunciosPanamericanoRecord
                                                              .horario,
                                                          img:
                                                          listViewAnunciosPanamericanoRecord
                                                              .img,
                                                          local:
                                                          listViewAnunciosPanamericanoRecord
                                                              .local,
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 7, 5, 3),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            child:
                                                            CachedNetworkImage(
                                                              imageUrl:
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewAnunciosPanamericanoRecord
                                                                    .img,
                                                                'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg',
                                                              ),
                                                              width: 140,
                                                              height: 140,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 5, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                              AutoSizeText(
                                                                listViewAnunciosPanamericanoRecord
                                                                    .titulo
                                                                    .maybeHandleOverflow(
                                                                  maxChars: 25,
                                                                  replacement:
                                                                  '…',
                                                                ),
                                                                textAlign:
                                                                TextAlign
                                                                    .center,
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Advent Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                                  useGoogleFonts:
                                                                  false,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Text(
                                                            dateTimeFormat(
                                                                'dd/MM/y',
                                                                listViewAnunciosPanamericanoRecord
                                                                    .data),
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyText1
                                                                .override(
                                                              fontFamily:
                                                              'Advent Sans',
                                                              color: FlutterFlowTheme.of(
                                                                  context)
                                                                  .primaryText,
                                                              fontWeight:
                                                              FontWeight
                                                                  .normal,
                                                              useGoogleFonts:
                                                              false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(10, 0,
                                                          10, 10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              listViewAnunciosPanamericanoRecord
                                                                  .local
                                                                  .maybeHandleOverflow(
                                                                maxChars: 10,
                                                                replacement:
                                                                '…',
                                                              ),
                                                              textAlign:
                                                              TextAlign
                                                                  .center,
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Advent Sans',
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .primaryText,
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
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: ViewAllAnunciosAuroraWidget(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Vila Aurora Anuncios',
                            style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Advent Sans',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Icon(
                              Icons.chevron_right,
                              color:
                              FlutterFlowTheme.of(context).secondaryColor,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: 270,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: StreamBuilder<List<AnunciosAuroraRecord>>(
                              stream: queryAnunciosAuroraRecord(
                                queryBuilder: (anunciosAuroraRecord) =>
                                    anunciosAuroraRecord
                                        .where('ativo', isEqualTo: true)
                                        .orderBy('data'),
                                limit: 15,
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
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                  listViewAnunciosAuroraRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewAnunciosAuroraRecord =
                                    listViewAnunciosAuroraRecordList[
                                    listViewIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                5, 5, 5, 5),
                                            child: Container(
                                              width: 150,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .customColor1,
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                              child: InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                    Colors.transparent,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                            context)
                                                            .viewInsets,
                                                        child:
                                                        DetalhesAnunciosWidget(
                                                          titulo:
                                                          listViewAnunciosAuroraRecord
                                                              .titulo,
                                                          descricao:
                                                          listViewAnunciosAuroraRecord
                                                              .descricao,
                                                          data:
                                                          listViewAnunciosAuroraRecord
                                                              .data,
                                                          horario:
                                                          listViewAnunciosAuroraRecord
                                                              .horario,
                                                          img:
                                                          listViewAnunciosAuroraRecord
                                                              .img,
                                                          local:
                                                          listViewAnunciosAuroraRecord
                                                              .local,
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 7, 5, 3),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            child:
                                                            CachedNetworkImage(
                                                              imageUrl:
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewAnunciosAuroraRecord
                                                                    .img,
                                                                'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg',
                                                              ),
                                                              width: 140,
                                                              height: 140,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 5, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                              AutoSizeText(
                                                                listViewAnunciosAuroraRecord
                                                                    .titulo
                                                                    .maybeHandleOverflow(
                                                                  maxChars: 25,
                                                                  replacement:
                                                                  '…',
                                                                ),
                                                                textAlign:
                                                                TextAlign
                                                                    .center,
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Advent Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                                  useGoogleFonts:
                                                                  false,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Text(
                                                            dateTimeFormat(
                                                                'dd/MM/y',
                                                                listViewAnunciosAuroraRecord
                                                                    .data),
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyText1
                                                                .override(
                                                              fontFamily:
                                                              'Advent Sans',
                                                              color: FlutterFlowTheme.of(
                                                                  context)
                                                                  .primaryText,
                                                              fontWeight:
                                                              FontWeight
                                                                  .normal,
                                                              useGoogleFonts:
                                                              false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(10, 0,
                                                          10, 10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              listViewAnunciosAuroraRecord
                                                                  .local
                                                                  .maybeHandleOverflow(
                                                                maxChars: 10,
                                                                replacement:
                                                                '…',
                                                              ),
                                                              textAlign:
                                                              TextAlign
                                                                  .center,
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Advent Sans',
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .primaryText,
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
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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
                    children: [],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
