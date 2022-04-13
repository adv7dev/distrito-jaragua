import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoricoItinerarioWidget extends StatefulWidget {
  const HistoricoItinerarioWidget({Key key}) : super(key: key);

  @override
  _HistoricoItinerarioWidgetState createState() =>
      _HistoricoItinerarioWidgetState();
}

class _HistoricoItinerarioWidgetState extends State<HistoricoItinerarioWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Divider(
            height: 10,
            thickness: 5,
            indent: 5,
            endIndent: 5,
            color: FlutterFlowTheme.of(context).secondaryColor,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 40, 10, 10),
            child: StreamBuilder<List<EscalaPastoralRecord>>(
              stream: queryEscalaPastoralRecord(
                queryBuilder: (escalaPastoralRecord) =>
                    escalaPastoralRecord.where('ativo', isEqualTo: false),
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
                List<EscalaPastoralRecord> columnEscalaPastoralRecordList =
                    snapshot.data;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(
                        columnEscalaPastoralRecordList.length, (columnIndex) {
                      final columnEscalaPastoralRecord =
                      columnEscalaPastoralRecordList[columnIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.of(context).alternate,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            columnEscalaPastoralRecord.igreja,
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                              fontFamily: 'Advent Sans',
                                              color: Colors.white,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              dateTimeFormat(
                                                  'd/M/y',
                                                  columnEscalaPastoralRecord
                                                      .data),
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Advent Sans',
                                                color: Color(0xFFDC8A5D),
                                                fontWeight:
                                                FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            dateTimeFormat(
                                                'EEEE',
                                                columnEscalaPastoralRecord
                                                    .data),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Advent Sans',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
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
                      );
                    }),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
