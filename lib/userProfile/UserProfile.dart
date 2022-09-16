import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
              Text(
                'User Profile',
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500, fontSize: 24),
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
