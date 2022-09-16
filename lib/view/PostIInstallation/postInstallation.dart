import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/CustomerSatisfication/customerSatisfication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class PostInstallation extends StatelessWidget {
  const PostInstallation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
       body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50.h,),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height:20.h,
                        width: 35.w,
                        decoration: BoxDecoration(

                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/Arrow 3.png"),
                            )

                        ),),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),
              Center(child: Text("Post Installation",style: GoogleFonts.dmSans(fontSize:27.sp,fontWeight: FontWeight.w500),)),
              SizedBox(height: 10.h,),
              Center(
                child: Container(
                    width: 200.w,
                    child: Divider(thickness: 1,color: Colors.black,)),
              ),



              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Company Email:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Address:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Postcode:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Installer:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Installation Date:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 30.h,),
              Divider(thickness: 1,color: Colors.black,),
              SizedBox(height: 30.h,),

              Center(child: Text("Radiator Checks",style: GoogleFonts.dmSans(fontSize:22.sp,fontWeight: FontWeight.w500),)),
              SizedBox(height: 10.h,),
              Center(
                child: Container(
                    width: 170.w,
                    child: Divider(thickness: 1,color: Colors.black,)),
              ),








              SizedBox(height: 50.h,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Text("Pre-Installation Checks",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Text("Kitchen :",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Text("Dining Room:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),

              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Text("Hallway:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Text("Bathroom:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),

              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Text("Landing:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),

              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Text("Bedroom 1:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),

              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Text("Bedroom 2:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),

              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Text("Bedroom 3:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(right: 28.0,),
                      child: TextFormField(
                        decoration: InputDecoration(

                          hintText: "*",
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),

              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(right: 28.0,),
                      child: TextFormField(
                        decoration: InputDecoration(

                          hintText: "*",
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(right: 28.0,),
                      child: TextFormField(
                        decoration: InputDecoration(

                          hintText: "*",
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          ),

                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white
                            ),
                            child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text,hintText: "Comment",),


              SizedBox(height: 20.h,),

              SizedBox(height: 30.h,),
              Divider(thickness: 1,color: Colors.black,),
              SizedBox(height: 20.h,),

              Center(child: Text("Radiators / TRVs",style: GoogleFonts.dmSans(fontSize:22.sp,fontWeight: FontWeight.w500),)),
              Center(
                child: Container(
                    width: 170.w,
                    child: Divider(thickness: 1,color: Colors.black,)),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(child: Text("All radiators except the bypass and any towel radiators should have TRVs fitted, this includes any designer radiators. If, for any reason, a radiator except the bypass or towel radiator does not have a TRV, please state which:",textAlign: TextAlign.center,style: GoogleFonts.dmSans(fontSize:12.sp,fontWeight: FontWeight.w500),)),
              ),

              SizedBox(height: 30.h,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  maxLines: 7,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration.collapsed
                    (
                    hintText: "Comment",


                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      )
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(child: Text("A BYPASS RADIATOR MUST BE PRESENT UPON COMPLETION OF THE INSTALLATION IN ALL CIRCUMSTANCES. ",textAlign: TextAlign.center,style: GoogleFonts.dmSans(fontSize:13.sp,fontWeight: FontWeight.w500),)),
              ),


              SizedBox(height: 20.h,),
              Divider(thickness: 1,color: Colors.black,),
              SizedBox(height: 10.h,),
              Center(child: Text("Waste Removal",style: GoogleFonts.dmSans(fontSize:22.sp,fontWeight: FontWeight.w500),)),

              Center(
                child: Container(
                    width: 170.w,
                    child: Divider(thickness: 1,color: Colors.black,)),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(child: Text("I/we confirm that we have requested the installer to remove all the waste including the old boiler and cylinder from the property (where applicable):",textAlign: TextAlign.center,style: GoogleFonts.dmSans(fontSize:12.sp,fontWeight: FontWeight.w500),)),
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Container(
                    height: 33.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white
                    ),
                    child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                  ),

                  Container(
                    height: 33.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white
                    ),
                    child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                  )
                ],
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("I/we confirm that we have requested the installer to remove the following waste items below for responsible disposal:",textAlign: TextAlign.center,style: GoogleFonts.dmSans(fontSize:12.sp,fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 50.h,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.center,

                  maxLines: 5,
                  decoration: InputDecoration
                    (
                    hintText: "Comment",

                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      )
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Divider(thickness: 1,color: Colors.black,),
              SizedBox(height: 10.h,),
              Center(child: Text("Customer Satisfaction Questionnaire (Part 1)",textAlign: TextAlign.center,style: GoogleFonts.dmSans(fontSize:22.sp,fontWeight: FontWeight.w500),)),

              Center(
                child: Container(
                    width: 340.w,
                    child: Divider(thickness: 1,color: Colors.black,)),
              ),




              SizedBox(height: 20.h,),


              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Was our installer punctual and polite?",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Container(
                    height: 33.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white
                    ),
                    child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                  ),

                  Container(
                    height: 33.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white
                    ),
                    child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                  )
                ],
              ),
              SizedBox(height: 20.h,),



              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text("Were you trained on how to use your new boiler / system?",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Container(
                    height: 33.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white
                    ),
                    child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                  ),

                  Container(
                    height: 33.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white
                    ),
                    child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                  )
                ],
              ),
              SizedBox(height: 20.h,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text("Did our installer clean the interior and exterior of the property thoroughly?",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Container(
                    height: 33.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white
                    ),
                    child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                  ),

                  Container(
                    height: 33.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white
                    ),
                    child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                  )
                ],
              ),
              SizedBox(height: 20.h,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Text("Are you satisfied with the overall installation? ",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Container(
                    height: 33.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white
                    ),
                    child:            Center(child: Text("Yes",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                  ),

                  Container(
                    height: 33.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white
                    ),
                    child:            Center(child: Text("No",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),)),
                  )
                ],
              ),
              SizedBox(height: 30.h,),

              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerSatisfication()));},
                child: Container(
                  height: 46.h,
                  width: 193.w,
                  decoration: BoxDecoration(
                      color: Color(0xff42FF55),
                      borderRadius: BorderRadius.circular(11)

                  ),
                  child: Center(
                    child: Text("Next",style: GoogleFonts.dmSans(fontSize: 15,fontWeight: FontWeight.w400),),
                  ),
                ),
              ),
              SizedBox(height: 30.h,),











            ],
          ),
    ));
  }
}
