import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flip_card/flip_card.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:portfolio_app/screens/home_screen.dart';
import 'package:portfolio_app/screens/about_screen.dart';
import 'package:portfolio_app/screens/contact_screen.dart';
import 'package:portfolio_app/screens/projects_screen.dart';
import 'package:portfolio_app/screens/services_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyCustomDrawer extends StatefulWidget {
  const MyCustomDrawer({super.key});

  @override
  _MyCustomDrawerState createState() => _MyCustomDrawerState();
}
class _MyCustomDrawerState extends State<MyCustomDrawer> {
  String _selectedMenuItem = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Color(0xffE3E5E8),
            width: 1,
          ),
        ),
      ),
      child: Drawer(
          backgroundColor: const Color(0xffF2F4F7),
        child: ListView(
          padding: const EdgeInsets.only(top: 75),
          children: [
            const Center(
              child: Text(
                '< Junaid Khan/> ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Autography',
                ),
              ),
            ),
            const SizedBox(height: 20,),
            buildMenuItem(FontAwesomeIcons.house, 'Home'),
            buildMenuItem(FontAwesomeIcons.userLarge, 'About'),
            buildMenuItem(FontAwesomeIcons.briefcase, 'Services'),
            buildMenuItem(FontAwesomeIcons.wrench, 'Projects'),
            buildMenuItem(FontAwesomeIcons.idCard, 'Contact'),
            buildMenuItem(FontAwesomeIcons.solidFile, 'Resume'),
          ],
        ),
      ),
    );
  }
  Widget buildMenuItem(IconData iconData, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 20),
        child: HoverContainer(
          height: 60,
          hoverDecoration: BoxDecoration(
            color: const Color(0xffE0E0E0),
            borderRadius: BorderRadius.circular(10),
          ),
          decoration: BoxDecoration(
            color: _selectedMenuItem == title ? const Color(0xff1A8EFF).withOpacity(0.1) : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            leading: Icon(iconData, size: 22, color: const Color(0xff1A1926)),
            title: Text(
              title,
              style: const TextStyle(
                color: Color(0xff1A1926),
                fontFamily: 'Nunito SemiBold',
                fontSize: 15,
              ),
            ),
            onTap: () {
              setState(() {
                _selectedMenuItem = title;
              });
              if (title == 'Home') {
                Navigator.push(context, MaterialPageRoute(builder: (covariant) => const HomeScreen()));
              }else if(title == 'About') {
                Navigator.push(context, MaterialPageRoute(builder: (covariant) => const AboutScreen()));
              }else if(title == 'Services') {
                Navigator.push(context, MaterialPageRoute(builder: (covariant) => const ServicesScreen()));
              }else if(title == 'Projects') {
                Navigator.push(context, MaterialPageRoute(builder: (covariant) => const ProjectsScreen()));
              }else if(title == 'Contact') {
                Navigator.push(context, MaterialPageRoute(builder: (covariant) => const ContactScreen()));
              }else if(title == 'Resume') {
                launchUrlString('https://drive.google.com/file/d/1rEr5UXZAlOwivyZMYLSUgMLqR8Tudg8T/view?usp=sharing');
              }
            },
          ),
        ),
      ),
    );
  }
}


Widget buildFlipCard(String title, String heading,String description, String imagePath, double height, double width, BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(left: 16),
    child: Center(
      child: FlipCard(
        front: Container(
          height: 400,
          width: 340,
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
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75),
                  child: Image(
                      height: height,
                      width: width,
                      image: AssetImage(imagePath)),
                ),
                Text(title, style: const TextStyle(fontSize: 18, fontFamily: 'Spicy Rice', color: Color(0xff1A1926)),)
              ],
            ),
          ),
        ),
        back: Container(
          height: 400,
          width: 340,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xffF2F4F7),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 280,
                decoration: const BoxDecoration(
                  color: Color(0xffF2F4F7),
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffE3E5E8),
                      width: 2,
                    ),
                  ),
                ),
                child: RichText(
                  text: TextSpan(
                    text: heading,
                    style: const TextStyle(color: Color(0xff1A1926), fontFamily: 'Spicy Rice', fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(text: description, style: const TextStyle(fontFamily: 'Nunito Bold', fontSize: 14, color: Color(0xff1A1926))),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      color: const Color(0xff7A0406),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: const Center(
                      child: Text('HIRE ME!', style: TextStyle(fontSize: 20, fontFamily: 'Nunito Bold', color: Color(0xffFFFFFF)),),
                    ),
                  ),
                ),
                onTap: (){
                  _showModal(context);
                },
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget buildContactCard(String contactImagePath, String contactTitle, String contactUrl, BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(16),
    child: InkWell(
      child: Container(
        height: 120,
        width: 180,
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
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Image(
                    height: 100,
                    width: 100,
                    image: AssetImage(contactImagePath)),
              ),
              Text(contactTitle, style: const TextStyle(fontSize: 18, fontFamily: 'Comfortaa', color: Color(0xff1A1926)),)
            ],
          ),
        ),
      ),
      onTap: (){
        launchUrlString(contactUrl);
      },
    ),
  );
}

void _showModal(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: const Color(0xffF2F4F7),
        content: SizedBox(
          height: 300,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('HIRE ME!', style: TextStyle(fontSize: 20, fontFamily: 'Nunito Bold', color: Color(0xff1A1926)),),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: Column(
                  children: [
                    for (var item in [
                      {'image': 'assets/images/linkedin.svg', 'label': 'LinkedIn', 'url': 'https://www.linkedin.com/in/junaid-khan-27b889223/'},
                      {'image': 'assets/images/fiverrIcon.svg', 'label': 'Fiverr', 'url': 'https://www.fiverr.com/mr_junaidk/do-android-and-ios-development-using-flutter'},
                      {'image': 'assets/images/upworkIcon.svg', 'label': 'Upwork', 'url': 'https://www.upwork.com/freelancers/~018204f4d6b3af7e76'}
                    ])
                      ContainerButton(item: item),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}


class ContainerButton extends StatelessWidget {
  final Map<String, dynamic> item;

  const ContainerButton({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        child: Container(
          height: 60,
          width: 180,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                SvgPicture.asset(item['image'], height: 36, width: 32,),
                const SizedBox(width: 10),
                Text(item['label'], style: const TextStyle(fontSize: 20,
                    fontFamily: 'Nunito Bold',
                    color: Color(0xff1A1926)),),
              ],
            ),
          ),
        ),
        onTap: () {
          launchUrlString(item['url']);
        },
      ),
    );
  }
}

