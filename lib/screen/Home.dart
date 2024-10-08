import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/main.dart';
import 'package:recipe_app/screen/addRecipe.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff11151E),
      appBar: AppBar(
        toolbarHeight: 60.h,
        backgroundColor: const Color(0xff11151E),
        iconTheme: const IconThemeData(
          color: Color(0xffffffff),
        ),
        title: Title(
          color: const Color(0xffffffff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: GoogleFonts.outfit(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp),
              ),
              Text(
                'Ali Yasin 👋',
                style: GoogleFonts.outfit(
                    color: const Color(0xffd6fc51),
                    fontWeight: FontWeight.w600,
                    fontSize: 30.sp),
              ),
            ],
          ),
        ),
        actions: [
          CircleAvatar(
            foregroundImage: const AssetImage('assets/3.png'),
            radius: 25.r,
            backgroundColor: const Color.fromARGB(255, 89, 91, 106),
          ),
          SizedBox(
            width: 12.w,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Divider(
              color: const Color(0xffffffff),
              thickness: 0.2.h,
            ),
          ),
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return List('Sample Title', 'Sample Description');
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Addrecipe(),
            ),
          );
        },
        backgroundColor: Color(0xffd6fc51),
        foregroundColor: Color(0xff11151E),
        child: Icon(Icons.add),
      ),
    );
  }

  Widget List(title, description) {
    return Container(
      height: 130.h,
      width: double.infinity.w,
      decoration: BoxDecoration(
        color: const Color.fromARGB(0, 211, 211, 218),
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        color: const Color(0xff171D2B),
        child: Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            CircleAvatar(
              foregroundImage: const AssetImage('assets/3.png'),
              radius: 55.r,
              backgroundColor: const Color.fromARGB(255, 99, 101, 114),
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  title,
                  style: GoogleFonts.outfit(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffECEDEE)),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  description,
                  style: GoogleFonts.outfit(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff777A82)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//'Slicing with fruits'

//'Easy-to-make slicing with \nfruit and meat'