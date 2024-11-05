import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/custom_widgets/custom_widgets.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';


class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _advancedDrawerController = AdvancedDrawerController();
  int _currentIndex = 0;
  final List<Map<String, dynamic>> cardData = [
    {'title': 'Mobile Application Development', 'heading': 'Mobile Application Development\n','description': '\n   - UI Designs \n\n   - Splash Screen Designs \n\n   - Custom Animations Designs \n\n   - APIs Integration \n\n   - Maps Integration', 'imagePath': 'assets/images/development.png', 'height': 240, 'width': 300},
    {'title': 'UI/UX Designing', 'heading': 'UI/UX Designing\n', 'description': '\n   - Figma Designs \n\n   - Web & App Designs \n\n   - Responsive Designs \n\n   - Interactive Designs \n\n   - Promo Videos', 'imagePath': 'assets/images/uiuxdesign.png', 'height': 240, 'width': 300},
    {'title': 'Rapid Prototyping', 'heading': 'Rapid Prototyping\n','description': '\n   - MVP Development \n\n   - UI Mockups \n\n   - Interactive Prototypes \n\n   - User Testing \n\n   - Usability Analysis', 'imagePath': 'assets/images/prototyping.png', 'height': 240, 'width': 300},
    {'title': 'GitHub-Open Source', 'heading': 'GitHub-Open Source\n','description': '\n   - Open Source GitHub Projects \n\n   - Awesome README.md \n\n   - Workflow Automation \n\n   - Header Images \n\n   - Security Audits', 'imagePath': 'assets/images/github.png', 'height': 240, 'width': 300},
  ];
  final List<Map<String, dynamic>> contactCardData = [
    {'contactImagePath': 'assets/images/gmaillogo.png', 'contactTitle': 'Gmail', 'contactUrl': 'mailto:junaidkhan.tech9155@gmail.com'},
    {'contactImagePath': 'assets/images/whatsapplogoimage.png', 'contactTitle': 'WhatsApp', 'contactUrl': 'https://wa.me/923156818180'},
    {'contactImagePath': 'assets/images/linkedinlogo.png', 'contactTitle': 'LinkedIn', 'contactUrl': 'https://www.linkedin.com/in/junaid-khan-27b889223/'},
    {'contactImagePath': 'assets/images/facebooklogoimage.png', 'contactTitle': 'Facebook', 'contactUrl': 'https://www.facebook.com/profile.php?id=100027949547661'},
    {'contactImagePath': 'assets/images/instalogo.png', 'contactTitle': 'Instagram', 'contactUrl': 'https://www.instagram.com/mr_junaidk/?next=%2F'},
    {'contactImagePath': 'assets/images/twitterlogo.png', 'contactTitle': 'Twitter', 'contactUrl': 'https://x.com/mr_junaidk'},
  ];
  final List<Map<String, dynamic>> dataListServices = [
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
  final List<Map<String, dynamic>> dataListProjects = [
    {
      'title': 'WhatsApp UI Clone',
      'imagePath': 'assets/images/whatsapplogoimage.png',
      'description': 'A modern recreation of WhatsApp latest user interface, mimicking its design and interactions closely.',
      'urlGitHub': 'https://github.com/mr-junaidk',
      'urlDrive': 'https://drive.google.com/file/d/1j1aYMsLzj4RkP7w8MXyxqf8okUq9Mx4R/view?usp=drive_link'
    },
    {
      'title': 'FaceBook UI Clone',
      'imagePath': 'assets/images/facebooklogoimage.png',
      'description': 'A faithful replica of Facebook interface, showcasing popular layouts and user interactions.',
      'urlGitHub': 'https://github.com/mr-junaidk',
      'urlDrive': 'https://drive.google.com/file/d/1sx1cqRV0hhW-ChJQQwAtbKCuuZrqEbwn/view?usp=drive_link'
    },
    {
      'title': 'Food Delivery Application',
      'imagePath': 'assets/images/fooddeliverylogoimage.png',
      'description': 'An app designed to streamline food ordering, including browsing, cart, and checkout functionality.',
      'urlGitHub': 'https://github.com/mr-junaidk',
      'urlDrive': 'https://drive.google.com/file/d/1dmsZyXDLcxXT3wvoSQvel0TqvUqBHPX8/view?usp=drive_link'
    },
    {
      'title': 'Alpha Application',
      'imagePath': 'assets/images/alpha.png',
      'description': 'A versatile app combining project management tools and e-commerce features for a comprehensive user experience.',
      'urlGitHub': 'https://github.com/mr-junaidk',
      'urlDrive': ''
    },
    {
      'title': 'Tourism Application',
      'imagePath': 'assets/images/tourismlogoimage.png',
      'description': 'A tourism guide app featuring popular destinations, travel info, and itinerary planning.',
      'urlGitHub': 'https://github.com/mr-junaidk',
      'urlDrive': ''
    },
    {
      'title': 'Portfolio Application',
      'imagePath': 'assets/images/portfoliologoimage.png',
      'description': 'A personal portfolio app displaying my background, skills, and services offered in a clean, user-friendly interface.',
      'urlGitHub': 'https://github.com/mr-junaidk',
      'urlDrive': ''
    },
    {
      'title': 'User Profile UI',
      'imagePath': 'assets/images/userprofilelogoimage.png',
      'description': 'A customizable user profile interface template, ready for integration into various applications.',
      'urlGitHub': 'https://github.com/mr-junaidk',
      'urlDrive': 'https://drive.google.com/file/d/1CKu5vXRM_-mwjxY-fuK-zn8PItuEDI4u/view?usp=drive_link'
    },
    {
      'title': 'WhatsApp UI Clone',
      'imagePath': 'assets/images/whatsapplogoimage.png',
      'description': 'A classic WhatsApp UI clone replicating the design and feel of its earlier version for nostalgic appeal.',
      'urlGitHub': 'https://github.com/mr-junaidk',
      'urlDrive': 'https://drive.google.com/file/d/10V4WssP67wTIZ8KK_yvcRWr6eMbcdCaf/view?usp=drive_link'
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('WELCOME TO MY PORTFOLIO! ',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Spicy Rice',
                                    color: Color(0xff1A1926)
                                ),
                              ),
                            ),
                            Image.asset('assets/hi.gif', height: 30, width: 30,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 16),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 10),
                                  blurRadius: 20,
                                )
                              ],
                            ),
                            child: const Image(
                                height: 150,
                                width: 280,
                                image: AssetImage('assets/images/logo.png')),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8, left: 16),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Meet Junaid Khan, a Passionate \nFlutter Developer', style: TextStyle(fontSize: 18, fontFamily: 'Nunito Regular', fontWeight: FontWeight.bold,color: Color(0xff4F4141)),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 16),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: const TextSpan(
                              text: 'Turning Every Industry\'s ',
                              style: TextStyle(color: Color(0xff1A1926), fontFamily: 'Nunito Bold', fontSize: 22),
                              children: <TextSpan>[
                                TextSpan(text: 'Vision ', style: TextStyle(fontFamily: 'Nunito Bold', fontSize: 24, color: Color(0xff605B95))),
                                TextSpan(text: '\ninto ', style: TextStyle(fontFamily: 'Nunito Bold', fontSize: 22, color: Color(0xff1A1926))),
                                TextSpan(text: 'Reality', style: TextStyle(fontFamily: 'Nunito Bold', fontSize: 24, color: Color(0xff605B95))),
                                TextSpan(text: '!', style: TextStyle(fontFamily: 'Nunito Bold', fontSize: 22, color: Color(0xff1A1926))),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0, 10),
                                        blurRadius: 20,
                                      )
                                    ],
                                  ),
                                  child: SvgPicture.asset('assets/images/fiverrIcon.svg', height: 90, width: 50,)),
                            ),
                            InkWell(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff00BF00).withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: const Center(
                                      child: Text('Best Seller', style: TextStyle(fontSize: 12, fontFamily: 'Nunito Bold', color: Color(0xff00BF00),),),
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Image(
                                          height: 40,
                                          width: 70,
                                          image: AssetImage('assets/images/fiverrlogo.png')),
                                      SizedBox(width: 8,),
                                      Icon(Icons.star, size: 24, color: Color(0xffd5c846),),
                                      Icon(Icons.star, size: 24, color: Color(0xffd5c846)),
                                      Icon(Icons.star, size: 24, color: Color(0xffd5c846)),
                                      Icon(Icons.star, size: 24, color: Color(0xffd5c846)),
                                      Icon(Icons.star, size: 24, color: Color(0xffd5c846))
                                    ],
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text: '(',
                                      style: TextStyle(color: Color(0xff1A1926), fontFamily: 'Nunito Regular', fontSize: 15),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Click to see ', style: TextStyle(fontFamily: 'Nunito Regular', fontSize: 15, color: Color(0xff637085), decoration: TextDecoration.underline)),
                                        TextSpan(text: '450 Reviews', style: TextStyle(fontFamily: 'Nunito Regular', fontSize: 15, color: Color(0xff060609), decoration: TextDecoration.underline)),
                                        TextSpan(text: ')', style: TextStyle(fontFamily: 'Nunito Regular', fontSize: 15, color: Color(0xff1A1926),)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              onTap: (){
                                setState(() {

                                });
                                launchUrlString('https://www.fiverr.com/mr_junaidk/do-android-and-ios-development-using-flutter');
                              },
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0, 10),
                                        blurRadius: 20,
                                      )
                                    ],
                                  ),
                                  child: SvgPicture.asset('assets/images/upworkIcon.svg', height: 100, width: 70,)),
                            ),
                            InkWell(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff1A1926).withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: const Center(
                                      child: Text('Best Seller', style: TextStyle(fontSize: 12, fontFamily: 'Nunito Bold', color: Color(0xff1A1926),),),
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Image(
                                          height: 40,
                                          width: 80,
                                          image: AssetImage('assets/images/upworklogo.png')),
                                      Icon(Icons.star, size: 24, color: Color(0xffd5c846),),
                                      Icon(Icons.star, size: 24, color: Color(0xffd5c846)),
                                      Icon(Icons.star, size: 24, color: Color(0xffd5c846)),
                                      Icon(Icons.star, size: 24, color: Color(0xffd5c846)),
                                      Icon(Icons.star, size: 24, color: Color(0xffd5c846))
                                    ],
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text: '(',
                                      style: TextStyle(color: Color(0xff1A1926), fontFamily: 'Nunito Regular', fontSize: 15),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Click to see ', style: TextStyle(fontFamily: 'Nunito Regular', fontSize: 15, color: Color(0xff637085), decoration: TextDecoration.underline)),
                                        TextSpan(text: '500 Reviews', style: TextStyle(fontFamily: 'Nunito Regular', fontSize: 15, color: Color(0xff060609), decoration: TextDecoration.underline)),
                                        TextSpan(text: ')', style: TextStyle(fontFamily: 'Nunito Regular', fontSize: 15, color: Color(0xff1A1926),)),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                              onTap: (){
                                setState(() {

                                });
                                launchUrlString('https://www.upwork.com/freelancers/~018204f4d6b3af7e76');
                              },
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 32),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: InkWell(
                                child: Container(
                                  height: 45,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff075E54),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0, 10),
                                        blurRadius: 20,
                                      )
                                    ],
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Row(
                                      children: [
                                        Icon(FontAwesomeIcons.whatsapp, size: 28, color: Color(0xffFFFFFF),),
                                        SizedBox(width: 5,),
                                        Text('Chat with me', style: TextStyle(fontSize: 18, fontFamily: 'Nunito Bold', color: Color(0xffFFFFFF)),)
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: (){
                                  setState(() {

                                  });
                                  launchUrlString('https://wa.me/923156818180');
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 7),
                              child: InkWell(
                                child: Container(
                                  height: 45,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff3886D1),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0, 10),
                                        blurRadius: 20,
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset('assets/images/googlemeet.svg', height: 32, width: 32, color: const Color(0xffFFFFFF),),
                                        const SizedBox(width: 5,),
                                        const Text('Book meeting', style: TextStyle(fontSize: 18, fontFamily: 'Nunito Bold', color: Color(0xffFFFFFF)),)
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: (){
                                  setState(() {

                                  });
                                  launchUrlString('https://workspace.google.com/products/meet/');
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      const Center(
                        child: Text('About Me',
                          style: TextStyle(
                              fontSize: 36,
                              fontFamily: 'Spicy Rice',
                              color: Color(0xff1A1926)
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 18),
                        child: Text('I am a dedicated Flutter Developer eager to contribute in an innovative, collaborative, and growth-oriented environment. With a passion for mobile development, I aim to bring creative solutions to impactful projects and continually refine my skills in a company that values continuous learning and development.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Nunito Bold',
                              color: Color(0xff637085)
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 16),
                            child: Container(
                              height: 210,
                              width: 170,
                              decoration: const BoxDecoration(
                              ),
                              child: const Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/profile.png')),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 10,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Junaid Khan",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'Spicy Rice',
                                      color: Color(0xff1A1926)
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.play,
                                      color: Color(0xff1A1926),
                                      size: 18,
                                    ),
                                    AnimatedTextKit(
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          ' Flutter Developer',
                                          textStyle: const TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'Spicy Rice',
                                              color: Color(0xff1A1926)
                                          ),
                                          speed: const Duration(milliseconds: 50),
                                        ),
                                      ],
                                      repeatForever: true,
                                      isRepeatingAnimation: true,
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: Row(
                                    children: [
                                      Image(
                                          height: 30,
                                          width: 100,
                                          image: AssetImage('assets/images/flutterlogo.png')),
                                      SizedBox(width: 5,),
                                      Image(
                                          height: 30,
                                          width: 40,
                                          image: AssetImage('assets/images/verifiedlogo.png')),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: SizedBox(
                                      height: 105,
                                      width: 185,
                                      child: Text('Junaid Khan, a Flutter Developer, bring a focus on innovation and quality, delivering dynamic and well-crafted mobile experiences that drive impact and user satisfaction.',
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontFamily: 'Nunito SemiBold',
                                            color: Color(0xff637085)),)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Divider(thickness: 2, color: Color(0xffE3E5E8),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 28, top: 16, bottom: 32),
                        child: Column(
                          children: [
                            const Align(
                                alignment: Alignment.topLeft,
                                child: Text('Looking for Flutter Development Expert?', style: TextStyle(fontSize: 20, fontFamily: 'Spicy Rice', color: Color(0xff1A1926)),)),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset('assets/images/linkedin.svg', height: 45, width: 45,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0, top: 2),
                                        child: InkWell(
                                          child: const Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('LinkedIn', style: TextStyle(fontSize: 18, fontFamily: 'Nunito Bold', color: Color(0xff0A66C2)),),
                                              Text('2k+ followers', style: TextStyle(fontSize: 15, fontFamily: 'Nunito SemiBold', color: Color(0xff637085), decoration: TextDecoration.underline),)
                                            ],
                                          ),
                                          onTap: (){
                                            setState(() {

                                            });
                                            launchUrlString('https://www.linkedin.com/in/junaid-khan-27b889223/');
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32),
                                    child: InkWell(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SvgPicture.asset('assets/images/fiverr2.svg', height: 28, width: 45,),
                                          const Text('100 orders completed', style: TextStyle(fontSize: 15, fontFamily: 'Nunito SemiBold', color: Color(0xff637085), decoration: TextDecoration.underline),)
                                        ],
                                      ),
                                      onTap: (){
                                        setState(() {

                                        });
                                        launchUrlString('https://www.fiverr.com/mr_junaidk/do-android-and-ios-development-using-flutter');
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      const Image(
                                          height: 45,
                                          width: 45,
                                          image: AssetImage('assets/images/flutter.png')),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0, top: 2),
                                        child: InkWell(
                                          child: const Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Flutter', style: TextStyle(fontSize: 18, fontFamily: 'Nunito Bold', color: Color(0xff49AAF7)),),
                                              Text('Since 2022', style: TextStyle(fontSize: 15, fontFamily: 'Nunito SemiBold', color: Color(0xff637085), decoration: TextDecoration.underline),)
                                            ],
                                          ),
                                          onTap: (){
                                            setState(() {

                                            });
                                            launchUrlString('https://www.meetup.com/flutter-islamabad/');
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: InkWell(
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image(
                                              height: 28,
                                              width: 90,
                                              image: AssetImage('assets/images/upworklogo2.png')),
                                          Text('100 orders completed', style: TextStyle(fontSize: 15, fontFamily: 'Nunito SemiBold', color: Color(0xff637085), decoration: TextDecoration.underline),)
                                        ],
                                      ),
                                      onTap: (){
                                        setState(() {

                                        });
                                        launchUrlString('https://www.upwork.com/freelancers/~018204f4d6b3af7e76');
                                      },
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('Technologies I use :)', style: TextStyle(fontSize: 38, fontFamily: 'Spicy Rice', color: Color(0xff1A1926)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16, top: 16),
                        child: SizedBox(
                          height: 270,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: dataListServices.length,
                            itemBuilder: (context, index) {
                              final data = dataListServices[index];
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
                        padding: EdgeInsets.only(top: 32),
                        child: Text('What I Can do :)', style: TextStyle(fontSize: 38, fontFamily: 'Spicy Rice', color: Color(0xff1A1926)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32,  bottom: 32),
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
                      ),
                      const Text('Projects Portfolio :)', style: TextStyle(fontSize: 38, fontFamily: 'Spicy Rice', color: Color(0xff1A1926)),),
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: SizedBox(
                          height: 500,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: dataListProjects.length,
                            itemBuilder: (context, index) {
                              final data = dataListProjects[index];
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 16, left: 16, top: 16),
                                    child: Container(
                                        height: 430,
                                        width: 380,
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
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 16, bottom: 16),
                                              child: Image(
                                                  height: 120,
                                                  width: 150,
                                                  image: AssetImage(data['imagePath'])),
                                            ),
                                            Text(data['title'], style: const TextStyle(fontSize: 18, fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, color: Color(0xff1A1926)),),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 16, bottom: 28),
                                              child: SizedBox(
                                                  height: 100,
                                                  width: 250,
                                                  child: Text(data['description'], textAlign: TextAlign.justify, style: const TextStyle(fontSize: 14, fontFamily: 'Nunito Bold', color: Color(0xff1A1926)),)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 15, top: 28),
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    child: Container(
                                                      height: 60,
                                                      width: 170,
                                                      decoration: BoxDecoration(
                                                        color: const Color(0xffF2F4F7),
                                                        borderRadius: BorderRadius.circular(8),
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            color: Colors.black,
                                                            blurRadius: 5,
                                                          )
                                                        ],
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets.only(left: 16),
                                                        child: Row(
                                                          children: [
                                                            Image(
                                                                height: 36,
                                                                width: 32,
                                                                image: AssetImage('assets/images/github.png')),
                                                            SizedBox(width: 10),
                                                            Text('GitHub', style: TextStyle(fontSize: 15,
                                                                fontFamily: 'Nunito Bold',
                                                                color: Color(0xff1A1926)),),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    onTap: (){
                                                      setState(() {

                                                      });
                                                      launchUrlString(data['urlGitHub']);
                                                    },
                                                  ),
                                                  const SizedBox(width: 10,),
                                                  InkWell(
                                                    child: Container(
                                                      height: 60,
                                                      width: 170,
                                                      decoration: BoxDecoration(
                                                        color: const Color(0xffF2F4F7),
                                                        borderRadius: BorderRadius.circular(8),
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            color: Colors.black,
                                                            blurRadius: 5,
                                                          )
                                                        ],
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets.only(left: 12),
                                                        child: Row(
                                                          children: [
                                                            Image(
                                                                height: 36,
                                                                width: 32,
                                                                image: AssetImage('assets/images/googledrive.png')),
                                                            SizedBox(width: 10),
                                                            Text('Google Drive', style: TextStyle(fontSize: 15,
                                                                fontFamily: 'Nunito Bold',
                                                                color: Color(0xff1A1926)),),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    onTap: (){
                                                      setState(() {

                                                      });
                                                      launchUrlString(data['urlDrive']);
                                                    },
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Column(
                          children: [
                            const Text('Contact Me :)', style: TextStyle(fontSize: 38, fontFamily: 'Spicy Rice', color: Color(0xff1A1926)),),
                            Padding(
                              padding: const EdgeInsets.only(top: 32,  bottom: 32),
                              child: CarouselSlider.builder(
                                itemCount: contactCardData.length,
                                options: CarouselOptions(
                                  height: 210,
                                  enlargeCenterPage: true,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                  },
                                ),
                                itemBuilder: (context, index, realIdx) {
                                  var data = contactCardData[index];
                                  return AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    transform: Matrix4.identity()..scale(_currentIndex == index ? 1.0 : 0.8),
                                    child: buildContactCard(
                                      data["contactImagePath"]!,
                                      data["contactTitle"]!,
                                      data["contactUrl"]!,
                                      context,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}










