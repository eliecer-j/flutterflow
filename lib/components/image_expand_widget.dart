import '../backend/backend.dart';
import '../components/report_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageExpandWidget extends StatefulWidget {
  const ImageExpandWidget({
    Key key,
    this.imageexpandshet,
    this.dataRefence,
  }) : super(key: key);

  final String imageexpandshet;
  final AnimeGirlWallpapersRecord dataRefence;

  @override
  _ImageExpandWidgetState createState() => _ImageExpandWidgetState();
}

class _ImageExpandWidgetState extends State<ImageExpandWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                widget.imageexpandshet,
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0, 1),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 10,
                  borderWidth: 1,
                  buttonSize: 50,
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.file_download,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 30,
                  ),
                  onPressed: () async {
                    await actions.imageSave(
                      widget.imageexpandshet,
                    );
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Successful'),
                          content: Text('Downloaded successfully'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Accept'),
                            ),
                          ],
                        );
                      },
                    );

                    final animeGirlWallpapersUpdateData = {
                      'download': FieldValue.increment(1),
                    };
                    await widget.dataRefence.reference
                        .update(animeGirlWallpapersUpdateData);
                  },
                ),
                FFButtonWidget(
                  onPressed: () async {
                    await actions.setWallpaper(
                      widget.imageexpandshet,
                    );
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('successful'),
                          content: Text('Applied Wallpaper'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Accept'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  text: 'APPLY',
                  options: FFButtonOptions(
                    width: 130,
                    height: 50,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Krona One',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
                if (!(FFAppState().favorite.contains(widget.imageexpandshet)) ??
                    true)
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 10,
                    borderWidth: 1,
                    buttonSize: 50,
                    fillColor: Colors.white,
                    icon: Icon(
                      Icons.favorite_border,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 30,
                    ),
                    onPressed: () async {
                      setState(() =>
                          FFAppState().addToFavorite(widget.imageexpandshet));
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Successful'),
                            content: Text('Add Favorite'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Accept'),
                              ),
                            ],
                          );
                        },
                      );

                      final animeGirlWallpapersUpdateData = {
                        'favorite': FieldValue.increment(1),
                      };
                      await widget.dataRefence.reference
                          .update(animeGirlWallpapersUpdateData);
                    },
                  ),
                if (FFAppState().favorite?.contains(widget.imageexpandshet) ??
                    true)
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 10,
                    borderWidth: 1,
                    buttonSize: 50,
                    fillColor: Colors.white,
                    icon: Icon(
                      Icons.favorite_sharp,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 30,
                    ),
                    onPressed: () async {
                      setState(() => FFAppState()
                          .removeFromFavorite(widget.imageexpandshet));
                    },
                  ),
              ],
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0, -0.86),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (!(FFAppState().favorite.contains(widget.imageexpandshet)) ??
                  true)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: InkWell(
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.of(context).viewInsets,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.35,
                              child: ReportWidget(
                                report: widget.dataRefence,
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.report,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      size: 45,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
