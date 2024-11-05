import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio_app/custom_widgets/custom_widgets.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';


class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _advancedDrawerController = AdvancedDrawerController();
   int _currentIndex = 0;
  final List<Map<String, dynamic>> contactCardData = [
    {'contactImagePath': 'assets/images/gmaillogo.png', 'contactTitle': 'Gmail', 'contactUrl': 'mailto:junaidkhan.tech9155@gmail.com'},
    {'contactImagePath': 'assets/images/whatsapplogoimage.png', 'contactTitle': 'WhatsApp', 'contactUrl': 'https://wa.me/923156818180'},
    {'contactImagePath': 'assets/images/linkedinlogo.png', 'contactTitle': 'LinkedIn', 'contactUrl': 'https://www.linkedin.com/in/junaid-khan-27b889223/'},
    {'contactImagePath': 'assets/images/facebooklogoimage.png', 'contactTitle': 'Facebook', 'contactUrl': 'https://www.facebook.com/profile.php?id=100027949547661'},
    {'contactImagePath': 'assets/images/instalogo.png', 'contactTitle': 'Instagram', 'contactUrl': 'https://www.instagram.com/mr_junaidk/?next=%2F'},
    {'contactImagePath': 'assets/images/twitterlogo.png', 'contactTitle': 'Twitter', 'contactUrl': 'https://x.com/mr_junaidk'},
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




/*Padding(
padding: const EdgeInsets.only(top: 16, left: 10),
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
child: Row(
children: [
Image(
height: 80,
width: 80,
image: AssetImage('assets/images/junaidhouse.png')),
Padding(
padding: const EdgeInsets.only(left: 10, top: 10),
child: Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Junaid Khan', style: TextStyle(fontSize: 22, fontFamily: 'Nunito Bold', color: Color(0xff1A1926),),),
Text('@mr_junaidk', style: TextStyle(
fontSize: 14, fontFamily: 'Nunito Bold', color: Color(0xff637085)
),),
Padding(
padding: const EdgeInsets.only(top: 8),
child: Row(
children: [
const Image(
height: 14,
width: 14,
image: AssetImage('assets/images/flutter.png')),
Padding(
padding: const EdgeInsets.only(left: 2),
child: RichText(
text: const TextSpan(
text: 'Flutter ',
style: TextStyle(color: Color(0xff49AAF7), fontFamily: 'Nunito Bold', fontSize: 14),
children: <TextSpan>[
TextSpan(text: 'Developer', style: TextStyle(fontFamily: 'Nunito Bold', fontSize: 14, color: Color(0xff0D47A1),)),
],
),
),
),
Padding(
padding: const EdgeInsets.only(left: 4),
child: Row(
children: [
Icon(
color: Color(0xff3886D1),
Icons.star, size: 18,),
Text('5.0', style: TextStyle(
fontSize: 14, fontFamily: 'Nunito Bold', color: Color(0xff637085)
),),
RichText(
text: const TextSpan(
text: ' .(',
style: TextStyle(color: Color(0xff637085), fontFamily: 'Nunito Bold', fontSize: 14),
children: <TextSpan>[
TextSpan(text: '450', style: TextStyle(fontFamily: 'Nunito Bold', fontSize: 14, color: Color(0xff637085),)),
TextSpan(text: ').', style: TextStyle(fontFamily: 'Nunito Regular', fontSize: 14, color: Color(0xff637085),)),
],
),
)
],
),
)
],
),
),
],
),
),
],
),
),
);*/
