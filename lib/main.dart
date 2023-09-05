import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'vazir',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            'رزومه من',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 5.0,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: _getBody(),
      ),
    );
  }

  //this function for main body and all components
  Widget _getBody() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              _getHeader(),
              SizedBox(height: 20.0),
              _getSocialIcon(),
              SizedBox(height: 20.0),
              _getSkillLables(),
              SizedBox(height: 20.0),
              _getResume(),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ],
    );
  }

  //this function for introducing myself
  Widget _getHeader() {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/Me.png'),
          radius: 100.0,
          backgroundColor: Colors.white,
        ),
        SizedBox(height: 20.0),
        Text(
          'رامتین مرادی',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          'برنامه نویس فلاتر',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          'عاشق برنامه نویسی و به چالش کشیدن خودم هستم',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }

  //this function for social app icon
  Widget _getSocialIcon() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blue[900],
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagram),
          color: Colors.purple,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blue,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.whatsapp),
          color: Colors.green,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
          color: Colors.black,
        ),
      ],
    );
  }

  //this function for all programming language I learned and worked
  Widget _getSkillLables() {
    var Lables = ['flutter', 'dart', 'java', 'kotlin', 'android'];
    return Row(
      children: [
        for (var skill in Lables)
          Container(
            width: 76.0,
            height: 120.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Card(
                elevation: 2.5,
                color: Colors.grey[300],
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('images/$skill.png'),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      '$skill'.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }

  //this function for my resume
  Widget _getResume() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        width: 350.0,
        color: Colors.grey[300],
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          child: Column(
            children: [
              Text(
                'سابقه کاری من',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(width: double.infinity),
                  Text(
                    'در شرکتی کار نکردم اما چندین پروژه برای خودم دارم که روی آن کار کردم که می توانید آن را روی گیت هاب من نگاه کنید. یک پروژه شخصی دارم که دارم روی آن کار میکنم و اون رو روی پلتفرم های دانلود اپلیکیشن انتشار میدم و لینک دانلود اون رو هم اینجا قرار میدم. قبلا مباحث جاوا و کاتلین رو کار کردم برای برنامه نویسی اندروید اما حالا دارم فلاتر کار میکنم و تمام تمرکز خودم رو روی این فریک ورک گذاشتم.',
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
