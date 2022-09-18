import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:audio_call/app_brain.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  _VideoCallScreenState createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  late int _remoteUid = 0;
  late RtcEngine _engine;

  @override
  void initState() {
    // TODO: implement initState
    _initAgora();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  //functions

  Future _initAgora() async {
    await [Permission.camera, Permission.microphone].request();
    _engine = await RtcEngine.create(AgoraManager.appId);
    _engine.enableVideo();
    _engine.setEventHandler(RtcEngineEventHandler(

        joinChannelSuccess: (String channel, int uid, int elapsed) {
          print('local user $uid joined successfully');
      },

        userJoined: (int uid, int elapsed) {
          print('remote user $uid joined sucessfully');
          setState(() => _remoteUid = uid);
        }));
  }
}
