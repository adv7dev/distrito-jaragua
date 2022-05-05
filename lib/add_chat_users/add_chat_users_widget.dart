import '../backend/backend.dart';
import '../chat_page/chat_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddChatUsersWidget extends StatefulWidget {
  const AddChatUsersWidget({Key key}) : super(key: key);

  @override
  _AddChatUsersWidgetState createState() => _AddChatUsersWidgetState();
}

class _AddChatUsersWidgetState extends State<AddChatUsersWidget> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Adicionar amigos ao Chat',
              style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Selecione Alguém para conversar.',
              style: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFFD2D2D2),
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
          child: StreamBuilder<List<UsersRecord>>(
            stream: queryUsersRecord(),
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
              List<UsersRecord> columnUsersRecordList = snapshot.data;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(columnUsersRecordList.length,
                          (columnIndex) {
                        final columnUsersRecord =
                        columnUsersRecordList[columnIndex];
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
                                      child: ChatPageWidget(
                                        chatUser: columnUsersRecord,
                                      ),
                                    ),
                                  );
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                5, 5, 5, 5),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(100),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  columnUsersRecord.photoUrl,
                                                  'https://i.ibb.co/cC6RmGZ/businessman.png',
                                                ),
                                                width: 70,
                                                height: 70,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          columnUsersRecord
                                                              .displayName,
                                                          'sem nome',
                                                        ),
                                                        style: FlutterFlowTheme.of(
                                                            context)
                                                            .subtitle2
                                                            .override(
                                                          fontFamily:
                                                          'Advent Sans',
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
                                                        valueOrDefault<String>(
                                                          columnUsersRecord.bio,
                                                          'Sem igreja',
                                                        ),
                                                        style: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                          'Advent Sans',
                                                          color:
                                                          Color(0xFFCBCBCB),
                                                          fontStyle:
                                                          FontStyle.italic,
                                                          useGoogleFonts: false,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 10, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.message,
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                                  size: 30,
                                                ),
                                              ],
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
                        );
                      }),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
