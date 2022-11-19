import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:solveit_proto/View/components/homeQuizListCard.dart';
import 'package:solveit_proto/View/quiz/fke/demoVquiz_list_screen_widget.dart';

import '../Models/Config.dart';
import '../Models/queries.dart';
import 'pointshop/point_shop_list_widget.dart';
import 'profile/profile_screen_widget.dart';
import 'quiz/quiz_create_Init_Screen.dart';
import 'quiz/_quiz_create_screen_widget.dart';
import 'quiz/quiz_info_screen_widget.dart';
import 'quiz/quiz_list_screen_widget.dart';
import 'announce/announce_list_screen_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'quiz/quiz_type_list_screen_widget.dart';


class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  PageController? pageViewController;
  String? nicknameController;
  String? tierController;
  String? pointController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int quizItemCount = 3;

  void setUserInfo() async {
    Config config = Config();
    GraphQLClient _client = config.clientToQuery();
    QueryResult result = await _client.query(
      QueryOptions(
        document: gql(Queries.userInfo),
        variables: {
          "nickname": nicknameController,
          "tier": tierController,
          "point": pointController,
        },
      ),
    );
    if (!result.hasException) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    setUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreenWidget(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x25090F13),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileScreenWidget(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        ' csc@mail.com',
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF14181B),
                                              fontSize: 28,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              height: 24,
                              thickness: 2,
                              color: Color(0xFFF1F4F8),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '티어',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto Mono',
                                              color: Color(0xFF14181B),
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      Text(
                                        '3',
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF14181B),
                                              fontSize: 34,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '잔여 포인트',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto Mono',
                                              color: Color(0xFF14181B),
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '2770',
                                            style: FlutterFlowTheme.of(context)
                                                .title1
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF14181B),
                                                  fontSize: 34,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                          Padding (
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4, 0, 0, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.coins,
                                              color: Color(0xFF57636C),
                                              size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                    child: Container(
                      width: double.infinity,
                      height: 500,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      child: Stack(
                        children: [
                          PageView(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            scrollDirection: Axis.horizontal,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await launchURL(
                                      'http://localhost:3000');
                                },
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  width: MediaQuery.of(context).size.height * 1.0,
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await launchURL(
                                      'https://cse.yu.ac.kr/cse/index.do');
                                },
                                child: Image.asset(
                                  'assets/images/yucse_logo.png',
                                  width: MediaQuery.of(context).size.height * 1.0,
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await launchURL(
                                      'https://www.yu.ac.kr/main/index.do');
                                },
                                child: Image.asset(
                                  'assets/images/yumain_logo.png',
                                  width: MediaQuery.of(context).size.height * 1.0,
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.9, 1),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: SmoothPageIndicator(
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
                                effect: ExpandingDotsEffect(
                                  expansionFactor: 2,
                                  spacing: 8,
                                  radius: 16,
                                  dotWidth: 16,
                                  dotHeight: 4,
                                  dotColor: Color(0xFFE0E3E7),
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
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuizListScreenWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x3B000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.quora,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 40,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    '문제목록',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AnnounceListScreenWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x3A000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.announcement,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 40,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    '공지',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PointShopListWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x39000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.coins,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 40,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    '포인트샵',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuizCreateInitScreenWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x3A000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.edit_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 40,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    '문제생성',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          offset: Offset(0, -1),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                '새로운 문제',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget> [for(int i = 0; i<quizItemCount; i++)
                            HomeQuizListCardWidget(),
                          ]
                        ),

                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.92,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              color:
                              FlutterFlowTheme.of(context).primaryBackground,
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
                                        width: MediaQuery.of(context)
                                            .size
                                            .width *
                                            0.40,
                                        height: MediaQuery.of(context)
                                            .size
                                            .height *
                                            0.04,
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          '복습용 수능지문 빈칸채우기',
                                          style: FlutterFlowTheme.of(context)
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
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                    Icon(
                                      Icons.favorite_rounded,
                                      color:
                                      FlutterFlowTheme.of(context).alternate,
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
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
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
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.92,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              color:
                              FlutterFlowTheme.of(context).primaryBackground,
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
                                        width: MediaQuery.of(context)
                                            .size
                                            .width *
                                            0.40,
                                        height: MediaQuery.of(context)
                                            .size
                                            .height *
                                            0.04,
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          '프로그래머 어휘 학습문제',
                                          style: FlutterFlowTheme.of(context)
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
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                    Icon(
                                      Icons.favorite_rounded,
                                      color:
                                      FlutterFlowTheme.of(context).alternate,
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
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
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
