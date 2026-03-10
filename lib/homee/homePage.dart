import 'package:flutter/material.dart';
import 'package:h/Add/addpage.dart';
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
    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('home page initState');
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('don');
  }
  @override
  Widget build(BuildContext context) {print('tgt');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
    
  }
    void _navigateToAddpage()async{

final result=await Navigator.push(context, MaterialPageRoute(builder: (_)=>Addpage()));
if(result!=null){
  print('Text со второго экрана:$result');
}

  }
  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('ddi');
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('ghd');
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }
}
