import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../quiz/Quiz_Create_Type/quiz_type_multiple.dart';
import '../quiz/Quiz_Create_Type/quiz_type_shortANS.dart';
import '../quiz/Quiz_Create_Type/quiz_type_blank.dart';
import '../quiz/Quiz_Create_Type/quiz_type_coding.dart';


class QuizTypeListScreenWidget extends StatefulWidget {
  const QuizTypeListScreenWidget({Key? key}) : super(key: key);

  @override
  _QuizTypeListScreenWidgetState createState() =>
      _QuizTypeListScreenWidgetState();
}

class _QuizTypeListScreenWidgetState extends State<QuizTypeListScreenWidget> {
  int currentPageIndex = 0;

  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(11, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 15),
                    child: Text(
                      '?????? ????????? ?????????????',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                          child: PageView(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            scrollDirection: Axis.horizontal,
                            pageSnapping: true,
                            onPageChanged: (index){
                              setState((){
                                currentPageIndex = index;
                              },);
                            },
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              0, 30, 0, 30),
                                          child: Image.asset(
                                            'assets/images/multiplechoice_test.png',
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '????????? ??????',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(context)
                                                  .title1
                                                  .override(
                                                fontFamily: 'Outfit',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .primaryBackground,
                                                fontSize: 32,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              '???????????? ?????? ??? ????????? ????????????.',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF57636C),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              0, 30, 0, 30),
                                          child: Image.asset(
                                            'assets/images/fillup_test2.jpg',
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '????????????',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(context)
                                                  .title1
                                                  .override(
                                                fontFamily: 'Outfit',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .primaryBackground,
                                                fontSize: 32,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '????????? ??????????????? ??????????????? ???????????????.',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF57636C),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              0, 30, 0, 30),
                                          child: Image.asset(
                                            'assets/images/shortans_test.png',
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '????????? ??????',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(context)
                                                  .title1
                                                  .override(
                                                fontFamily: 'Outfit',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .primaryBackground,
                                                fontSize: 32,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '????????? ?????? ?????? ?????? ???????????????.',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF57636C),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              0, 30, 0, 30),
                                          child: Image.asset(
                                            'assets/images/coding_test.png',
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '?????? ?????????',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(context)
                                                  .title1
                                                  .override(
                                                fontFamily: 'Outfit',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .primaryBackground,
                                                fontSize: 32,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '???????????? ?????? ???????????? ????????? ???????????????.',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF57636C),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 1),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: SmoothPageIndicator(
                              controller: pageViewController ??=
                                  PageController(initialPage: 0),
                              count: 4,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) {
                                pageViewController!.animateToPage(
                                  i,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                                currentPageIndex = i;
                              },
                              effect: ExpandingDotsEffect(
                                expansionFactor: 2,
                                spacing: 8,
                                radius: 16,
                                dotWidth: 16,
                                dotHeight: 4,
                                dotColor: Color(0xFF57636C),
                                activeDotColor: Color(0xFF0F1113),
                                paintStyle: PaintingStyle.fill,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      switch(currentPageIndex){
                        case 0: {await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MultipleChoiceQuiz(),
                          ),
                        );break;}
                        case 1: {await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FillBlankQuiz(),
                          ),
                        ); break;}
                        case 2: {await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShortAnswerQuiz(),
                          ),
                        ); break;}
                        case 3: {await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CodingTestQuiz(),
                          ),
                        ); break;}
                      }
                    },
                    text: 'Continue',
                    options: FFButtonOptions(
                      width: 200,
                      height: 50,
                      color: Color(0xFFF1F4F8),
                      textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF0F1113),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      elevation: 2,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
