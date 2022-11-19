import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../Models/Config.dart';
import '../../Models/queries.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'Login_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountScreenWidget extends StatefulWidget {
  const CreateAccountScreenWidget({Key? key}) : super(key: key);

  @override
  _CreateAccountScreenWidgetState createState() =>
      _CreateAccountScreenWidgetState();
}

class _CreateAccountScreenWidgetState extends State<CreateAccountScreenWidget> {
  TextEditingController? confirmPasswordController;

  late bool confirmPasswordVisibility;

  TextEditingController? emailAddressController;

  TextEditingController? nameController;

  TextEditingController? passwordController;

  late bool passwordVisibility;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordController = TextEditingController();
    confirmPasswordVisibility = false;
    emailAddressController = TextEditingController();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
        borderColor: Colors.transparent,
        borderRadius: 30,
        borderWidth: 1,
        buttonSize: 60,
        icon: Icon(
        Icons.arrow_back_rounded,
        color: FlutterFlowTheme.of(context).primaryText,
        size: 30,
        ),
        onPressed: () async {
        Navigator.pop(context);
        },
        ),
        title: Text(
        '',
        style: FlutterFlowTheme.of(context).title2.override(
        fontFamily: 'Poppins',
        color: FlutterFlowTheme.of(context).primaryText,
        fontSize: 22,
        ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
        ),
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Text(
                        '회원가입',
                        style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF0F1113),
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*100,
                  height: MediaQuery.of(context).size.height*0.1,),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x4D101213),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      controller: nameController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: '홍 길동',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyText2.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: '이름',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF0F1113),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x4D101213),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      controller: emailAddressController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'solveit@mail.com',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyText2.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: '이메일',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF0F1113),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x4D101213),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: !passwordVisibility,
                      decoration: InputDecoration(
                        labelText: '비밀번호',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyText2.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: '******',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => passwordVisibility = !passwordVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            passwordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Color(0xFF57636C),
                            size: 22,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF0F1113),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x4D101213),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      controller: confirmPasswordController,
                      obscureText: !confirmPasswordVisibility,
                      decoration: InputDecoration(
                        labelText: '비밀번호 확인',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyText2.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: '******',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => confirmPasswordVisibility =
                                !confirmPasswordVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            confirmPasswordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Color(0xFF57636C),
                            size: 22,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF0F1113),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      //GoRouter.of(context).ignoringAuthChange();
                      Config config = Config();
                      GraphQLClient _client = config.clientToQuery();
                      QueryResult result = await _client.mutate(
                        MutationOptions(
                          document: gql(Queries.signUp,),
                          variables: {
                            "ID" : emailAddressController!.text,
                            "hashedPW": passwordController!.text,
                            "name": nameController!.text
                          },
                          onCompleted: (dynamic result){
                            if(result!=null){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreenWidget(),
                                ),
                              );
                            }
                          }
                        ),
                      );
                    },
                    text: '완료',
                    options: FFButtonOptions(
                      width: 270,
                      height: 50,
                      color: Color(0xFF0F1113),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
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
