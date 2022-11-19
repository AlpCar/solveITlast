import '../../flutter_flow/flutter_flow_icon_button.dart';
import '../../flutter_flow/flutter_flow_radio_button.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import '../quiz_clear_screen_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../quiz_report_screen_widget.dart';

class QuizTakeFake extends StatefulWidget {
  const QuizTakeFake({Key? key}) : super(key: key);

  @override
  _QuizTakeFakeState createState() => _QuizTakeFakeState();
}

class _QuizTakeFakeState extends State<QuizTakeFake> {
  PageController? pageViewController;
  String? radioButtonValue;
  TextEditingController? textController1;
  TextEditingController? textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
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
          onPressed: () async{
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizReportScreenWidget(),
              ),
            );
          },
        ),
        title: Text(
          '문제 풀기',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 45,
                icon: Icon(
                  Icons.report_outlined,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 30,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizReportScreenWidget(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 3),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 4),
                                          child: Icon(
                                            Icons.person,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            size: 20,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              4, 0, 0, 0),
                                          child: Text(
                                            'C SC',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                  MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 4, 8, 4),
                                    child: Text(
                                      '데모',
                                      style:
                                      FlutterFlowTheme.of(context).title2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: PageView(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 4, 12, 4),
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.07,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Text(
                                              '객관식문제',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 17,
                                              ),
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 3, 5, 3),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 1,
                                        child: Container(
                                          width:
                                          MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.4,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                6, 6, 6, 6),
                                            child: Text(
                                              '1+1은?',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 18,
                                                fontWeight:
                                                FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 3, 0, 3),
                                      child: Card(
                                        clipBehavior:
                                        Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 7, 0, 7),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: FlutterFlowRadioButton(
                                                  options: ['1', '2'].toList(),
                                                  onChanged: (val) => setState(
                                                          () => radioButtonValue =
                                                          val),
                                                  optionHeight: 40,
                                                  textStyle: FlutterFlowTheme
                                                      .of(context)
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                  ),
                                                  selectedTextStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .bodyText1
                                                      .override(
                                                    fontFamily:
                                                    'Poppins',
                                                    color: FlutterFlowTheme
                                                        .of(context)
                                                        .secondaryColor,
                                                    fontSize: 18,
                                                  ),
                                                  buttonPosition:
                                                  RadioButtonPosition.left,
                                                  direction: Axis.vertical,
                                                  radioButtonColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .tertiaryColor,
                                                  inactiveRadioButtonColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                  toggleable: false,
                                                  horizontalAlignment:
                                                  WrapAlignment.start,
                                                  verticalAlignment:
                                                  WrapCrossAlignment.start,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height:
                                MediaQuery.of(context).size.height * 0.6,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 4, 12, 4),
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.07,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Text(
                                              '빈칸 문제',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 17,
                                              ),
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 3, 5, 3),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 1,
                                        child: Container(
                                          width:
                                          MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.4,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                6, 6, 6, 6),
                                            child: Text(
                                              '1+1은 __입니다.',
                                              textAlign: TextAlign.start,
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 18,
                                                fontWeight:
                                                FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 3, 0, 3),
                                      child: Card(
                                        clipBehavior:
                                        Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 7, 0, 7),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        12, 0, 0, 0),
                                                    child: Text(
                                                          '1번 : ',
                                                          style:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyText1,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: TextFormField(
                                                      controller:
                                                      textController1,
                                                      autofocus: false,
                                                      obscureText: false,
                                                      decoration:
                                                      InputDecoration(
                                                        hintText: '답 입력',
                                                        hintStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText2,
                                                        enabledBorder:
                                                        UnderlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                            topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                            topRight:
                                                            Radius.circular(
                                                                4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                        UnderlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                            topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                            topRight:
                                                            Radius.circular(
                                                                4.0),
                                                          ),
                                                        ),
                                                        errorBorder:
                                                        UnderlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                            topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                            topRight:
                                                            Radius.circular(
                                                                4.0),
                                                          ),
                                                        ),
                                                        focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                            topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                            topRight:
                                                            Radius.circular(
                                                                4.0),
                                                          ),
                                                        ),
                                                      ),
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height:
                                MediaQuery.of(context).size.height * 0.8,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 4, 12, 4),
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.07,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Text(
                                              '단답형 문제',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 17,
                                              ),
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 3, 5, 3),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 1,
                                        child: Container(
                                          width:
                                          MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.3,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                6, 6, 6, 6),
                                            child: Text(
                                              '1+1은?',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 18,
                                                fontWeight:
                                                FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 8, 0),
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.2,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 7, 0, 7),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: TextFormField(
                                                      controller:
                                                      textController2,
                                                      autofocus: false,
                                                      obscureText: false,
                                                      decoration:
                                                      InputDecoration(
                                                        hintText:
                                                        ' 정답을 입력해주세요.',
                                                        hintStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText2,
                                                        enabledBorder:
                                                        UnderlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                            topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                            topRight:
                                                            Radius.circular(
                                                                4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                        UnderlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                            topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                            topRight:
                                                            Radius.circular(
                                                                4.0),
                                                          ),
                                                        ),
                                                        errorBorder:
                                                        UnderlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                            topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                            topRight:
                                                            Radius.circular(
                                                                4.0),
                                                          ),
                                                        ),
                                                        focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                            topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                            topRight:
                                                            Radius.circular(
                                                                4.0),
                                                          ),
                                                        ),
                                                      ),
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 15, 12, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                            AlignmentDirectional(0, 1),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(6, 0, 6, 0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          QuizClearScreenWidget(),
                                                    ),
                                                  );
                                                },
                                                text: '제출',
                                                options: FFButtonOptions(
                                                  width: 80,
                                                  height: 50,
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .tertiaryColor,
                                                  textStyle: FlutterFlowTheme
                                                      .of(context)
                                                      .subtitle2
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                  elevation: 2,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                ),
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
                          alignment: AlignmentDirectional(-0.05, -1),
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: smooth_page_indicator.SmoothPageIndicator(
                              controller: pageViewController ??=
                                  PageController(initialPage: 0),
                              count: 3,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) {
                                pageViewController!.animateToPage(
                                  i,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: smooth_page_indicator.ExpandingDotsEffect(
                                expansionFactor: 2,
                                spacing: 8,
                                radius: 16,
                                dotWidth: 16,
                                dotHeight: 16,
                                dotColor:
                                FlutterFlowTheme.of(context).secondaryText,
                                activeDotColor:
                                FlutterFlowTheme.of(context).primaryColor,
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
          ),
        ),
      ),
    );
  }
}
