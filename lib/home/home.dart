import 'package:dosis_literaria/home/content/homeContent.dart';
import 'package:dosis_literaria/util/demo_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/drawer/drawerstate.dart';
import 'models/book/book.dart';

final Book auxbook = DemoValues.books[2];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final BannerAd homeBanner = BannerAd(
  //   adUnitId: '',
  //   size: AdSize.banner,
  //   request: AdRequest(),
  //   listener: AdListener(),
  // );

  // final AdListener listener = AdListener(
  //   // Called when an ad is successfully received.
  //   onAdLoaded: (Ad ad) => print('Ad loaded.'),
  //   // Called when an ad request failed.
  //   onAdFailedToLoad: (Ad ad, LoadAdError error) {
  //     ad.dispose();
  //     print('Ad failed to load: $error');
  //   },
  //   // Called when an ad opens an overlay that covers the screen.
  //   onAdOpened: (Ad ad) => print('Ad opened.'),
  //   // Called when an ad removes an overlay that covers the screen.
  //   onAdClosed: (Ad ad) => print('Ad closed.'),
  //   // Called when an ad is in the process of leaving the application.
  //   onApplicationExit: (Ad ad) => print('Left application.'),
  // );

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // homeBanner.load();
    CustomDrawer customDrawer;
    // final AdWidget adWidget = AdWidget(ad: homeBanner);

    // final Container adContainer = Container(
    //   alignment: Alignment.center,
    //   child: adWidget,
    //   width: homeBanner.size.width.toDouble(),
    //   height: homeBanner.size.height.toDouble(),
    // );

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return Scaffold(
      //bottomNavigationBar: adContainer,
      body: CustomDrawer(
        child: Content(customDrawer: customDrawer),
      ),
    );
  }
}
