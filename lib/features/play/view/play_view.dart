import 'package:flutter/material.dart';

class PlayView extends StatelessWidget {
  const PlayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff1A2028),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text("Now Playing"),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.arrow_back_ios),
        ),

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 24,bottom:44),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset("assets/images/400x400bb (8).png"),
                ),

                const Text("S1E8 – u by Kendrick Lamar",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(
                  height: 20,
                ),
                const Text("Dissect",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,

                ),)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight:  Radius.circular(20),
                ),
                color: const Color(0xff282A3D).withOpacity(0.8)
              ),
              child: Column(
                children: [
                  Row(


                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(
                          Icons.file_download_outlined,
                        color: Colors.white,
                        size: 40,
                      )),
                      IconButton(onPressed: (){}, icon: const Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.white,
                        size: 40,
                      )),
                      IconButton(onPressed: (){}, icon: const Icon(
                        Icons.volume_down,
                        color: Colors.white,
                        size: 40,
                      )),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
