import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class OnAbsensiScanNFC extends StatelessWidget {
  const OnAbsensiScanNFC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icons/fourbox.svg'),
            onPressed: () {},
          ),
        ],
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.all(0),
          child: Text("Check In Kehadiran"),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 12),
              child: Text(
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFFA4A4A4)),
                  "Terakhir Hadir"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Color(0xFF00458E)),
                  "Belum ada"),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: SvgPicture.asset('assets/images/finalonnfcscan.svg'),
            )),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
              child: Center(
                child: Text(
                  "Tempelkan HP kamu pada kartu NFC di dinding untuk check in kehadiran.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 120),
              child: Container(
                width: double.infinity,
                height: 51,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFF00458E)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center ,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SvgPicture.asset('assets/icons/camera.svg'),
                      ),
                      Text(
                        'Gunakan Camera',
                        style: TextStyle(
                            color: Color(0xFF00458E),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
