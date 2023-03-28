part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  int selectedPage = 0;
  String condition = '';

  PageController pageController = PageController(initialPage: 0);
  final autoSizeGroup = AutoSizeGroup();




  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 180.0),
                child: PageView(
            controller: pageController,
            onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
            },
            children: const [
                HomePage(),
                ProfilePage(),
                ProfilePage(),
            ],
          ),
              )),
         Align(
            alignment: Alignment.topCenter,
            child: CustomBottomNavbar(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                });
                pageController.jumpToPage(selectedPage);
              },
            ),
          )
        ],
      ),

    );
  }
}

class CustomBottomNavbar extends StatefulWidget {
  final int? selectedIndex;
  final Function(int index)? onTap;

  const CustomBottomNavbar({super.key, this.selectedIndex, this.onTap});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 24),
    height: 202,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.white,
          ],
        ),
      ),
      child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(
                  text: 'Hallo,',
                  style: blueBoldTextStyle.copyWith(fontSize: 24),
                  children: [
                    TextSpan(
                        text: ' Bayu Alamsyah',
                        style: blueThinTextStyle.copyWith(fontSize: 24))
                  ])),
              Text('ada hal penting yang ingin kamu bicarakan?\naplikasi ini akan membantu kamu',style: blueThinTextStyle.copyWith(color: Colors.black),),
             SizedBox(height: 30,),
              Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
              InkWell(
                onTap: () {
                  if (widget.onTap != null) {
                    widget.onTap!(0);
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/ic_door${(widget.selectedIndex == 0) ? '.png' : '_normal.png'}'),
                          ),
                        )),
                    Text(
                      "Kunjungi",
                      style: blueThinTextStyle.copyWith(
                          color:
                              (widget.selectedIndex == 0) ? blueColor : greyColor),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (widget.onTap != null) {
                    widget.onTap!(1);
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/ic_ticket${(widget.selectedIndex == 1) ? '.png' : '_normal.png'}'),
                          ),
                        )),
                    Text(
                      'Antrian',
                      style: blueThinTextStyle.copyWith(
                          color:
                              (widget.selectedIndex == 1) ? blueColor : greyColor),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (widget.onTap != null) {
                    widget.onTap!(2);
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/ic_user${(widget.selectedIndex == 2) ? '.png' : '_normal.png'}'),
                          ),
                        )),
                    Text(
                      'Profil',
                      style: blueThinTextStyle.copyWith(
                          color:
                              (widget.selectedIndex == 2) ? blueColor : greyColor),
                    )
                  ],
                ),
              ),
        ],
      ),
            ],
          )),
    );
  }
}
