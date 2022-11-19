import '../../question/question_answer_screen_widget.dart';
import '../_quiz_create_screen_widget.dart';
import '../quiz_info_screen_widget.dart';
import '../quiz_type_list_screen_widget.dart';
import '../../flutter_flow/flutter_flow_icon_button.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../search/search_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class QuizListScreenWidget extends StatefulWidget {
  const QuizListScreenWidget({Key? key}) : super(key: key);

  @override
  _QuizListScreenWidgetState createState() => _QuizListScreenWidgetState();
}

class _QuizListScreenWidgetState extends State<QuizListScreenWidget> {
  TextEditingController? textController;
  int length = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int listItems = 0;
  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
      child: InkWell(
        onTap: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  QuestionAnswerScreenWidget(),
            ),
          );
        },
        child: Container(
          width: 100,
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Colors.black,
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                12, 6, 12, 6),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      1, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '작성자 이름',
                        style:
                        FlutterFlowTheme.of(context)
                            .bodyText1,
                      ),
                      Text(
                        '0000-12-31',
                        style:
                        FlutterFlowTheme.of(context)
                            .bodyText1,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '질문 제목',
                      style: FlutterFlowTheme.of(context)
                          .bodyText1
                          .override(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment:
                      MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                              size: 16,
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional
                                  .fromSTEB(
                                  2, 0, 0, 0),
                              child: Text(
                                '01',
                                style:
                                FlutterFlowTheme.of(
                                    context)
                                    .bodyText1,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.comment_sharp,
                              color: Colors.black,
                              size: 16,
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional
                                  .fromSTEB(
                                  2, 0, 0, 0),
                              child: Text(
                                '02',
                                style:
                                FlutterFlowTheme.of(
                                    context)
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
        ),
      ),
    );
  }
}
