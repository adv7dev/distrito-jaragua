import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddChatUsersWidget extends StatefulWidget {
  const AddChatUsersWidget({
    Key key,
    this.chat,
  }) : super(key: key);

  final ChatsRecord chat;

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
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 24,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF95A1AC),
            size: 24,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
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
              'Selecione Seus Amigos para conversar.',
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
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Padding(
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
            return Column(
              mainAxisSize: MainAxisSize.max,
              children:
                  List.generate(columnUsersRecordList.length, (columnIndex) {
                final columnUsersRecord = columnUsersRecordList[columnIndex];
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).alternate,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.network(
                                  'https://picsum.photos/seed/804/600',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          columnUsersRecord.displayName,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
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
    );
  }
}
