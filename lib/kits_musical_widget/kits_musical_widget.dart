import '../backend/backend.dart';
import '../components/add_kits_musical_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../kits_musical_list/kits_musical_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class KitsMusicalWidget extends StatefulWidget {
  const KitsMusicalWidget({Key key}) : super(key: key);

  @override
  _KitsMusicalWidgetState createState() => _KitsMusicalWidgetState();
}

class _KitsMusicalWidgetState extends State<KitsMusicalWidget> {
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
          'KITS MUSICAIS',
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: AddKitsMusicalWidget(),
                ),
              );
            },
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
            child: StreamBuilder<List<KitsMusicalRecord>>(
              stream: queryKitsMusicalRecord(
                queryBuilder: (kitsMusicalRecord) =>
                    kitsMusicalRecord.orderBy('banda'),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: SpinKitRing(
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 50,
                      ),
                    ),
                  );
                }
                List<KitsMusicalRecord> columnKitsMusicalRecordList =
                    snapshot.data;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(columnKitsMusicalRecordList.length,
                          (columnIndex) {
                        final columnKitsMusicalRecord =
                        columnKitsMusicalRecordList[columnIndex];
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.bottomToTop,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration: Duration(milliseconds: 300),
                                      child: KitsMusicalListWidget(
                                        nome: columnKitsMusicalRecord.nome,
                                        banda: columnKitsMusicalRecord.banda,
                                        cantada: columnKitsMusicalRecord.cantada,
                                        playback: columnKitsMusicalRecord.playback,
                                        baixo: columnKitsMusicalRecord.baixo,
                                        barito: columnKitsMusicalRecord.barito,
                                        tenor: columnKitsMusicalRecord.tenor,
                                        contralto:
                                        columnKitsMusicalRecord.contralto,
                                        soprano: columnKitsMusicalRecord.soprano,
                                        letra: columnKitsMusicalRecord.letras,
                                      ),
                                    ),
                                  );
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  child: Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                columnKitsMusicalRecord.nome,
                                                style: FlutterFlowTheme.of(context)
                                                    .subtitle1
                                                    .override(
                                                  fontFamily: 'Advent Sans',
                                                  color: Colors.white,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                columnKitsMusicalRecord.banda,
                                                style: FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Advent Sans',
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryColor,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              dateTimeFormat('d/M h:mm a',
                                                  columnKitsMusicalRecord.data),
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
