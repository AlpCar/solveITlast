import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../components/Lists.dart';
import '../../../Models/Config.dart';
import '../../components/candidate_widget.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import '../../flutter_flow/flutter_flow_drop_down.dart';
import '../../flutter_flow/flutter_flow_icon_button.dart';
import '../../flutter_flow/flutter_flow_radio_button.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';

import '../fke/demoQuizCreate1.dart';

class MultipleChoiceQuiz extends StatefulWidget {
  const MultipleChoiceQuiz({Key? key}) : super(key: key);

  @override
  _MultipleChoiceQuizState createState() => _MultipleChoiceQuizState();
}

class _MultipleChoiceQuizState extends State<MultipleChoiceQuiz> {
  // Init


  String? typeDropDown;
  TextEditingController? nameController1;
  String? categoryDropDown;
  TextEditingController? paragraphController;

  TextEditingController? _nameController;
  static List<String> friendsList = [];
  int choiceitems = 0;
  String? radioButtonValue1;
  TextEditingController? textController3;
  TextEditingController? textController4;
  TextEditingController? textController5;
  TextEditingController? textController6;
  String? radioButtonValue2;
  TextEditingController? answersController;
  double? questionDifficulty;
  TextEditingController? textController8;
  TextEditingController? textController9;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  // Add
  void addChoiceitem() {
    choiceList.add(createNewChoice(answersController!));
    radioList.add(createNewRadio());
    ++choiceitems;
    radioitems = choiceitems;
  }

  // Pop
  void popChoiceitem() {
    choiceList.removeLast();
    radioList.removeLast();
    if(choiceitems>0){
    --choiceitems;
    }
    radioitems = choiceitems;
  }
  List<Container> choiceList = [
    //createNewChoice(),
  ];

  List<Container> radioList = [
    //createNewRadio(),
  ];
  // _childrenList
  List<Widget> _choiceList() {
    return choiceList;
  }
  List<Widget> _radioList(){
    return radioList;
  }

  @override
  void initState() {
    super.initState();
    nameController1 = TextEditingController();
    paragraphController = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
    answersController = TextEditingController();
    textController8 = TextEditingController();
    textController9 = TextEditingController();
    _nameController = TextEditingController();
    /*testNameController = TextEditingController();
    contentController = TextEditingController();
    typeController = 'MULTIPLE_CHOICE';
    categoryController = "수능";
    difficultyController = 4;
    paragraphController = TextEditingController();
    explanationController = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();*/
  }

  @override
  void dispose() {
    nameController1?.dispose();
    paragraphController?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
    answersController?.dispose();
    textController8?.dispose();
    textController9?.dispose();
    _nameController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme
            .of(context)
            .primaryColor,
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
            radioitems = 0;
            Navigator.pop(context);
            Navigator.pop(context);
          },
        ),
        title: Text(
          '객관식 제작',
          style: FlutterFlowTheme
              .of(context)
              .title2
              .override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [
          FFButtonWidget(
            onPressed: () async {
              /*Config config = Config();
              GraphQLClient _client = config.clientToQuery();
              QueryResult result = await _client.mutate(
                MutationOptions(
                  document: gql(AuthQueries.createQuestionInput,),
                  variables: {
                    // "name": testNameController,
                    // "paragraph": paragraphController,
                    // "answers": answersController,
                    // "explanation": explanationController,
                    // "type": typeController,
                    // "questionCategory": categoryController,
                    // "questionDifficulty": difficultyController,
                  },
                ),
              );*/
             await Navigator.push(
               context,
               MaterialPageRoute(
                 builder: (context) =>
                     DemoQuizCreate1(),
               ),
             );

            },
            text: '확인',
            options: FFButtonOptions(
              width: 80,
              height: 40,
              color: FlutterFlowTheme
                  .of(context)
                  .primaryColor,
              textStyle: FlutterFlowTheme
                  .of(context)
                  .subtitle2
                  .override(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme
          .of(context)
          .primaryBackground,

      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 6, 12, 12),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /*Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: TextFormField(
                                  controller: nameController1,
                                  onChanged: (_) =>
                                      EasyDebounce.debounce(
                                        'nameController',
                                        Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                      ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: '제목',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
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
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return '제목을 입력하세요';
                                    }
                                    if (val.length < 1) {
                                      return '제목은 필수 입력란입니다.';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),*/
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: FlutterFlowDropDown(
                                  initialOption: typeDropDown ??= '객관식',
                                  options: TypeListItems.types,
                                  onChanged: (val){
                                    setState(() => typeDropDown = val);
                                  },
                                  width: 180,
                                  height: 50,
                                  textStyle: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                                  hintText: '문제 유형을 선택해주세요.',
                                  fillColor: FlutterFlowTheme
                                      .of(context)
                                      .secondaryBackground,
                                  elevation: 2,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0,
                                  borderRadius: 30,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 4),
                                  hidesUnderline: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        /*Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: FlutterFlowDropDown(
                                  initialOption: categoryDropDown ??= '수능',
                                  options: CategoryListItems.categories,
                                  onChanged: (val) {
                                    setState(() => categoryDropDown = val);
                                  },
                                  width: 180,
                                  height: 50,
                                  textStyle: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                                  hintText: '과목을 선택해주세요.',
                                  fillColor: FlutterFlowTheme
                                      .of(context)
                                      .secondaryBackground,
                                  elevation: 2,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0,
                                  borderRadius: 30,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 4),
                                  hidesUnderline: true,
                                ),
                              ),
                            ),
                          ],
                        ),*/
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: TextFormField(
                                  controller: paragraphController,
                                  onChanged: (_) =>
                                      EasyDebounce.debounce(
                                        'paragraphController',
                                        Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                      ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: '문제 내용',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    filled: true,
                                    fillColor: FlutterFlowTheme
                                        .of(context)
                                        .primaryBtnText,
                                  ),
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1,
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return '문제 내용을 입력해주세요.';
                                    }

                                    if (val.length < 1) {
                                      return '문제 내용은 필수 입력란입니다.';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize:MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '보기',
                                      style: FlutterFlowTheme.of(context).subtitle2,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          buttonSize: 46,
                                          icon: Icon(
                                            Icons.add_circle,
                                            color: FlutterFlowTheme.of(context).secondaryText,
                                            size: 20,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              addChoiceitem();
                                            });
                                          },
                                        ),
                                        Text(
                                          '$choiceitems',
                                          style: FlutterFlowTheme.of(context).bodyText1,
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          buttonSize: 46,
                                          icon: Icon(
                                            Icons.remove_circle_outline,
                                            color: FlutterFlowTheme.of(context).secondaryText,
                                            size: 20,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              popChoiceitem();
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: _choiceList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child:Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '정답',
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .title2
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(
                                              context)
                                              .primaryText,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: _radioList(),
                                          /*FlutterFlowRadioButton(
                                            options: ['정답1', '정답2', '정답3'].toList(),
                                            onChanged: (value) {
                                              setState(() => radioButtonValue2 = value);
                                            },
                                            optionHeight: 25,
                                            textStyle: FlutterFlowTheme
                                                .of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                            ),
                                            buttonPosition: RadioButtonPosition.left,
                                            direction: Axis.horizontal,
                                            radioButtonColor: Colors.blue,
                                            inactiveRadioButtonColor: Color(0x8A000000),
                                            toggleable: false,
                                            horizontalAlignment: WrapAlignment.start,
                                            verticalAlignment: WrapCrossAlignment.start,
                                          ),*/
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: TextFormField(
                                  controller: answersController,
                                  onChanged: (_) =>
                                      EasyDebounce.debounce(
                                        'answersController',
                                        Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                      ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: '해설 입력',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .primaryText,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .primaryText,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1,
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return '해설을 입력해주세요.';
                                    }

                                    if (val.length < 1) {
                                      return '해설은 필수 입력란입니다.';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '난이도',
                              style: FlutterFlowTheme
                                  .of(context)
                                  .bodyText1,
                            ),
                            RatingBar.builder(
                              onRatingUpdate: (newValue) =>
                                  setState(() => questionDifficulty = newValue),
                              itemBuilder: (context, index) =>
                                  Icon(
                                    Icons.star_rounded,
                                    color:
                                    FlutterFlowTheme
                                        .of(context)
                                        .secondaryColor,
                                  ),
                              direction: Axis.horizontal,
                              initialRating: questionDifficulty ??= 2.5,
                              unratedColor: Color(0xFF9E9E9E),
                              itemCount: 5,
                              itemSize: 40,
                              glowColor:
                              FlutterFlowTheme
                                  .of(context)
                                  .secondaryColor,
                            ),
                          ],
                        ),
                        /*Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: TextFormField(
                                  controller: textController8,
                                  onChanged: (_) =>
                                      EasyDebounce.debounce(
                                        'textController8',
                                        Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                      ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: '태그',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1,
                                ),
                              ),
                            ),
                          ],
                        ),*/
                        /*Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: TextFormField(
                                  controller: textController9,
                                  onChanged: (_) =>
                                      EasyDebounce.debounce(
                                        'textController9',
                                        Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                      ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: '출제자 코멘트',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1,
                                ),
                              ),
                            ),
                          ],
                        ),*/
                        /*Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: '문제 추가하기',
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    size: 15,
                                  ),
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),*/
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Container createNewChoice(TextEditingController candidatesController) {
  return Container(
    height: 60,
    width: 400,
    child: TextField(
      decoration: InputDecoration(
        labelText: '보기 입력',
      ),
    ),
  );
}

int radioitems = 0;

Container createNewRadio() {
  int _value = 1;
  int radio = radioitems+1;
  return Container(
    height: 80,
    width: 80,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('$radio'),
        Radio(
          value: _value--,
          groupValue: radioitems,
          onChanged: (int? _radioitems) {
            //**setState((){
              _radioitems = radioitems;
            //});
          },
        ),
      ],
    ),
    // Row(
    //   children: <Widget>[
    //     for(int i = 1;i<radioitems+1;i++)
    //       Container(
    //         height: 80,
    //         width: 50,
    //         child: Row(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             Text('$i.'),
    //             Radio(
    //               value: i,
    //               groupValue: radioitems,
    //               onChanged: (int? _radioitems) {
    //                 //**setState((){
    //                   radioitems = _radioitems!;
    //                 //});
    //               },
    //             )
    //             /*ListTile(
    //               leading: Radio(
    //                 value: i,
    //                 groupValue: _value,
    //                 onChanged: (int? value) {
    //                   setState((){
    //                     _value = value;
    //                   });
    //                 },
    //               ),
    //             ),*/
    //           ],
    //         ),
    //       ),
    //   ],
    // ),
  );
}


/*
class ControllerList extends StateNotifier<List<TextEditingController>> {
  final List<TextEditingController> _disposedList = [];
  ControllerList({String? text}) : super([TextEditingController(text: text)]);

  @override
  void dispose() {
    super.dispose();
    print("DISPOSE===========");
    for (final target in _disposedList) {
      target.dispose();
    }
  }

  void add({String? text}) {
    state = [...state, TextEditingController(text: text)];
  }

  void remove(int index) {
    if (index < 0 || index >= state.length) {
      return;
    }
    final target = state[index];
    _disposedList.add(target);
    state.remove(target);
    state = [...state];
  }
}

final _controllerListProvider = StateNotifierProvider.autoDispose<
    ControllerList, List<TextEditingController>>((ref) => ControllerList());

class _CandidateModifier extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final button = Center(
      child: IconButton(
        onPressed: () {
          ref.read(_controllerListProvider.notifier).add();
        },
        icon: Icon(Icons.add_circle_outline_outlined),
      ),
    );
    final list = ref.watch(_controllerListProvider);

    final listView = ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final candidateController = list[index];
        print("$index: ${candidateController.text}");
        return ListTile(
          leading: IconButton(
            onPressed: () {
              ref.read(_controllerListProvider.notifier).remove(index);
            },
            icon: Icon(Icons.do_disturb_on_sharp),
          ),
          title: TextField(
            controller: candidateController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "name $index / ${list.length}",
            ),
          ),
        );
      },
    );
    final answerView = ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        final candidateController = list[index];
        print("$index: ${candidateController.text}");
        return FlutterFlowRadioButton(
          options: ['$index번'].toList(),
          onChanged: (value) {
            // setState(() =>
            // isCorrectAnswer = value);
          },
          optionHeight: 25,
          textStyle: FlutterFlowTheme.of(context).bodyText1
              .override(
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
          buttonPosition: RadioButtonPosition.left,
          direction: Axis.vertical,
          radioButtonColor: Colors.blue,
          inactiveRadioButtonColor: Color(0x8A000000),
          toggleable: false,
          horizontalAlignment: WrapAlignment.start,
          verticalAlignment: WrapCrossAlignment.start,
        );
      },
    );
    */
/*final answerView = ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final candidateController = list[index];
        print("$index: ${candidateController.text}");
        return FlutterFlowRadioButton(
          options: ['$index번'].toList(),
          onChanged: (index) {
            setState(() => );
          },
          optionHeight: 25,
          textStyle: FlutterFlowTheme.of(context).bodyText1.override(
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
          buttonPosition: RadioButtonPosition.left,
          direction: Axis.horizontal,
          radioButtonColor: Colors.blue,
          inactiveRadioButtonColor: Color(0x8A000000),
          toggleable: false,
          horizontalAlignment: WrapAlignment.start,
          verticalAlignment: WrapCrossAlignment.start,
        );
      },


    );*/
/*


    return Column(
        children: [
          Expanded(child: listView),
          button,
          Text(
            '정답',
            style: FlutterFlowTheme.of(context).bodyText1,
          ),
          Expanded(child: answerView),
        ],

    );
  }
}*/
