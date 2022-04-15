import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class KitsMusicalListWidget extends StatefulWidget {
  const KitsMusicalListWidget({
    Key key,
    this.nome,
    this.banda,
    this.cantada,
    this.playback,
    this.baixo,
    this.barito,
    this.tenor,
    this.contralto,
    this.soprano,
    this.letra,
  }) : super(key: key);

  final String nome;
  final String banda;
  final String cantada;
  final String playback;
  final String baixo;
  final String barito;
  final String tenor;
  final String contralto;
  final String soprano;
  final String letra;

  @override
  _KitsMusicalListWidgetState createState() => _KitsMusicalListWidgetState();
}

class _KitsMusicalListWidgetState extends State<KitsMusicalListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        iconTheme:
        IconThemeData(color: FlutterFlowTheme.of(context).secondaryColor),
        automaticallyImplyLeading: true,
        title: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.banda.maybeHandleOverflow(
                      maxChars: 40,
                      replacement: '…',
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Advent Sans',
                      color: Color(0xFFC1C1C1),
                      useGoogleFonts: false,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.nome.maybeHandleOverflow(
                      maxChars: 30,
                      replacement: '…',
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Advent Sans',
                      color: Colors.white,
                      fontSize: 17,
                      useGoogleFonts: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          child: ExpandableNotifier(
                            initialExpanded: false,
                            child: ExpandablePanel(
                              header: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Text(
                                  'CANTADA',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                    fontFamily: 'Advent Sans',
                                    color: Colors.white,
                                    fontSize: 25,
                                    useGoogleFonts: false,
                                  ),
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
                                      5, 8, 0, 0),
                                  child: Text(
                                    'Musica cantada, com instrumentos e vozes...',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Advent Sans',
                                      color: Color(0x8A111111),
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                              ),
                              expanded: Column(
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
                                              .primaryBackground,
                                          child: FlutterFlowYoutubePlayer(
                                            url: widget.cantada,
                                            autoPlay: false,
                                            looping: true,
                                            mute: false,
                                            showControls: true,
                                            showFullScreen: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              theme: ExpandableThemeData(
                                tapHeaderToExpand: true,
                                tapBodyToExpand: false,
                                tapBodyToCollapse: false,
                                headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                                hasIcon: true,
                                iconColor: Color(0xFF020F0F),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    'PLAYBACK',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                      fontFamily: 'Advent Sans',
                                      color: Colors.white,
                                      fontSize: 25,
                                      useGoogleFonts: false,
                                    ),
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
                                        5, 8, 0, 0),
                                    child: Text(
                                      'PlayBack Musica, somente instrumentos...',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Color(0x8A111111),
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                                expanded: Column(
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
                                                .primaryBackground,
                                            child: FlutterFlowYoutubePlayer(
                                              url: widget.playback,
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  iconColor: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: FlutterFlowTheme.of(context).alternate,
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    'BAIXO',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                      fontFamily: 'Advent Sans',
                                      color: Colors.white,
                                      fontSize: 25,
                                      useGoogleFonts: false,
                                    ),
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
                                        5, 8, 0, 0),
                                    child: Text(
                                      'Somente a voz do baixo...',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Color(0x8A111111),
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                                expanded: Column(
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
                                                .primaryBackground,
                                            child: FlutterFlowYoutubePlayer(
                                              url: valueOrDefault<String>(
                                                widget.baixo,
                                                'https://www.youtube.com/watch?v=miZXAzIJGFg',
                                              ),
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: FlutterFlowTheme.of(context).alternate,
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    'BARITONO',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                      fontFamily: 'Advent Sans',
                                      color: Colors.white,
                                      fontSize: 25,
                                      useGoogleFonts: false,
                                    ),
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
                                        5, 8, 0, 0),
                                    child: Text(
                                      'Somente a voz do barito...',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Color(0x8A111111),
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                                expanded: Column(
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
                                                .primaryBackground,
                                            child: FlutterFlowYoutubePlayer(
                                              url: valueOrDefault<String>(
                                                widget.barito,
                                                'https://www.youtube.com/watch?v=miZXAzIJGFg',
                                              ),
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: FlutterFlowTheme.of(context).alternate,
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    'CONTRALTO',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                      fontFamily: 'Advent Sans',
                                      color: Colors.white,
                                      fontSize: 25,
                                      useGoogleFonts: false,
                                    ),
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
                                        5, 8, 0, 0),
                                    child: Text(
                                      'Somente a voz do contralto...',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Color(0x8A111111),
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                                expanded: Column(
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
                                                .primaryBackground,
                                            child: FlutterFlowYoutubePlayer(
                                              url: valueOrDefault<String>(
                                                widget.contralto,
                                                'https://www.youtube.com/watch?v=miZXAzIJGFg',
                                              ),
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: FlutterFlowTheme.of(context).alternate,
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    'SOPRANO',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                      fontFamily: 'Advent Sans',
                                      color: Colors.white,
                                      fontSize: 25,
                                      useGoogleFonts: false,
                                    ),
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
                                        5, 8, 0, 0),
                                    child: Text(
                                      'Somente a voz do soprano...',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Color(0x8A111111),
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                                expanded: Column(
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
                                                .primaryBackground,
                                            child: FlutterFlowYoutubePlayer(
                                              url: valueOrDefault<String>(
                                                widget.soprano,
                                                'https://www.youtube.com/watch?v=miZXAzIJGFg',
                                              ),
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: FlutterFlowTheme.of(context).alternate,
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    'TENOR',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                      fontFamily: 'Advent Sans',
                                      color: Colors.white,
                                      fontSize: 25,
                                      useGoogleFonts: false,
                                    ),
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
                                        5, 8, 0, 0),
                                    child: Text(
                                      'Somente a voz do tenor...',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Color(0x8A111111),
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                                expanded: Column(
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
                                                .primaryBackground,
                                            child: FlutterFlowYoutubePlayer(
                                              url: valueOrDefault<String>(
                                                widget.tenor,
                                                'https://www.youtube.com/watch?v=miZXAzIJGFg',
                                              ),
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    'LETRA DA MUSICA',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                      fontFamily: 'Advent Sans',
                                      color: Colors.white,
                                      fontSize: 20,
                                      useGoogleFonts: false,
                                    ),
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
                                        5, 8, 0, 0),
                                    child: Text(
                                      'Toque para ver a letra...',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Color(0x8A111111),
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                                expanded: Column(
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
                                                .primaryBackground,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Text(
                                                widget.letra,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Advent Sans',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                ),
                              ),
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
    );
  }
}
