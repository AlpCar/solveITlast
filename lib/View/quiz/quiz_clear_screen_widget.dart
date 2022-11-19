import 'package:solveit_proto/index.dart';

import '../quiz/quiz_info_screen_widget.dart';
import '../quiz/quiz_solution_screen.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../review/review_screen_widget.dart';
import 'fke/demoquiz_list_screen_widget.dart';

class QuizClearScreenWidget extends StatefulWidget {
  const QuizClearScreenWidget({Key? key}) : super(key: key);

  @override
  _QuizClearScreenWidgetState createState() => _QuizClearScreenWidgetState();
}

class _QuizClearScreenWidgetState extends State<QuizClearScreenWidget> {
  double? ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
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
                      'https://assets10.lottiefiles.com/packages/lf20_xlkxtmul.json',
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
                'Solved IT!',
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
                  /*Padding(
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
                  ),*/
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '난이도',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RatingBar.builder(
                              onRatingUpdate: (newValue) =>
                                  setState(() => ratingBarValue = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                              direction: Axis.horizontal,
                              initialRating: ratingBarValue ??= 4.5,
                              unratedColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              itemCount: 5,
                              itemPadding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                              itemSize: 28,
                              glowColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              allowHalfRating: true,
                            ),
                          ],
                        ),
                      ],
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
                            child: QuizSolutionScreenWidget(),
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
                            child: ReviewCreateScreenWidget(),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    /*await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: FakeQuizList(),
                      ),
                    );*/
                  },
                  text: '다음',
                  options: FFButtonOptions(
                    width: 200,
                    height: 50,
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryColor,
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
        ),
      ),
    );
  }
}
