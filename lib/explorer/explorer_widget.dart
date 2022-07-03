import '../backend/backend.dart';
import '../components/image_expand_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorerWidget extends StatefulWidget {
  const ExplorerWidget({Key key}) : super(key: key);

  @override
  _ExplorerWidgetState createState() => _ExplorerWidgetState();
}

class _ExplorerWidgetState extends State<ExplorerWidget> {
  Completer<List<AnimeGirlWallpapersRecord>> _firestoreRequestCompleter;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 25,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Explorer',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Krona One',
                color: FlutterFlowTheme.of(context).secondaryColor,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.white,
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                          indicatorColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                          indicatorWeight: 1,
                          tabs: [
                            Tab(
                              text: 'Recent',
                            ),
                            Tab(
                              text: 'Random',
                            ),
                            Tab(
                              text: 'Popular',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              InkWell(
                                onTap: () async {
                                  await Future.delayed(
                                      const Duration(milliseconds: 1000));
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 2, 0, 0),
                                        child: FutureBuilder<
                                            List<AnimeGirlWallpapersRecord>>(
                                          future:
                                              queryAnimeGirlWallpapersRecordOnce(
                                            queryBuilder:
                                                (animeGirlWallpapersRecord) =>
                                                    animeGirlWallpapersRecord
                                                        .orderBy('date',
                                                            descending: true),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child: SpinKitFadingCircle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 50,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<AnimeGirlWallpapersRecord>
                                                gridViewrecentAnimeGirlWallpapersRecordList =
                                                snapshot.data;
                                            return InkWell(
                                              onTap: () async {
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 1000));
                                              },
                                              child: GridView.builder(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  crossAxisSpacing: 6,
                                                  mainAxisSpacing: 6,
                                                  childAspectRatio: 0.66,
                                                ),
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    gridViewrecentAnimeGirlWallpapersRecordList
                                                        .length,
                                                itemBuilder: (context,
                                                    gridViewrecentIndex) {
                                                  final gridViewrecentAnimeGirlWallpapersRecord =
                                                      gridViewrecentAnimeGirlWallpapersRecordList[
                                                          gridViewrecentIndex];
                                                  return InkWell(
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  1,
                                                              child:
                                                                  ImageExpandWidget(
                                                                imageexpandshet:
                                                                    gridViewrecentAnimeGirlWallpapersRecord
                                                                        .url,
                                                                dataRefence:
                                                                    gridViewrecentAnimeGirlWallpapersRecord,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      child: CachedNetworkImage(
                                                        imageUrl:
                                                            gridViewrecentAnimeGirlWallpapersRecord
                                                                .url,
                                                        width: 100,
                                                        height: 100,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await Future.delayed(
                                      const Duration(milliseconds: 1000));
                                },
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 2, 0, 0),
                                            child: FutureBuilder<
                                                List<
                                                    AnimeGirlWallpapersRecord>>(
                                              future: (_firestoreRequestCompleter ??=
                                                      Completer<
                                                          List<
                                                              AnimeGirlWallpapersRecord>>()
                                                        ..complete(
                                                            queryAnimeGirlWallpapersRecordOnce(
                                                          queryBuilder: (animeGirlWallpapersRecord) =>
                                                              animeGirlWallpapersRecord.where(
                                                                  'randon',
                                                                  isGreaterThanOrEqualTo:
                                                                      random_data
                                                                          .randomInteger(
                                                                              1,
                                                                              250)),
                                                          limit: 25,
                                                        )))
                                                  .future,
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child:
                                                          SpinKitFadingCircle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<AnimeGirlWallpapersRecord>
                                                    gridViewrandomAnimeGirlWallpapersRecordList =
                                                    snapshot.data;
                                                return InkWell(
                                                  onTap: () async {
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                1000));
                                                  },
                                                  child: GridView.builder(
                                                    padding: EdgeInsets.zero,
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 2,
                                                      crossAxisSpacing: 6,
                                                      mainAxisSpacing: 6,
                                                      childAspectRatio: 0.66,
                                                    ),
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        gridViewrandomAnimeGirlWallpapersRecordList
                                                            .length,
                                                    itemBuilder: (context,
                                                        gridViewrandomIndex) {
                                                      final gridViewrandomAnimeGirlWallpapersRecord =
                                                          gridViewrandomAnimeGirlWallpapersRecordList[
                                                              gridViewrandomIndex];
                                                      return InkWell(
                                                        onTap: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            context: context,
                                                            builder: (context) {
                                                              return Padding(
                                                                padding: MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                                child:
                                                                    Container(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  child:
                                                                      ImageExpandWidget(
                                                                    imageexpandshet:
                                                                        gridViewrandomAnimeGirlWallpapersRecord
                                                                            .url,
                                                                    dataRefence:
                                                                        gridViewrandomAnimeGirlWallpapersRecord,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl:
                                                                gridViewrandomAnimeGirlWallpapersRecord
                                                                    .url,
                                                            width: 100,
                                                            height: 100,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0.93),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 55,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              icon: Icon(
                                                Icons.update,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                size: 30,
                                              ),
                                              onPressed: () async {
                                                setState(() =>
                                                    _firestoreRequestCompleter =
                                                        null);
                                                await waitForFirestoreRequestCompleter(
                                                    minWait: 1000,
                                                    maxWait: 2000);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await Future.delayed(
                                      const Duration(milliseconds: 1000));
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 2, 0, 0),
                                        child: FutureBuilder<
                                            List<AnimeGirlWallpapersRecord>>(
                                          future:
                                              queryAnimeGirlWallpapersRecordOnce(
                                            queryBuilder:
                                                (animeGirlWallpapersRecord) =>
                                                    animeGirlWallpapersRecord
                                                        .orderBy('favorite',
                                                            descending: true),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child: SpinKitFadingCircle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 50,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<AnimeGirlWallpapersRecord>
                                                gridViewpopularAnimeGirlWallpapersRecordList =
                                                snapshot.data;
                                            return InkWell(
                                              onTap: () async {
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 1000));
                                              },
                                              child: GridView.builder(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  crossAxisSpacing: 6,
                                                  mainAxisSpacing: 6,
                                                  childAspectRatio: 0.66,
                                                ),
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    gridViewpopularAnimeGirlWallpapersRecordList
                                                        .length,
                                                itemBuilder: (context,
                                                    gridViewpopularIndex) {
                                                  final gridViewpopularAnimeGirlWallpapersRecord =
                                                      gridViewpopularAnimeGirlWallpapersRecordList[
                                                          gridViewpopularIndex];
                                                  return InkWell(
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  1,
                                                              child:
                                                                  ImageExpandWidget(
                                                                imageexpandshet:
                                                                    gridViewpopularAnimeGirlWallpapersRecord
                                                                        .url,
                                                                dataRefence:
                                                                    gridViewpopularAnimeGirlWallpapersRecord,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      child: CachedNetworkImage(
                                                        imageUrl:
                                                            gridViewpopularAnimeGirlWallpapersRecord
                                                                .url,
                                                        width: 100,
                                                        height: 100,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
      ),
    );
  }

  Future waitForFirestoreRequestCompleter({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _firestoreRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
