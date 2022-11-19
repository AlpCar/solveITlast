import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerCardWidget extends StatefulWidget {
  const AnswerCardWidget({Key? key}) : super(key: key);

  @override
  _AnswerCardWidgetState createState() => _AnswerCardWidgetState();
}

class _AnswerCardWidgetState extends State<AnswerCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
      child: Container(
        width: double.infinity,
        height:  MediaQuery.of(context).size.height*0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: FlutterFlowTheme.of(context).primaryText,
              offset: Offset(0, 0),
            )
          ],
          borderRadius: BorderRadius.circular(12),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                '1 번. ',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                '2',
                style: FlutterFlowTheme.of(context).bodyText2.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.9, 0),
                  child: FaIcon(
                    FontAwesomeIcons.squarePen,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
