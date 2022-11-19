import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_theme.dart';

Container newCandidate(){
  TextEditingController? candidateController;
  return Container(
    width: 100,
    child:
    TextFormField(
      controller: candidateController,
      autofocus: true,
      obscureText: false,
      decoration: InputDecoration(
        hintText: '보기를 입력해주세요.',
        //hintStyle: FlutterFlowTheme.of(context).bodyText2,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
            width: 1,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
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
      //style: FlutterFlowTheme.of(context).bodyText1,
      maxLines: 1,
    ),
  );
}