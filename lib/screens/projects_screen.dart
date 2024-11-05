import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:portfolio_app/custom_widgets/custom_widgets.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  final _advancedDrawerController = AdvancedDrawerController();
  final List<Map<String, dynamic>> dataList = [
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text('Projects Portfolio :)', style: TextStyle(fontSize: 38, fontFamily: 'Spicy Rice', color: Color(0xff1A1926)),)),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: SizedBox(
                            height: 650,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: dataList.length,
                              itemBuilder: (context, index) {
                                final data = dataList[index];
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 55, left: 16, top: 16, right: 16),
                                      child: Container(
                                          height: 370,
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
                                                padding: const EdgeInsets.only(top: 16),
                                                child: SizedBox(
                                                    height: 100,
                                                    width: 250,
                                                    child: Text(data['description'], textAlign: TextAlign.justify, style: const TextStyle(fontSize: 14, fontFamily: 'Nunito Bold', color: Color(0xff1A1926)),)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Row(
                                                  children: [
                                                    InkWell(
                                                      child: Container(
                                                        height: 60,
                                                        width: 165,
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
                                                        width: 165,
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
