import 'package:flutter/material.dart';
import 'card.dart';
import 'list.dart';
import 'image.dart';

void main() {
  runApp(const MyApp());
}


class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  final List<Widget> pages = const [
    MyHomePage(title: 'Home Page'),
    ListScreen(),
    CardScreen(),
    Collage(),
  ];

  final List<String> pageTitles = const [
    'Home',
    'List',
    'Card',
    'Image',
  ];

  final List<IconData> pageIcons = const [
    Icons.home,
    Icons.list,
    Icons.card_membership,
    Icons.image,
  ];

  int currentPageIndex = 0;

  void _onSelectDrawerItem(int index) {
    setState(() {
      currentPageIndex = index;
    });
    Navigator.pop(context); 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitles[currentPageIndex]),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text(
                'Navigation Drawer',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            // Este for va FUERA del DrawerHeader
            for (int i = 0; i < pageTitles.length; i++)
              ListTile(
                leading: Icon(pageIcons[i]),
                title: Text(pageTitles[i]),
                selected: currentPageIndex == i,
                onTap: () => _onSelectDrawerItem(i),
              ),
          ],
        ),
      ),

      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: List.generate(
          pageTitles.length,
          (i) => NavigationDestination(
            icon: Icon(pageIcons[i]),
            label: pageTitles[i],
          ),
        ),
      ),
      body: pages[currentPageIndex],  
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const NavigationExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 20) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Valor maximo de 20'))
        );
      } else if(_counter > 20) {
        _counter =20;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter < 0) {
        _counter = 0;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Valor minimo de 0'))
        );
      }
    });
  }

  void _restartCounter() {
    setState(() {
      _counter = 0;  
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Arturos Counter App',
            style: TextStyle(fontSize: 40),),
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: _restartCounter,
            tooltip: 'Restart',
            child: const Icon(Icons.restore),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
