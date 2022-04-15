import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddKitsMusicalWidget extends StatefulWidget {
  const AddKitsMusicalWidget({Key key}) : super(key: key);

  @override
  _AddKitsMusicalWidgetState createState() => _AddKitsMusicalWidgetState();
}

class _AddKitsMusicalWidgetState extends State<AddKitsMusicalWidget> {
  TextEditingController baixoController;
  TextEditingController cantadaController;
  TextEditingController letraController;
  TextEditingController nomedamusicaController;
  TextEditingController nomedoconjuntoController;
  TextEditingController playbackController;
  TextEditingController baritoController;
  TextEditingController contraltoController;
  TextEditingController sopranoController;
  TextEditingController tenorController;

  @override
  void initState() {
    super.initState();
    baixoController = TextEditingController();
    cantadaController = TextEditingController();
    letraController = TextEditingController();
    nomedamusicaController = TextEditingController();
    nomedoconjuntoController = TextEditingController();
    playbackController = TextEditingController();
    baritoController = TextEditingController();
    contraltoController = TextEditingController();
    sopranoController = TextEditingController();
    tenorController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (currentUserDocument?.admGeral ?? true)
            AuthUserStreamWidget(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'ADD KIT MUSICAL',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                    fontFamily: 'Advent Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: TextFormField(
                                    controller: nomedamusicaController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Nome da Musica',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Advent Sans',
                                      color: Color(0xFFF3F3F3),
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color:
                                    FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              2, 2, 2, 2),
                                          child: TextFormField(
                                            controller: letraController,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: 'Letra',
                                              hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2
                                                  .override(
                                                fontFamily:
                                                'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight:
                                                FontWeight.normal,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x003F3F3F),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x003F3F3F),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                              filled: true,
                                              fillColor: Color(0x00FFFFFF),
                                              contentPadding:
                                              EdgeInsetsDirectional
                                                  .fromSTEB(20, 20, 20, 12),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                            textAlign: TextAlign.start,
                                            maxLines: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 1, 0, 0),
                                    child: TextFormField(
                                      controller: nomedoconjuntoController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText:
                                        'Nome do dueto, trio, quarteto ou conjunto...',
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
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color:
                                    FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 1, 0, 0),
                                    child: TextFormField(
                                      controller: cantadaController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'URL CANTADA',
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
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color:
                                    FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 1, 0, 0),
                                    child: TextFormField(
                                      controller: playbackController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'URL PLAYBACK',
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
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color:
                                    FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 1, 0, 0),
                                    child: TextFormField(
                                      controller: baixoController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'URL BAIXO',
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
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color:
                                    FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 1, 0, 0),
                                    child: TextFormField(
                                      controller: baritoController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'URL BARITONO\n',
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
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color:
                                    FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 1, 0, 0),
                                    child: TextFormField(
                                      controller: contraltoController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'URL CONTRALTO\n',
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
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color:
                                    FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 1, 0, 0),
                                    child: TextFormField(
                                      controller: sopranoController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'URL SOPRANO\n',
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
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color:
                                    FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 1, 0, 0),
                                    child: TextFormField(
                                      controller: tenorController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'URL TENOR',
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
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Advent Sans',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    final kitsMusicalCreateData =
                                    createKitsMusicalRecordData(
                                      data: getCurrentTimestamp,
                                      nome: nomedamusicaController.text,
                                      banda: nomedoconjuntoController.text,
                                      cantada: cantadaController.text,
                                      playback: playbackController.text,
                                      tenor: tenorController.text,
                                      contralto: contraltoController.text,
                                      barito: baritoController.text,
                                      baixo: baixoController.text,
                                      soprano: sopranoController.text,
                                      letras: letraController.text,
                                    );
                                    await KitsMusicalRecord.collection
                                        .doc()
                                        .set(kitsMusicalCreateData);
                                    Navigator.pop(context);
                                  },
                                  text: 'Adicionar',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                      fontFamily: 'Advent Sans',
                                      color: Colors.white,
                                      useGoogleFonts: false,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
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
    );
  }
}
