/* This is free and unencumbered software released into the public domain. */

import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GLB viewer',
      home: new MyHomePage()
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key})  : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _value = 'AnimatedMorphCube.glb';
  ModelViewer glbViewer ;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new DropdownButton<String>(
            value: _value,
            items: <DropdownMenuItem<String>>[
              new DropdownMenuItem(
                child: new Text('Astronaut.glb'),
                value: 'Astronaut.glb',
              ),
              new DropdownMenuItem(
                  child: new Text('AnimatedMorphCube.glb'),
                  value: 'AnimatedMorphCube.glb'
              ),
            ],
            onChanged: (String value) {
              print(value);
              buttonPressed();
              setState(() {
                _value = value;

                glbViewer = new ModelViewer(
                backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
                //src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
                src: 'etc/assets/'+_value,
                // a bundled asset file
                alt: "A 3D GLB model",
                ar: true,
                autoRotate: true,
                cameraControls: true,
                autoPlay: true

                );
              });
            },)
      ),
      body:     Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber[600],

          child: glbViewer



    ),);

  }
Widget buttonPressed(){     return new Scaffold(
  appBar: new AppBar(
      title: new DropdownButton<String>(
        value: _value,
        items: <DropdownMenuItem<String>>[
          new DropdownMenuItem(
            child: new Text('Astronaut.glb'),
            value: 'Astronaut.glb',
          ),
          new DropdownMenuItem(
              child: new Text('AnimatedMorphCube.glb'),
              value: 'AnimatedMorphCube.glb'
          ),
        ],
        onChanged: (String value) {
          print(value);
          buttonPressed();
          setState(() {
            _value = value;

            glbViewer = new ModelViewer(
                backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
                //src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
                src: 'etc/assets/'+_value,
                // a bundled asset file
                alt: "A 3D GLB model",
                ar: true,
                autoRotate: true,
                cameraControls: true,
                autoPlay: true

            );
          });
        },)
  ),
  body:     Container(
      margin: const EdgeInsets.all(10.0),
      color: Colors.amber[600],

      child: glbViewer



  ),);
}
  }