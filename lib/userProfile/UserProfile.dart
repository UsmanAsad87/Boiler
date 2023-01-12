import 'package:boiler/colors/common.dart';
import 'package:boiler/view/LoginScreen/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/button.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'User Profile',
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500, fontSize: 24),
                  ),
                  // InkWell(
                  //     onTap: () {
                  //       common.toastShow('Accont Delete Successfully');
                  //     },
                  //     child: Column(
                  //       children: [
                  //         Icon(
                  //           Icons.delete_forever,
                  //           size: 25,
                  //           color: Color.fromARGB(255, 69, 71, 73),
                  //         ),
                  //         Text(
                  //           'Delete\nASHP',
                  //           style: GoogleFonts.dmSans(
                  //               fontWeight: FontWeight.w500, fontSize: 18),
                  //         ),
                  //       ],
                  //     ),
                  //     ),
                  //

                  InkWell(
                      onTap: () async {showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        height: 349.h,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.95,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "We use it to show you \n what you want ",
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.dmSans(
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height:10.h,
                                              ),
                                              Divider(
                                                thickness: 1,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [Icon(Icons.logout_sharp,color: Colors.lightBlue,),
                                                    InkWell(
                                                      onTap: () async{
                                                        Navigator.pop(context);//                 Registeration_LoginScreen()));
                                                      
                                                final SharedPreferences
                                                    sharedPreferences =
                                                    await SharedPreferences
                                                        .getInstance();
                                                sharedPreferences
                                                    .remove('email')
                                                    .then((value) => Value != null
                                                        ? common.toastShow(
                                                            'User Logged Out')
                                                        : Text('data'));Navigator.pop(context);
                                                Get.to(LoginScreen());
                        //                       
                                                      },
                                                      child: Text(
                                                        "            LogOut",
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 1,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [Icon(Icons.delete_sharp,color: Colors.lightBlue,),
                                                    InkWell(
                                                      onTap: () async{
                                                        Navigator.pop(context);//                 Registeration_LoginScreen()));
                                                      
                                                
                                                      },
                                                      child: Text(
                                                        " Delete Account",
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 1,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [Icon(Icons.delete_outline,color: Colors.lightBlue,),
                                                    InkWell(
                                                      onTap: () async{
                                                        Navigator.pop(context);//                 Registeration_LoginScreen()));
                                                      
                                              common.toastShow("ASHP Deleted");
                                                      },
                                                      child: Text(
                                                        "      Delete ASHP",
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                               
                                              Divider(
                                                thickness: 1,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [Icon(Icons.delete_outline,color: Colors.lightBlue,),
                                                    InkWell(
                                                      onTap: () async{
                                                        Navigator.pop(context);//                 Registeration_LoginScreen()));
                                                      common.toastShow("Boiler Deleted");
                                                
                        //                       
                                                      },
                                                      child: Text(
                                                        "      Delete Boiler",
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                        // showDialog(
                        //     context: context,
                        //     builder: (_) => AlertDialog(
                              
                        //           content: Container(height: 185,width: 25,
                        //             child: Column(
                        //               children: [
                                        
                        //                 Row(mainAxisAlignment: MainAxisAlignment.center,
                        //                   children: [Icon(Icons.logout),
                        //                     InkWell(
                        //                       child: Text('            Logout'),
                        //                       onTap: () async {
                        //                         final SharedPreferences
                        //                             sharedPreferences =
                        //                             await SharedPreferences
                        //                                 .getInstance();
                        //                         sharedPreferences
                        //                             .remove('email')
                        //                             .then((value) => Value != null
                        //                                 ? common.toastShow(
                        //                                     'User Logged Out')
                        //                                 : Text('data'));Navigator.pop(context);
                        //                         Get.to(LoginScreen());
                        //                       },
                        //                     ),
                        //                   ],
                        //                 ),SizedBox(height: 22,),
                        //                 Row(mainAxisAlignment: MainAxisAlignment.center,
                        //                   children: [Icon(Icons.delete_outlined),
                        //                     InkWell(
                        //                       child: Text('Delete Account'),
                        //                       onTap: () async {
                        //                         //common.toastShow('Delete Account');Navigator.pop(context);
                        //                       },
                        //                     ),
                        //                   ],
                        //                 ),
                        //                 SizedBox(height: 22,),
                        //                 Row(mainAxisAlignment: MainAxisAlignment.center,
                        //                   children: [Icon(Icons.delete_forever_sharp),
                        //                     InkWell(
                        //                       child: Text('   Delete Boiler'),
                        //                       onTap: () async {
                        //                       common.toastShow(' Boiler Deleted');Navigator.pop(context);
                        //                       },
                        //                     ),
                        //                   ],
                        //                 ),SizedBox(height: 22,),Row(mainAxisAlignment: MainAxisAlignment.center,
                        //                   children: [Icon(Icons.delete_sweep_outlined),
                        //                     InkWell(
                        //                       child: Text(' Delete ASHP'),
                        //                       onTap: () async {
                        //                        common.toastShow('ASHP Deleted');Navigator.pop(context);
                        //                       },
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ));
                        // final SharedPreferences sharedPreferences =
                        //     await SharedPreferences.getInstance();
                        // sharedPreferences.remove('email').then((value) =>
                        //     Value != null
                        //         ? common.toastShow('User Logged Out')
                        //         : Text('data'));
                        // Get.to(LoginScreen());
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 35,
                            color: Color.fromARGB(255, 69, 71, 73),
                          ),
                          // Text(
                          //   'LogOut',
                          //   style: GoogleFonts.dmSans(
                          //       fontWeight: FontWeight.w500, fontSize: 18),
                          // ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/back.png'))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Clever Energy Boiler',
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 28.sp),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.grey.shade300,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.shade300,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.shade300,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.shade300,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.shade300,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Registered Office:',
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 24.sp),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              '\nOffice 25B Aire Valley Business Centre Lawkholme Lane, Keighley West Yorkshire, BD21 3BB',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 20.sp),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              '\nGeneral enquiries 0330 055 2210\n',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 20.sp),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              'info@cleverenergyboilers.co.uk',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 20.sp),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Midlands Office:',
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 24.sp),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              '\nTungsten Park\nHinckley\nLeicestershire, LE10 3BE',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 20.sp),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              'info@cleverenergyboilers.co.uk',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 20.sp),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'London Office:',
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 24.sp),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              '\n33-66 Hatton Garden\n5th Floor, Suite 23\nLondon, EC1N 8LE',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 20.sp),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              'info@cleverenergyboilers.co.uk',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 20.sp),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              Text(
                '\nEngineer',
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400, fontSize: 24.sp),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/person.png'))),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Worker Name',
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 17.sp),
                        ),
                        Text(
                          ' Mob No: 0333-1234567',
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 17.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gassafe No:',
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 24.sp),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              '\n123456789',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 20.sp),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'G3 No:',
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 24.sp),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              '\n123456789',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 20.sp),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email Address:',
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 24.sp),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text(
                              '\ncontact@google.com',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 20.sp),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
