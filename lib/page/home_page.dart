part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          height: 180,
          width: double.infinity,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://wartabanjar.com/wp-content/uploads/2022/08/Screenshot_20220811-122956_Chrome.jpg",
                fit: BoxFit.cover,
              )));
    }
    Widget rektorat(){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 170,
              width: 250,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            Container(
              height: 170,
              width: 250,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            Container(
              height: 170,
              width: 250,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            Container(
              height: 170,
              width: 250,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),

          ],),
      );
    }
    Widget unitKerja(){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 170,
              width: 170,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            Container(
              height: 170,
              width: 170,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            Container(
              height: 170,
              width: 170,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            Container(
              height: 170,
              width: 170,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            )
          ],),
      );
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: greyColor.withOpacity(0.5),
        body: SingleChildScrollView(
          child: RefreshIndicator(
            onRefresh: () async {
              if (kDebugMode) {}
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rektorat', style: blueNormalTextStyle,),
                rektorat(),
                Text('Unit Kerja', style: blueNormalTextStyle,),
                unitKerja()
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: blueColor)),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.search,
                  color: blueColor,
                ),
                hintText: "Siapa yang anda ingin temui?",
                hintStyle:
                whiteThinTextStyle.copyWith(color: Colors.black45)),
          ),
        ),
      ),
    );
  }
}
