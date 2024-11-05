import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/custom_widgets/custom_widgets.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';


class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final _advancedDrawerController = AdvancedDrawerController();

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
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: const Divider(thickness: 2, color: Color(0xffE3E5E8),),
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
