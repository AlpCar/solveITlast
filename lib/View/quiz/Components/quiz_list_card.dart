import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizListCardWidget extends StatefulWidget {
  const QuizListCardWidget({Key? key}) : super(key: key);

  @override
  _QuizListCardWidgetState createState() => _QuizListCardWidgetState();
}

class _QuizListCardWidgetState extends State<QuizListCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsetsDirectional.fromSTEB(0, 1, 0, 1),
      child: ListTile(
        title: Text(
          '데모',
          style: FlutterFlowTheme.of(context).title3,
        ),
        subtitle: Text(
          'C SC',
          style:
          FlutterFlowTheme.of(context).subtitle2,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Color(0xFF303030),
          size: 20,
        ),
        tileColor: FlutterFlowTheme.of(context)
            .secondaryBackground,
        dense: false,
      ),
    );
  }
}
