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

import '../fke/demoQuizCreate2.dart';

class FillBlankQuiz extends StatefulWidget {
  const FillBlankQuiz({Key? key}) : super(key: key);

  @override
  _FillBlankQuizState createState() => _FillBlankQuizState();
}

class _FillBlankQuizState extends State<FillBlankQuiz> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController? nameController;
  String? typeDropDown;
  int? typeController;
  String? categoryDropDown;
  int? categoryController;
  TextEditingController? paragraphController;
  double? difficultyController;
  TextEditingController? testNameController;
  TextEditingController? answersController;
  TextEditingController? explanationController;

  int blankitems = 1;
  var candidateCnt = 0;
  var controllers = [];
  List<String> candidateController = [];
  List<Container> blankList = [
    createNewblank(),
  ];

  void addBlankitem(){
    blankList.add(createNewblank());
    ++blankitems;
  }
  void popBlankitem(){
    blankList.removeLast();
    if(blankitems>0){
      --blankitems;
    }
  }
  List<Widget> _blankList(){
    return blankList;
  }

  List<TextEditingController> _controllers = [];
  List<TextField> _fields = [];

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    paragraphController = TextEditingController();
    explanationController = TextEditingController();
    testNameController = TextEditingController();
    answersController = TextEditingController();
    typeController = 0;
    categoryController = 0 ;
    difficultyController = 0;

   /* controllers.forEach((candidateCnt) {
      var textEditingController = TextEditingController(text: candidateCnt);
      candidatesController.add(textEditingController);
    });*/
  }

  @override
  void dispose() {
    nameController?.dispose();
    paragraphController?.dispose();
    explanationController?.dispose();
    testNameController?.dispose();
    answersController?.dispose();
    typeController = 0;
    categoryController = 0 ;
    difficultyController = 0;

    for (final controller in _controllers) {
      controller.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar  (
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
          onPressed: () async {
            Navigator.pop(context);
            Navigator.pop(context);
          },
        ),
        title: Text(
          '빈칸 제작',
          style: FlutterFlowTheme.of(context).title2.override(
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
                  document: gql(QuestionQueries.createQuestion,),
                  variables: {
                    "name": testNameController,
                    "paragraph": paragraphController,
                    "answers": answersController,
                    "explanation": explanationController,
                    "type": typeController,
                    "questionCategory": categoryController,
                    "questionDifficulty": difficultyController,
                  },
                ),
              );*/
               await Navigator.push(
                context,
                 MaterialPageRoute(
                  builder: (context) =>
                      DemoQuizCreate2(),
                 ),
               );

            },
            text: '확인',
            options: FFButtonOptions(
              width: 80,
              height: 40,
              color: FlutterFlowTheme.of(context).primaryColor,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,

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
                                  controller: nameController,
                                  onChanged: (_) => EasyDebounce.debounce(
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
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
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
                                  initialOption: typeDropDown ??= '빈칸',
                                  options: TypeListItems.types,
                                  onChanged: (val) =>
                                      setState(() {
                                          typeDropDown = val;
                                          if(val == '객관식')
                                            typeController = 0;
                                          else if(val == '주관식')
                                            typeController = 1;
                                          else if(val == '빈칸')
                                            typeController = 2;
                                        }
                                      ),
                                  width: 180,
                                  height: 50,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                                  hintText: '문제 유형을 선택해주세요.',
                                  fillColor: FlutterFlowTheme.of(context)
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
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                                  hintText: '과목을 선택해주세요.',
                                  fillColor: FlutterFlowTheme.of(context)
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
                                  keyboardType: TextInputType.multiline,
                                  controller: paragraphController,
                                  onChanged: (_) => EasyDebounce.debounce(
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
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
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
                        /*Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: TextFormField(
                                  controller: textController3,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textController3',
                                    Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                  ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: '정답 내용',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return '정답 내용을 입력해주세요.';
                                    }

                                    if (val.length < 1) {
                                      return '정답 내용은 필수 입력란입니다.';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),*/
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
                                      '정답',
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
                                            setState((){
                                              addBlankitem();
                                            });
                                            //_addBlank();
                                          },
                                        ),
                                        Text(
                                          '$blankitems',
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
                                              popBlankitem();
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
                                  children: _blankList(),
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
                                  controller: explanationController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'explanationController',
                                    Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                  ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: '해설 내용',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
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
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            RatingBar.builder(
                              allowHalfRating: true,
                              onRatingUpdate: (newValue) =>
                                  setState(() => difficultyController = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color:
                                FlutterFlowTheme.of(context).secondaryColor,
                              ),
                              direction: Axis.horizontal,
                              initialRating: difficultyController ??= 2.5,
                              unratedColor: Color(0xFF9E9E9E),
                              itemCount: 5,
                              itemSize: 40,
                              glowColor:
                              FlutterFlowTheme.of(context).secondaryColor,
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
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textController8',
                                    Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                  ),
                                  autofocus: false,
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
                                  style: FlutterFlowTheme.of(context).bodyText1,
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
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textController9',
                                    Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                  ),
                                  autofocus: false,
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
                                  style: FlutterFlowTheme.of(context).bodyText1,
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
  /*Widget _addBlank() {
    return ListTile(
      title: Icon(Icons.add),
      onTap: () {
        final controller = TextEditingController();
        final field = TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "정답${_controllers.length + 1}",
          ),
        );

        setState(() {
          _controllers.add(controller);
          _fields.add(field);
        });
      },
    );
  }

  Widget _listView() {
    return ListView.builder(
      itemCount: _fields.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(5),
          child: _fields[index],
        );
      },
    );
  }*/
}

Container createNewblank(){
  return Container(
    height: 60,
    width: 400,
    child: TextField(
      decoration: InputDecoration(
        labelText: '정답 입력',
      ),
    ),
  );
}

