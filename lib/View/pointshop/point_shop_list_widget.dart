import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../quiz/Components/quiz_list_card.dart';
import 'Widgets/coupon_item_card.dart';

class PointShopListWidget extends StatefulWidget {
  const PointShopListWidget({Key? key}) : super(key: key);

  @override
  _PointShopListWidgetState createState() => _PointShopListWidgetState();
}

class _PointShopListWidgetState extends State<PointShopListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  int itemCount = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '포인트 상점',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '잔여 포인트 : 0000',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    /*Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
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
                          padding: EdgeInsetsDirectional.fromSTEB(12, 6, 12, 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'ㅇㅇ학습 1만원 쿠폰',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 24,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      var confirmDialogResponse =
                                          await showDialog<bool>(
                                            context: context,
                                            builder:
                                                (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('쿠폰 구매'),
                                                content: Text(
                                                    '10000포인트를 사용하여 상품을 구매하시겠습니까?'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            false),
                                                    child: Text('아니요'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            true),
                                                    child: Text('네'),
                                                  ),
                                                ],
                                              );
                                            },
                                          ) ??
                                              false;
                                      if (confirmDialogResponse) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              '상품이 보관함에 저장되었습니다.',
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .title2
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .primaryBtnText,
                                              ),
                                            ),
                                            duration: Duration(
                                                milliseconds: 4000),
                                            backgroundColor:
                                            Color(0xFFB5AEFC),
                                          ),
                                        );
                                      }
                                    },
                                    text: '10,000pt',
                                    icon: FaIcon(
                                      FontAwesomeIcons.coins,
                                    ),
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle:
                                      FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),*/
                    for(int i = 0; i<itemCount;i++)
                      CouponShopListItem(),
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
