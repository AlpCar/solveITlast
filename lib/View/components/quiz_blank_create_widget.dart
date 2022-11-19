import 'quiz_create_page_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BlankWidget extends StatefulWidget {
  const BlankWidget({Key? key}) : super(key: key);

  @override
  _BlankWidgetState createState() => _BlankWidgetState();
}

class _BlankWidgetState extends State<BlankWidget> {
  TextEditingController? textController1;

  String? dropDownValue1;
  String? dropDownValue2;
  double? ratingBarValue;

  TextEditingController? textController2;

  TextEditingController? textController3;

  TextEditingController? textController4;

  TextEditingController? textController5;

  TextEditingController? textController6;

  PageController? pageViewController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 6, 12, 12),
            child: SingleChildScrollView(
              child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 18, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Form(
                                          key: formKey,
                                          autovalidateMode:
                                          AutovalidateMode.always,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceEvenly,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              4, 0, 4),
                                                          child: TextFormField(
                                                            controller:
                                                            textController1,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                                  'textController1',
                                                                  Duration(
                                                                      milliseconds:
                                                                      2000),
                                                                      () => setState(
                                                                          () {}),
                                                                ),
                                                            autofocus: true,
                                                            obscureText: false,
                                                            decoration:
                                                            InputDecoration(
                                                              labelText: '제목',
                                                              enabledBorder:
                                                              UnderlineInputBorder(
                                                                borderSide:
                                                                BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                      4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                      4.0),
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                              UnderlineInputBorder(
                                                                borderSide:
                                                                BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                      4.0),
                                                                  topRight: Radius
                                                                      .circular(
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
                                                                  topLeft: Radius
                                                                      .circular(
                                                                      4.0),
                                                                  topRight: Radius
                                                                      .circular(
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
                                                                  topLeft: Radius
                                                                      .circular(
                                                                      4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                      4.0),
                                                                ),
                                                              ),
                                                              filled: true,
                                                              fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              4, 0, 4),
                                                          child:
                                                          FlutterFlowDropDown(
                                                            initialOption:
                                                            dropDownValue1 ??=
                                                            '주관식',
                                                            options: [
                                                              '객관식',
                                                              '주관식',
                                                              '빈칸'
                                                            ],
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                dropDownValue1 =
                                                                    val),
                                                            width: 180,
                                                            height: 50,
                                                            textStyle:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .bodyText1
                                                                .override(
                                                              fontFamily:
                                                              'Poppins',
                                                              color: Colors
                                                                  .black,
                                                            ),
                                                            hintText:
                                                            'Please select...',
                                                            fillColor: FlutterFlowTheme
                                                                .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2,
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderWidth: 0,
                                                            borderRadius: 30,
                                                            margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                12,
                                                                4,
                                                                12,
                                                                4),
                                                            hidesUnderline:
                                                            true,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              4, 0, 4),
                                                          child:
                                                          FlutterFlowDropDown(
                                                            initialOption:
                                                            dropDownValue2 ??=
                                                            '수능',
                                                            options: [
                                                              '수능',
                                                              '토익',
                                                              '자격증'
                                                            ],
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                dropDownValue2 =
                                                                    val),
                                                            width: 180,
                                                            height: 50,
                                                            textStyle:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .bodyText1
                                                                .override(
                                                              fontFamily:
                                                              'Poppins',
                                                              color: Colors
                                                                  .black,
                                                            ),
                                                            hintText:
                                                            'Please select...',
                                                            fillColor: FlutterFlowTheme
                                                                .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2,
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderWidth: 0,
                                                            borderRadius: 0,
                                                            margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                12,
                                                                4,
                                                                12,
                                                                4),
                                                            hidesUnderline:
                                                            true,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      RatingBar.builder(
                                                        onRatingUpdate: (newValue) =>
                                                            setState(() =>
                                                            ratingBarValue =
                                                                newValue),
                                                        itemBuilder:
                                                            (context, index) =>
                                                            Icon(
                                                              Icons.star_rounded,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .secondaryColor,
                                                            ),
                                                        direction:
                                                        Axis.horizontal,
                                                        initialRating:
                                                        ratingBarValue ??=
                                                        2.5,
                                                        unratedColor:
                                                        Color(0xFF9E9E9E),
                                                        itemCount: 5,
                                                        itemSize: 40,
                                                        glowColor:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryColor,
                                                      ),
                                                      Text(
                                                        '난이도',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                TextFormField(
                                                                  controller:
                                                                  textController2,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                        'textController2',
                                                                        Duration(
                                                                            milliseconds:
                                                                            2000),
                                                                            () => setState(
                                                                                () {}),
                                                                      ),
                                                                  autofocus:
                                                                  true,
                                                                  obscureText:
                                                                  false,
                                                                  decoration:
                                                                  InputDecoration(
                                                                    labelText:
                                                                    '문제 내용',
                                                                    enabledBorder:
                                                                    UnderlineInputBorder(
                                                                      borderSide:
                                                                      BorderSide(
                                                                        color: Colors
                                                                            .black,
                                                                        width:
                                                                        1,
                                                                      ),
                                                                      borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                        topLeft:
                                                                        Radius.circular(4.0),
                                                                        topRight:
                                                                        Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    focusedBorder:
                                                                    UnderlineInputBorder(
                                                                      borderSide:
                                                                      BorderSide(
                                                                        color: Colors
                                                                            .black,
                                                                        width:
                                                                        1,
                                                                      ),
                                                                      borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                        topLeft:
                                                                        Radius.circular(4.0),
                                                                        topRight:
                                                                        Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    errorBorder:
                                                                    UnderlineInputBorder(
                                                                      borderSide:
                                                                      BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                        1,
                                                                      ),
                                                                      borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                        topLeft:
                                                                        Radius.circular(4.0),
                                                                        topRight:
                                                                        Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                    UnderlineInputBorder(
                                                                      borderSide:
                                                                      BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                        1,
                                                                      ),
                                                                      borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                        topLeft:
                                                                        Radius.circular(4.0),
                                                                        topRight:
                                                                        Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                0,
                                                                1,
                                                                0,
                                                                0),
                                                            child: Column(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                      TextFormField(
                                                                        controller:
                                                                        textController3,
                                                                        onChanged:
                                                                            (_) =>
                                                                            EasyDebounce.debounce(
                                                                              'textController3',
                                                                              Duration(
                                                                                  milliseconds: 2000),
                                                                                  () =>
                                                                                  setState(() {}),
                                                                            ),
                                                                        autofocus:
                                                                        true,
                                                                        obscureText:
                                                                        false,
                                                                        decoration:
                                                                        InputDecoration(
                                                                          labelText:
                                                                          '정답 입력',
                                                                          enabledBorder:
                                                                          UnderlineInputBorder(
                                                                            borderSide:
                                                                            BorderSide(
                                                                              color: Colors.black,
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                            const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedBorder:
                                                                          UnderlineInputBorder(
                                                                            borderSide:
                                                                            BorderSide(
                                                                              color: Colors.black,
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                            const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          errorBorder:
                                                                          UnderlineInputBorder(
                                                                            borderSide:
                                                                            BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                            const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                            borderSide:
                                                                            BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                            const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                      TextFormField(
                                                                        controller:
                                                                        textController4,
                                                                        onChanged:
                                                                            (_) =>
                                                                            EasyDebounce.debounce(
                                                                              'textController4',
                                                                              Duration(
                                                                                  milliseconds: 2000),
                                                                                  () =>
                                                                                  setState(() {}),
                                                                            ),
                                                                        autofocus:
                                                                        true,
                                                                        obscureText:
                                                                        false,
                                                                        decoration:
                                                                        InputDecoration(
                                                                          labelText:
                                                                          '해설 입력',
                                                                          enabledBorder:
                                                                          UnderlineInputBorder(
                                                                            borderSide:
                                                                            BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                            const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedBorder:
                                                                          UnderlineInputBorder(
                                                                            borderSide:
                                                                            BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                            const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          errorBorder:
                                                                          UnderlineInputBorder(
                                                                            borderSide:
                                                                            BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                            const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                            borderSide:
                                                                            BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                            const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                                  child:
                                                                  FFButtonWidget(
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'Button pressed ...');
                                                                    },
                                                                    text:
                                                                    '문제 추가하기',
                                                                    icon: Icon(
                                                                      Icons
                                                                          .add_circle_outline,
                                                                      size: 15,
                                                                    ),
                                                                    options:
                                                                    FFButtonOptions(
                                                                      width:
                                                                      130,
                                                                      height:
                                                                      40,
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .primaryColor,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                          .subtitle2
                                                                          .override(
                                                                        fontFamily:
                                                                        'Poppins',
                                                                        color:
                                                                        Colors.white,
                                                                      ),
                                                                      borderSide:
                                                                      BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                        1,
                                                                      ),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child:
                                                            TextFormField(
                                                              controller:
                                                              textController5,
                                                              onChanged: (_) =>
                                                                  EasyDebounce
                                                                      .debounce(
                                                                    'textController5',
                                                                    Duration(
                                                                        milliseconds:
                                                                        2000),
                                                                        () => setState(
                                                                            () {}),
                                                                  ),
                                                              autofocus: true,
                                                              obscureText:
                                                              false,
                                                              decoration:
                                                              InputDecoration(
                                                                labelText: '태그',
                                                                enabledBorder:
                                                                UnderlineInputBorder(
                                                                  borderSide:
                                                                  BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width: 1,
                                                                  ),
                                                                  borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                        4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                        4.0),
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                UnderlineInputBorder(
                                                                  borderSide:
                                                                  BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width: 1,
                                                                  ),
                                                                  borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                        4.0),
                                                                    topRight: Radius
                                                                        .circular(
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
                                                                    topLeft: Radius
                                                                        .circular(
                                                                        4.0),
                                                                    topRight: Radius
                                                                        .circular(
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
                                                                    topLeft: Radius
                                                                        .circular(
                                                                        4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                        4.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child:
                                                            TextFormField(
                                                              controller:
                                                              textController6,
                                                              onChanged: (_) =>
                                                                  EasyDebounce
                                                                      .debounce(
                                                                    'textController6',
                                                                    Duration(
                                                                        milliseconds:
                                                                        2000),
                                                                        () => setState(
                                                                            () {}),
                                                                  ),
                                                              autofocus: true,
                                                              obscureText:
                                                              false,
                                                              decoration:
                                                              InputDecoration(
                                                                labelText:
                                                                '출제자 코멘트',
                                                                enabledBorder:
                                                                UnderlineInputBorder(
                                                                  borderSide:
                                                                  BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width: 1,
                                                                  ),
                                                                  borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                        4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                        4.0),
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                UnderlineInputBorder(
                                                                  borderSide:
                                                                  BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width: 1,
                                                                  ),
                                                                  borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                        4.0),
                                                                    topRight: Radius
                                                                        .circular(
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
                                                                    topLeft: Radius
                                                                        .circular(
                                                                        4.0),
                                                                    topRight: Radius
                                                                        .circular(
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
                                                                    topLeft: Radius
                                                                        .circular(
                                                                        4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                        4.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1,
                                                            ),
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
                                      ],
                                    ),
                                  ),


                              ),
    );

  }
}

