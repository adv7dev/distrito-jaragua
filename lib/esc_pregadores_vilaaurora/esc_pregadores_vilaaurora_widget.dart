import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/add_pregadores_aurora_widget.dart';
import '../components/delete_pregadores_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class EscPregadoresVilaauroraWidget extends StatefulWidget {
  const EscPregadoresVilaauroraWidget({Key key}) : super(key: key);

  @override
  _EscPregadoresVilaauroraWidgetState createState() =>
      _EscPregadoresVilaauroraWidgetState();
}

class _EscPregadoresVilaauroraWidgetState
    extends State<EscPregadoresVilaauroraWidget> {
  String dropDownValue;
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
          ' PREGADORES',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Advent Sans',
            color: Colors.white,
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
                          child: AddPregadoresAuroraWidget(),
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
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: TextFormField(
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
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      filled: true,
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
                          color:
                          FlutterFlowTheme.of(context).secondaryText,
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
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: FlutterFlowDropDown(
                    options: [
                      'Camilla D.',
                      'Henrique M.',
                      'Natalino B.',
                      'RESERVADO!'
                    ].toList(),
                    onChanged: (val) => setState(() => dropDownValue = val),
                    width: double.infinity,
                    height: 50,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Advent Sans',
                      color: FlutterFlowTheme.of(context).primaryText,
                      useGoogleFonts: false,
                    ),
                    hintText: 'FILTRAR POR DIRETOR RESPONSÁVEL',
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    elevation: 2,
                    borderColor: Colors.transparent,
                    borderWidth: 0,
                    borderRadius: 0,
                    margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  ),
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
                      child: StreamBuilder<List<AuroraPregadoresRecord>>(
                        stream: queryAuroraPregadoresRecord(
                          queryBuilder: (auroraPregadoresRecord) =>
                              auroraPregadoresRecord
                                  .where('ativo', isEqualTo: true)
                                  .where('nome',
                                  isEqualTo: textController.text != ''
                                      ? textController.text
                                      : null)
                                  .where('anciao',
                                  isEqualTo: dropDownValue != ''
                                      ? dropDownValue
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
                                                              DeletePregadoresWidget(
                                                                auroraPregadores:
                                                                listViewAuroraPregadoresRecord
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
                                                              tag:
                                                              valueOrDefault<
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
                                                                    .circular(
                                                                    100),
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
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewAuroraPregadoresRecord.nome,
                                                                            'Sem pregador',
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
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                                                          style:
                                                                          FlutterFlowTheme.of(context).bodyText1,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Divider(
                                                                  height: 10,
                                                                  color: Color(
                                                                      0xFFD4D4D4),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      3,
                                                                      0,
                                                                      3),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Text(
                                                                        'DATA: ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily: 'Advent Sans',
                                                                          color: Colors.white,
                                                                          fontWeight: FontWeight.w600,
                                                                          useGoogleFonts: false,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          dateTimeFormat(
                                                                              'd/M/y',
                                                                              listViewAuroraPregadoresRecord.data),
                                                                          'S/ Data',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily: 'Advent Sans',
                                                                          color: Color(0xFFDBDBDB),
                                                                          fontWeight: FontWeight.normal,
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
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            dateTimeFormat('EEEE',
                                                                                listViewAuroraPregadoresRecord.data),
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
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      3,
                                                                      0,
                                                                      3),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                        child:
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .whatsapp,
                                                                          color:
                                                                          Color(0xFF1FDC21),
                                                                          size:
                                                                          20,
                                                                        ),
                                                                      ),
                                                                      AutoSizeText(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          listViewAuroraPregadoresRecord
                                                                              .whatsapp,
                                                                          'S/ Whats',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily: 'Advent Sans',
                                                                          color: Color(0xFFD4D4D4),
                                                                          fontWeight: FontWeight.normal,
                                                                          useGoogleFonts: false,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      5),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Text(
                                                                        'Igreja: ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily: 'Advent Sans',
                                                                          color: Colors.white,
                                                                          fontWeight: FontWeight.w600,
                                                                          useGoogleFonts: false,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewAuroraPregadoresRecord.igreja,
                                                                            'S/ Igreja',
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
                                                                            color: Color(0xFFDBDBDB),
                                                                            fontWeight: FontWeight.normal,
                                                                            useGoogleFonts: false,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      10),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Text(
                                                                        'Diretor(a) Responsável: ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily: 'Advent Sans',
                                                                          color: Colors.white,
                                                                          fontSize: 12,
                                                                          fontWeight: FontWeight.normal,
                                                                          decoration: TextDecoration.underline,
                                                                          useGoogleFonts: false,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                        Text(
                                                                          listViewAuroraPregadoresRecord
                                                                              .anciao
                                                                              .maybeHandleOverflow(
                                                                            maxChars:
                                                                            20,
                                                                            replacement:
                                                                            '…',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily: 'Advent Sans',
                                                                            color: Color(0xFFDBDBDB),
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.normal,
                                                                            useGoogleFonts: false,
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
                                        List<AuroraPregadoresRecord>>(
                                      stream: queryAuroraPregadoresRecord(
                                        queryBuilder:
                                            (auroraPregadoresRecord) =>
                                            auroraPregadoresRecord
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
                                        List<AuroraPregadoresRecord>
                                        columnAuroraPregadoresRecordList =
                                            snapshot.data;
                                        return SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                columnAuroraPregadoresRecordList
                                                    .length, (columnIndex) {
                                              final columnAuroraPregadoresRecord =
                                              columnAuroraPregadoresRecordList[
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
                                                                      DeletePregadoresWidget(
                                                                        auroraPregadores:
                                                                        columnAuroraPregadoresRecord.reference,
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
                                                                            CachedNetworkImage(
                                                                              imageUrl: valueOrDefault<String>(
                                                                                columnAuroraPregadoresRecord.img,
                                                                                'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                                              ),
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                            allowRotation:
                                                                            false,
                                                                            tag:
                                                                            valueOrDefault<String>(
                                                                              columnAuroraPregadoresRecord.img,
                                                                              'https://i.ibb.co/cC6RmGZ/businessman.png' + '$columnIndex',
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
                                                                        columnAuroraPregadoresRecord
                                                                            .img,
                                                                        'https://i.ibb.co/cC6RmGZ/businessman.png' +
                                                                            '$columnIndex',
                                                                      ),
                                                                      transitionOnUserGestures:
                                                                      true,
                                                                      child:
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                        BorderRadius.circular(100),
                                                                        child:
                                                                        CachedNetworkImage(
                                                                          imageUrl:
                                                                          valueOrDefault<String>(
                                                                            columnAuroraPregadoresRecord.img,
                                                                            'https://i.ibb.co/cC6RmGZ/businessman.png',
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
                                                                                  columnAuroraPregadoresRecord.nome,
                                                                                  'S/ Nome',
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
                                                                                dateTimeFormat('d/M/y', columnAuroraPregadoresRecord.data),
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
                                                                                  dateTimeFormat('EEEE', columnAuroraPregadoresRecord.data),
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
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(3, 0, 5, 0),
                                                                              child: FaIcon(
                                                                                FontAwesomeIcons.whatsapp,
                                                                                color: Color(0xFF1FDC21),
                                                                                size: 20,
                                                                              ),
                                                                            ),
                                                                            AutoSizeText(
                                                                              valueOrDefault<String>(
                                                                                columnAuroraPregadoresRecord.whatsapp,
                                                                                'S/ Whats',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                fontFamily: 'Advent Sans',
                                                                                color: Color(0xFFD4D4D4),
                                                                                fontWeight: FontWeight.normal,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              'Igreja: ',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                fontFamily: 'Advent Sans',
                                                                                color: Colors.white,
                                                                                fontWeight: FontWeight.w600,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              valueOrDefault<String>(
                                                                                columnAuroraPregadoresRecord.igreja,
                                                                                'S/ Igreja',
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
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              10),
                                                                          child:
                                                                          Row(
                                                                            mainAxisSize:
                                                                            MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                'Diretor(a) Responsável: ',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Advent Sans',
                                                                                  color: Colors.white,
                                                                                  fontSize: 12,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  decoration: TextDecoration.underline,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Text(
                                                                                  columnAuroraPregadoresRecord.anciao.maybeHandleOverflow(
                                                                                    maxChars: 20,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Advent Sans',
                                                                                    color: Color(0xFFDBDBDB),
                                                                                    fontSize: 12,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
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
