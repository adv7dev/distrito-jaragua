import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TermosDeServicosWidget extends StatefulWidget {
  const TermosDeServicosWidget({Key key}) : super(key: key);

  @override
  _TermosDeServicosWidgetState createState() => _TermosDeServicosWidgetState();
}

class _TermosDeServicosWidgetState extends State<TermosDeServicosWidget> {
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
        title: Text(
          'Termos de Serviço',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
