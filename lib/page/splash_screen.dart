part of 'pages.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: blueColor,
      body: Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Kunjungi.',style: whiteBoldTextStyle.copyWith(fontSize: 30)),
        ],
      )),
      bottomNavigationBar: SizedBox(
          height: 30,
          child: Center(child: Text('Untirta Developer 2023', style: whiteThinTextStyle,),)),
    );
  }
}
