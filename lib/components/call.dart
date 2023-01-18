import 'dart:math';

import 'package:flutter/material.dart';
import 'package:video_calling/data/keys.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class Call extends StatelessWidget {
  final String callId;

  const Call({super.key, required this.callId});

  @override
  Widget build(BuildContext context) {
    final keys = Keys();
    final String localUserId = Random().nextInt(10000).toString();
    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
        appID: keys.appId,
        appSign: keys.appSign,
        userID: localUserId,
        userName: 'User $localUserId',
        callID: callId,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
          ..onOnlySelfInRoom = (context) {
            Navigator.of(context).pop();
          },
      ),
    );
  }
}
