import 'package:flutter/material.dart';
import 'package:untitled/LayoutDemo.dart';

void main() {
  runApp(const MyApp());
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
        useMaterial3: true,
      ),
      // routes: routes,
       home: LayoutBasic(),
    );
  }
}


class LayoutBasic extends StatelessWidget {
  const LayoutBasic({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
         padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    // Cột 1
                    Expanded(

                      flex: 1,
                      child: Container(
                        width: 12,
                        height: 400,
                        color: Colors.blue,
                        // padding: const EdgeInsets.all(16.0),
                        child: const Center(
                          child: Text(
                            'Column 1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 100.0),
                    // Cột 2
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100,
                        height: 400,
                        color: Colors.green,
                        padding: EdgeInsets.all(16.0),
                        child: const Center(
                          child: Text(
                            'Column 23232',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the second layout
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextPage1()),
                  );
                },
                child: const Text('Go to Second Layout'),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Cột 1
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 12,
                        height: 400,
                        color: Colors.blue,
                        // padding: const EdgeInsets.all(16.0),
                        child: const Center(
                          child: Text(
                            'Column 1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 100.0),
                    // Cột 2
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100,
                        height: 400,
                        color: Colors.green,
                        padding: EdgeInsets.all(16.0),
                        child: const Center(
                          child: Text(
                            'Column 23232',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],

          ),
      ),
    );
  }
}
