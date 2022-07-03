import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CopyrightWidget extends StatefulWidget {
  const CopyrightWidget({Key key}) : super(key: key);

  @override
  _CopyrightWidgetState createState() => _CopyrightWidgetState();
}

class _CopyrightWidgetState extends State<CopyrightWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryColor,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Anime Girls Wallpapers 4K is an application mobile with the majority of the published content being uploaded by user community or collected from a wide range of resorces including free images website.\n\nAlthough published content is believed to be authorized for sharing and personal use as desktop wallpapers either by the uploader or author or for being public domain licensed content, unless otherwise noted in the wallpapers description, all images on this application are copyrighted by their respective authors, therefore, if youy wish to use these images for any other use you must get permission form their respective authors.\n\nif you object to a wallpapers published on our site, please Contact us with the wallpaper URL and your cause for concern, whether i being your own wallpaper you\'ve created and do not wish to share o may it be something you might find explicit, unethical, inappropriate etc.\n\nAnime Girls Wallpapers 4K reserves the right to decide to host or not any wallpaper that was submitted by users,\n\nWe have no intention of violating anyyone\'s copyright, and take the matter very seriusly. If you are a copyright holder of a particular image, lease report it using Report Image',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
