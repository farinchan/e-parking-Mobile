import 'package:e_parking_mobile/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImage(
          data: Provider.of<ProfileProvider>(context).uid.toString(),
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
    );
  }
}
