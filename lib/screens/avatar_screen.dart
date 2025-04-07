import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';


class AvatarScreen extends StatefulWidget {
  const AvatarScreen({super.key});

  @override
  State<AvatarScreen> createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  final ModelViewerControllerPlus _controller = ModelViewerControllerPlus();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Avatar 3D'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ModelViewer(
              src: 'assets/models/avatar_animacion.blend.glb',
              alt: "Avatar 3D",
              ar: false,
              autoPlay: false, // no empieza solo
              cameraControls: true,
              onWebViewCreated: (controller) {
                _controller.controller = controller;
              },
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              _controller.play();
            },
            child: const Text('Iniciar Animación'),
          ),
        ],
      ),
    );
  }
}

class ModelViewerControllerPlus {
  late WebViewController controller;

  void play() {
    controller.runJavaScript('document.querySelector("model-viewer").play();');
  }

  void pause() {
    controller.runJavaScript('document.querySelector("model-viewer").pause();');
  }
}
