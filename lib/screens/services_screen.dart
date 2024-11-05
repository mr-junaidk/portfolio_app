import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio_app/custom_widgets/custom_widgets.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';


class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  final _advancedDrawerController = AdvancedDrawerController();
  int _currentIndex = 0;
  final List<Map<String, dynamic>> cardData = [
      {'title': 'Mobile Application Development', 'heading': 'Mobile Application Development\n','description': '\n   - UI Designs \n\n   - Splash Screen Designs \n\n   - Custom Animations Designs \n\n   - APIs Integration \n\n   - Maps Integration', 'imagePath': 'assets/images/development.png', 'height': 240, 'width': 300},
      {'title': 'UI/UX Designing', 'heading': 'UI/UX Designing\n', 'description': '\n   - Figma Designs \n\n   - Web & App Designs \n\n   - Responsive Designs \n\n   - Interactive Designs \n\n   - Promo Videos', 'imagePath': 'assets/images/uiuxdesign.png', 'height': 240, 'width': 300},
      {'title': 'Rapid Prototyping', 'heading': 'Rapid Prototyping\n','description': '\n   - MVP Development \n\n   - UI Mockups \n\n   - Interactive Prototypes \n\n   - User Testing \n\n   - Usability Analysis', 'imagePath': 'assets/images/prototyping.png', 'height': 240, 'width': 300},
      {'title': 'GitHub-Open Source', 'heading': 'GitHub-Open Source\n','description': '\n   - Open Source GitHub Projects \n\n   - Awesome README.md \n\n   - Workflow Automation \n\n   - Header Images \n\n   - Security Audits', 'imagePath': 'assets/images/github.png', 'height': 240, 'width': 300},
  ];
  final List<Map<String, dynamic>> dataList = [
    {
      'icon': 'flutter',
      'title': 'Flutter',
      'description': '- Basics (Widgets, Layouts, UI \n  Components, Custom Widgets)\n- State Management (Provider, GetX)\n- Networking and APIs\n- Animations (Default and Custom)\n- Testing and Optimization',
      'imageHeight': 80.0,
      'imageWidth': 80.0,
      'textColor': const Color(0xff49AAF7),
    },
    {
      'icon': 'dartlogo',
      'title': 'Dart',
      'description': '- Basics (Data Types, Loops, \n  Statements, Functions)\n- Asynchronous Programming\n- Object Oriented Programming',
      'imageHeight': 80.0,
      'imageWidth': 80.0,
      'textColor': const Color(0xff49AAF7),
    },
    {
      'icon': 'cpplogo',
      'title': 'C ++',
      'description': '- Basics (Data Types, Loops, \n  Statements, Functions)\n- Object Oriented Programming\n- Data Structure',
      'imageHeight': 80.0,
      'imageWidth': 80.0,
      'textColor': const Color(0xff49AAF7),
    },
    {
      'icon': 'figmalogo',
      'title': 'Figma',
      'description': '- Components\n- Frames\n- Prototyping\n- Styles\n- Plugins',
      'imageHeight': 80.0,
      'imageWidth': 80.0,
      'textColor': const Color(0xff352929).withOpacity(0.8),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: _advancedDrawerController,
      animationCurve: Curves.linear,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: false,
      rtlOpening: false,
      openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.zero,
      ),
      drawer: const MyCustomDrawer(),
      child: Scaffold(
          backgroundColor: const Color(0xffF2F4F7),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffF2F4F7),
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xffE3E5E8),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: SvgPicture.asset('assets/images/Menu.svg', height: 32, width: 32,),
                          onPressed: () {
                            _advancedDrawerController.showDrawer();
                          },
                        ),
                        const Text(
                          '< Junaid Khan/> ',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Autography',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Padding(
                         padding: EdgeInsets.only(left: 35),
                         child: Text('Technologies I use :)', style: TextStyle(fontSize: 38, fontFamily: 'Spicy Rice', color: Color(0xff1A1926)),),
                       ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: SizedBox(
                            height: 270,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: dataList.length,
                              itemBuilder: (context, index) {
                                final data = dataList[index];
                                return Padding(
                                  padding: const EdgeInsets.only(right: 30, left: 32, top: 16, bottom: 16),
                                  child: Center(
                                    child: Container(
                                      height: 300,
                                      width: 350,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF2F4F7),
                                        borderRadius: BorderRadius.circular(16),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 10,
                                          )
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 16, top: 16),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Image(
                                                  height: data['imageHeight'],
                                                    width: data['imageWidth'],
                                                    image: AssetImage('assets/images/${data['icon']}.png')),
                                              ),
                                              const SizedBox(width: 10,),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(data['title']!, style: TextStyle(fontSize: 50, fontFamily: 'Spicy Rice', color: data['textColor'],),),
                                                  SizedBox(
                                                      height: 150,
                                                      width: 240,
                                                      child: Text(data['description']!, style: const TextStyle(fontSize: 13, fontFamily: 'Nunito Bold', color: Color(0xff1A1926)),)),
                                                ],
                                              )],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 80, top: 32),
                          child: Text('What I Can do :)', style: TextStyle(fontSize: 38, fontFamily: 'Spicy Rice', color: Color(0xff1A1926)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16,  bottom: 32),
                          child: CarouselSlider.builder(
                            itemCount: cardData.length,
                            options: CarouselOptions(
                              height: 430,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            ),
                            itemBuilder: (context, index, realIdx) {
                              var data = cardData[index];
                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                transform: Matrix4.identity()..scale(_currentIndex == index ? 1.0 : 0.8),
                                child: buildFlipCard(
                                  data["title"]!,
                                  data["heading"]!,
                                  data["description"]!,
                                  data["imagePath"]!,
                                  _currentIndex == index ? 200 : 160,
                                  _currentIndex == index ? 200 : 160,
                                  context,
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}








