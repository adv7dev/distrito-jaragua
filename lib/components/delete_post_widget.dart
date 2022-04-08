import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DeletePostWidget extends StatefulWidget {
  const DeletePostWidget({
    Key key,
    this.postParameters,
  }) : super(key: key);

  final UserPostsRecord postParameters;

  @override
  _DeletePostWidgetState createState() => _DeletePostWidgetState();
}

class _DeletePostWidgetState extends State<DeletePostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF1A1F24),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FFButtonWidget(
              onPressed: () async {
                await widget.postParameters.postUser.delete();
                Navigator.pop(context);
              },
              text: 'Delete Post',
              options: FFButtonOptions(
                width: double.infinity,
                height: 60,
                color: Color(0xFFF52E2E),
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Advent Sans',
                      color: Colors.white,
                      useGoogleFonts: false,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 40,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Cancel',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60,
                  color: Color(0xFF262D34),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Advent Sans',
                        color: Colors.white,
                        useGoogleFonts: false,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
