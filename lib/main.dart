import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:kejar/components/styled_button.dart';
import 'package:kejar/components/kejar_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kejar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        accentColor: Colors.orangeAccent,
        fontFamily: 'Montserrat',
      ),
      home: MyHomePage(title: 'Kejar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ravi Mahfunda"),
            accountEmail: Text("ravimahfunda@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Text(
                "R",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              backgroundColor: Colors.black26,
            ),
          ),
          ListTile(
            leading: Icon(FeatherIcons.compass),
            title: Text("Explore"),
          ),
          ListTile(
            leading: Icon(FeatherIcons.compass),
            title: Text("Enroller Kejar"),
          ),
          ListTile(
            leading: Icon(FeatherIcons.compass),
            title: Text("My Kejar"),
          ),
          ListTile(
            leading: Icon(FeatherIcons.compass),
            title: Text("Be Tutor"),
          ),
          Divider(),
          ListTile(
            leading: Icon(FeatherIcons.compass),
            title: Text("Account"),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 224,
                child: Text(
                  "Learn together with Kejar",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 27,
            ),
            StyledButton(
              (){},
              "Create your own Kejar",
              Colors.white,
              Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 15,),
          Row(
            children: <Widget>[
              StyledButton((){}, "Technology", Colors.lightBlue, Colors.white),
              SizedBox(width: 12,),
              StyledButton((){}, "Math", Colors.red, Colors.white),
              SizedBox(width: 12,),
              StyledButton((){}, "Science", Colors.orangeAccent, Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTopKejar(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Top Kejar this Week",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 15,),
          Row(
            children: <Widget>[
              KejarCard(
                  (){},
                "Android Development Basic Layouting and Styling",
                "TECHNOLOGIES",
                "Wed, 19 May 2019",
                "Chevalier Lab",
                Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOrganizer(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 15,),
          Row(
            children: <Widget>[
              StyledButton((){}, "Technology", Colors.lightBlue, Colors.white),
              SizedBox(width: 12,),
              StyledButton((){}, "Math", Colors.red, Colors.white),
              SizedBox(width: 12,),
              StyledButton((){}, "Science", Colors.orangeAccent, Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: <Widget>[
        _buildHeader(),
        SizedBox(height: 24,),
        _buildCategory(),
        SizedBox(height: 12,),
        _buildTopKejar(),
        SizedBox(height: 12,),
        _buildOrganizer(),
        SizedBox(height: 24,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(),
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
                icon: new Icon(FeatherIcons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(FeatherIcons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        // new
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black38,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
        ],
      ),
    );
  }
}
