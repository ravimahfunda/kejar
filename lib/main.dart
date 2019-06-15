import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kejar',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          accentColor: Colors.lightBlueAccent),
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

  Widget _buildDrawer(){
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

  Widget _buildBody(){
    return ListView(
      children: <Widget>[
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(width: 224, child: Text("Learn together with Kejar", style: TextStyle(fontSize: 28), textAlign: TextAlign.center,)),
              SizedBox(height: 27,),
              RaisedButton(child: Text("Create your own Kejar")),
            ],
          ),
        ),
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
        onTap: onTabTapped, // new
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
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
        ],
      ),
    );
  }
}
