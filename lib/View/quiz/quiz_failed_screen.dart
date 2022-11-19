import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'quiz_info_screen_widget.dart';

class QuizFailedScreenWidget extends StatefulWidget {
  const QuizFailedScreenWidget({Key? key}) : super(key: key);

  @override
  _QuizFailedScreenWidgetState createState() => _QuizFailedScreenWidgetState();
}

class _QuizFailedScreenWidgetState extends State<QuizFailedScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.network(
                      'https://assets7.lottiefiles.com/private_files/lf30_Yy0jZt.json',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                      frameRate: FrameRate(60),
                      repeat: false,
                      animate: true,
                    ),
                  ],
                ),
              ),
              Text(
                'Slipped IT..',
                style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 4),
                    child: Text(
                      '걸린 시간 00 : 00',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: QuizInfoScreenWidget(),
                          ),
                        );
                      },
                      text: '해설 보기',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0x00FFFFFF),
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                          fontFamily: 'Poppins',
                          color:
                          FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 20,
                        ),
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: QuizInfoScreenWidget(),
                          ),
                        );
                      },
                      text: '오답노트',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0x00FFFFFF),
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                          fontFamily: 'Poppins',
                          color:
                          FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 20,
                        ),
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      text: '다시하기',
                      options: FFButtonOptions(
                        width: 200,
                        height: 50,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        textStyle:
                        FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context)
                              .secondaryBackground,
                          fontSize: 22,
                        ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: QuizInfoScreenWidget(),
                          ),
                        );
                      },
                      text: '그만하기',
                      options: FFButtonOptions(
                        width: 200,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                          fontFamily: 'Poppins',
                          color:
                          FlutterFlowTheme.of(context).secondaryColor,
                          fontSize: 22,
                        ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
