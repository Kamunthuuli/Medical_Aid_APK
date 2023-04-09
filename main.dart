import 'package:flutter/material.dart';
import 'package:medical_aid/Applications.dart';
import 'package:medical_aid/In_Patient.dart';
import 'package:medical_aid/Out_Patient.dart';
import 'package:medical_aid/Post_a_Question.dart';

import 'Premiums.dart';
import 'Schemes.dart';
import 'Settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

void navigateNextPage(BuildContext ctx)
{
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return const Settings();
  }));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical Aid'),
      ),
      //body:const HomePage(),
      body:Column(
        children: [
          Row(
            children: [
             
              Expanded(
                
                child: InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(1.0),
                    height: 141.6,
                    color: Colors.blue,
                    child: const Center(
                      child: Text('Applications'),
                    
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Applications()));
                  },
                ),
                
                
              ),
              Expanded(
                child: InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(1.0),
                    height: 141.6,
                    color: Colors.green,
                    child: const Center(
                      child: Text('Schemes'),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Schemes()));
                  },
                ),
              ),
            ],
            
          ),
          Row(
            children: [
              Expanded(
                
                child: InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(1.0),
                    height: 141.6,
                    color: Colors.blue,
                    child: const Center(
                      child: Text('Premiums'),
                    
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Premiums()));
                  },
                ),
                
                
              ),
              Expanded(
                child: InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(1.0),
                    height: 141.6,
                    color: Colors.green,
                    child: const Center(
                      child: Text('Out-Patient'),
                    ),
                  ),
                   onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const OutPatient()));
                  },
                ),
              ),
            ],
            
          ),
          Row(
            children: [
              Expanded(                             
                child: InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(1.0),
                    height: 141.6,
                    color: Colors.blue,
                    child: const Center(
                      child: Text('In-Patient'),                  
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const InPatient()));
                  },
                ),
              ),
              
              
              Expanded(
                child: InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(1.0),
                    height: 141.6,
                    color: Colors.green,
                    child: const Center(
                      child: Text('Post a Health Question'),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const PostQuestion()));
                  },
                ),
              ),
            ],
            
          ),
         
        ],
      ),
    
    
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
           NavigationDestination(icon: Icon(Icons.medical_services), label: 'Services'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Settings.'),
             NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int index){
          setState(() {
             currentPage = index;
          });
         
        },
        selectedIndex: currentPage,
      ),
    );
  }
}

