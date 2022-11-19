import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../quiz/quiz_info_screen_widget.dart';

class HomeQuizListCardWidget extends StatefulWidget {
  const HomeQuizListCardWidget({Key? key}) : super(key: key);

  @override
  _HomeQuizListCardWidgetState createState() => _HomeQuizListCardWidgetState();
}

class _HomeQuizListCardWidgetState extends State<HomeQuizListCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width * 0.92,
        height: MediaQuery
            .of(context)
            .size
            .height * 0.1,
        decoration: BoxDecoration(
          color:
          FlutterFlowTheme
              .of(context)
              .primaryBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
              EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width *
                        0.40,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height *
                        0.04,
                    decoration: BoxDecoration(),
                    child: Text(
                      '복습용 수능지문 빈칸채우기',
                      style: FlutterFlowTheme
                          .of(context)
                          .subtitle1,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '121',
                  textAlign: TextAlign.end,
                  style: FlutterFlowTheme
                      .of(context)
                      .subtitle2
                      .override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme
                        .of(context)
                        .primaryColor,
                  ),
                ),
                Icon(
                  Icons.favorite_rounded,
                  color:
                  FlutterFlowTheme
                      .of(context)
                      .alternate,
                  size: 24,
                ),
              ],
            ),
            Padding(
              padding:
              EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRight,
                      duration: Duration(milliseconds: 300),
                      reverseDuration:
                      Duration(milliseconds: 300),
                      child: QuizInfoScreenWidget(),
                    ),
                  );
                },
                text: '도전하기',
                options: FFButtonOptions(
                  width: 100,
                  height: 50,
                  color: FlutterFlowTheme
                      .of(context)
                      .secondaryBackground,
                  textStyle: FlutterFlowTheme
                      .of(context)
                      .subtitle2
                      .override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme
                        .of(context)
                        .secondaryBackground,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
