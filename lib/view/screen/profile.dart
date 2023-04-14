import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Setting",style: TextStyle(fontSize: 22.sp,color: Colors.blueAccent)),
        backgroundColor: Color(0xff00101E),
        elevation: 00,
      ),

      body: backGround(
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              _listiteam((){ },"Language",Icons.language),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Export as File",Icons.file_upload_outlined),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Rate us",Icons.star_border_purple500_outlined),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),


              _listiteam((){ },"Share With Friends",Icons.share),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Privacy",Icons.privacy_tip_outlined),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Send Feedback",Icons.chat),



            ],
          ),
        ),
      ),
    );
  }
  _listiteam(void Function() onTap, String text,IconData iconData) {
    return ListTile(
      // shape: Border(bottom:BorderSide(width: 2,color: Colors.blueAccent.withOpacity(0.3))),

      onTap: onTap,
leading: Icon(iconData,color: Colors.white,size: 22.sp),
      title: Text(text,style: TextStyle(color: Colors.white,fontSize: 17.sp)),
      trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white),

    );
  }
}
