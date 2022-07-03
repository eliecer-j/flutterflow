import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class FavoriteEmtpyWidget extends StatefulWidget {
  const FavoriteEmtpyWidget({Key key}) : super(key: key);

  @override
  _FavoriteEmtpyWidgetState createState() => _FavoriteEmtpyWidgetState();
}

class _FavoriteEmtpyWidgetState extends State<FavoriteEmtpyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
            child: Lottie.asset(
              'assets/lottie_animations/34109-anime-emotions-by-at-armchair-warrior-sticker-2.json',
              width: 150,
              height: 130,
              fit: BoxFit.cover,
              animate: true,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Text(
              'Touch the hearts to add \nimages to this list',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
