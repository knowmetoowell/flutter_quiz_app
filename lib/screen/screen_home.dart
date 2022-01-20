import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return SafeArea(
        //safearea => 상단바, 휴대폰 아래를 침범하지 않음
        child: Scaffold(
      appBar: AppBar(
        title: Text('My Quiz App'),
        backgroundColor: Colors.deepOrange,
        leading: Container(), // appbar에서 좌측에있는 뒤로가기 버튼을 지우는 효과
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/quiz.jpeg',
              width: width * 0.8,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.024),
          ),
          Text(
            '플러터 퀴즈 앱',
            style: TextStyle(
              fontSize: width * 0.065,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '안녕하세요 이상원입니다',
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.048),
          ),
          _buildStep(width, 'regnioujearngjikaer'),
          _buildStep(width, 'regniorweagaerhaethujearngjikaer'),
          _buildStep(width, 'regniosdfsdfsersghrhrjerjnujearngjikaer'),
          Padding(
            padding: EdgeInsets.all(width * 0.048),
          ),
          Container(
            padding: EdgeInsets.only(bottom: width * 0.036),
            child: Center(
              child: ButtonTheme(
                  minWidth: width * 0.8,
                  height: height * 0.05,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: RaisedButton(
                    child: Text(
                      '지금 퀴즈 풀기',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.deepOrange,
                    onPressed: () {},
                  )),
            ),
          ),
        ],
      ),
    ));
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          width * 0.048, width * 0.024, width * 0.048, width * 0.024),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.check_box,
            size: width * 0.04,
          ),
          Padding(padding: EdgeInsets.only(right: width * 0.024)),
          Text(title),
        ],
      ),
    );
  }
}
