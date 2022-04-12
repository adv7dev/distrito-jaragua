import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteEscolaSWidget extends StatefulWidget {
  const DeleteEscolaSWidget({
    Key key,
    this.auroraEscolaS,
  }) : super(key: key);

  final DocumentReference auroraEscolaS;

  @override
  _DeleteEscolaSWidgetState createState() => _DeleteEscolaSWidgetState();
}

class _DeleteEscolaSWidgetState extends State<DeleteEscolaSWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5, 20, 5, 0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (currentUserDocument?.admAurora ?? true)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: AuthUserStreamWidget(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x3B1D2429),
                                offset: Offset(0, -3),
                              )
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    final auroraSabatinaUpdateData =
                                        createAuroraSabatinaRecordData(
                                      ativo: false,
                                    );
                                    await widget.auroraEscolaS
                                        .update(auroraSabatinaUpdateData);
                                    Navigator.pop(context);
                                  },
                                  text: 'Enviar Para  o Histórico',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 60,
                                    color: Color(0xFFDBE2E7),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF262D34),
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 40,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await widget.auroraEscolaS.delete();
                                      Navigator.pop(context);
                                    },
                                    text: 'Deletar',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 60,
                                      color: Color(0xFFF52E2E),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 40,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                    text: 'Cancel',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 60,
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF57636C),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 40,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'AURORA',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Advent Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
