import 'package:advance_flutter_ch3/inAppWebView/web_view.dart';
import 'package:flutter/material.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.menu,color: Colors.white,),
          title: Text('Jewels Aura',style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold
          ),),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: const Color(0xffF2EB93),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  children: [

                    GestureDetector(
                      onTap: () {
                        webUrl ="https://www.tanishq.co.in/";
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(),));
                      },
                      child: buildImageWithDecoration(
                        'https://zerocreativity0.wordpress.com/wp-content/uploads/2016/05/tanishq-logo.jpg?w=736',
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        webUrl ="https://www.caratlane.com/";
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(),));
                      },
                      child: buildImageWithDecoration(
                        'https://mir-s3-cdn-cf.behance.net/projects/404/df619224918673.551933ec155ae.jpg',
                      ),
                    ),


                    GestureDetector(
                      onTap: () {
                        webUrl ='https://www.voylla.com/';
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(),));
                      },
                      child: buildImageWithDecoration(
                        'https://www.voylla.com/cdn/shop/files/Voylla_Logo_480_x_120.png?v=1653372729',
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        webUrl ='https://www.orra.co.in/';
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(),));
                      },
                      child: buildImageWithDecoration(
                        'https://www.orra.co.in/media/logo/stores/1/orra-latest-logo.png',
                      ),
                    ),


                    GestureDetector(
                      onTap: () {
                        webUrl ='https://www.bluestone.com/';
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(),));
                      },
                      child: buildImageWithDecoration(
                        'https://www.visa.com/images/merchantoffers/2024-05/1714989423452.Bluestone.jpg',
                      ),
                    ),


                    GestureDetector(
                      onTap: () {
                        webUrl ='https://www.kalyanjewellers.net/';
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(),));
                      },
                      child: buildImageWithDecoration(
                        'https://www.financialexpress.com/wp-content/uploads/2024/07/FE_800c83.jpg',
                      ),
                    ),


                    GestureDetector(
                      onTap: () {
                        webUrl =' https://www.pcjeweller.com/';
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(),));
                      },
                      child: buildImageWithDecoration(
                        'https://www.eqimg.com/images/2024/1920x1080/07292024-image5-equitymaster.jpg',
                      ),
                    ),


                    GestureDetector(
                      onTap: () {
                        webUrl ='https://www.bhimagold.com/';
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(),));
                      },
                      child: buildImageWithDecoration(
                        'https://www.bhimagold.com/images/bhima_logo3.png',
                      ),
                    ),


                    GestureDetector(
                      onTap: () {
                        webUrl ='https://www.tbztheoriginal.com/';
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(),));
                      },
                      child: buildImageWithDecoration(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Tbz_logo.jpg/640px-Tbz_logo.jpg',
                      ),
                    ),


                    GestureDetector(
                      onTap: () {
                        webUrl ='https://www.grtjewels.com/';
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(),));
                      },
                        child: buildImageWithDecoration('https://seeklogo.com/images/G/grt-jewellers-logo-1D976616F1-seeklogo.com.png'))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget buildImageWithDecoration(String imageUrl) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          imageUrl,
          height: 150,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

String webUrl ="";