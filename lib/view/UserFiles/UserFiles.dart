import 'package:boiler/view/UserFiles/SendDeleteFile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserFiles extends StatefulWidget {
  const UserFiles({Key? key}) : super(key: key);

  @override
  State<UserFiles> createState() => _UserFilesState();
}

class _UserFilesState extends State<UserFiles> {
  var show=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Text('Files\n',style: GoogleFonts.dmSans(fontSize: 24,fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/person.png')
                          )
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffD9D9D9)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Choose Files',style: GoogleFonts.dmSans(fontSize: 18,fontWeight: FontWeight.w500),),
                          GestureDetector(
                              onTap: (){
                                setState(() {
                                  show=!show;
                                });
                              },
                              child: Icon(Icons.keyboard_arrow_down_rounded))
                        ],
                      ),
                      Visibility(
                        visible: show,
                        child: Column(
                          children: [
                            Text('\nBoiler\n',style: GoogleFonts.dmSans(fontSize: 18,fontWeight: FontWeight.w500),),
                            Text('ASHP',style: GoogleFonts.dmSans(fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text(' Search Customer',style: GoogleFonts.dmSans(fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.grey.shade600,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                          disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.grey.shade300
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightGreen
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('A-Z',style: TextStyle(color: Colors.white))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children:List.generate(10, (index) =>InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SendDeleteFile()));
                        },
                        child: Container(
                          height: 150,
                          margin: EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/back.png')
                            )
                          ),
                        ),
                      )),
                    ),
                    Column(
                      children:List.generate(10, (index) =>InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SendDeleteFile()));
                        },
                        child: Container(
                          height: 150,
                          margin: EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/back.png')
                              )
                          ),
                        ),
                      )),
                    )

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
