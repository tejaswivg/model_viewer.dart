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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: Text('glb model viewer'),
      ),
      body:     new ModelViewer(
              backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
              //src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
              src: 'etc/assets/AnimatedMorphCube.glb',
              // a bundled asset file
              alt: "A 3D GLB model",
              ar: true,
              autoRotate: true,
              cameraControls: true,
              autoPlay: true

          ),



    );

  }

}
