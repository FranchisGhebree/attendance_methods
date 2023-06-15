import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class kehadiran extends StatelessWidget {
  const kehadiran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            leading: const BackButton(
    color: Colors.black, // <-- SEE HERE
  ),
            centerTitle: false,
            title: const Padding(
              padding: EdgeInsets.all(0),
              child: Text("Kehadiran"),
            ),
            foregroundColor: Colors. black,
            backgroundColor: Colors.white
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffCCE5FF)),
                              height: 40,
                              width: double.infinity,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: SvgPicture.asset('assets/icons/info.svg'),
                                ),
                                const Expanded(child: Text("Jam aktif kerja kamu mulai dari pukul 09:00 - 18:00 WIB. Jangan lupa mengisi kehadiran sebelum mulai kerja.", textAlign: TextAlign.start, style: TextStyle(fontSize: 11),))
                              ],
                            ),
                          ),
                        ),
                      ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Expanded(
                   child: Container(
                       height: 160,
                       width: double.infinity,  
                     decoration: BoxDecoration(
                       image: const DecorationImage(
                         image: AssetImage('assets/images/chatsymbol.png'),
                         fit: BoxFit.none,
                         alignment: Alignment.bottomRight,
                       ),
                       borderRadius: BorderRadius.circular(10),
                       color: const Color(0xff00458E)),
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         const Padding(
                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                           child: Text(
                             style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                             "Senin, 22 Mei 2023",textAlign: TextAlign.start,
                             ),
                         ),
                           const Padding(
                             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                             child: Text(
                                                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16, color: Colors.white),
                                                "Kamu belum mengisi kehadiran hari ini.",textAlign: TextAlign.start,
                             ),
                           ),
                         const Spacer(),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                             child: Container(
                               decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(40),
                                                   color: const Color(0xffCCE5FF)),
                                                   height: 50,
                                                   width: double.infinity,
                             
                             child:  const Padding(
                               padding: EdgeInsets.symmetric(vertical: 15),
                               child: Text(
                                   "Check In Kehadiran", textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Color(0xff00458E)),
                                 ),
                             ),   
                             ),
                           ),
                       ],
                     ),
                                  ),
                   ),
                 ),
                  const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                      "Total Jam Kerja Hari Ini",textAlign: TextAlign.left,
                      ),
                  ),
                  ),
                  SizedBox(
                    child: Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SvgPicture.asset('assets/icons/clock.svg'),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7, vertical: 6),
                          child: Text(
                            "0 jam 0 menit",
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22, color: Color(0xff00458E)
                            ),
                          )
                          ),
                      ],
                    )),
                  ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                          child: Container(
                            width: double.infinity,
                            child: const Text(
                              "Riwayat Kehadiran",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black), textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        SvgPicture.asset('assets/images/woman.svg'),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 7),
                          child: Text(
                            "Riwayat kehadiran terkini akan tampil disini.",
                            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),
                            ),
                        ),
                 ],
                  ),
                ),
              ],
            ),
          ));
          }
  }