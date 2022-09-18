import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluent App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(150.0),
            child: Image.network(
              'https://play-lh.googleusercontent.com/ZpQcKuCwbQnrCgNpsyUsgDjuBUnpcIBkVrPSDKS9LOJTAW1kxMsu6cLltOSUODjiEQ=w500-h280-rw',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          const Text('Amr Awni', style: TextStyle(fontSize: 20)),
          const Text('+90 555 000 00 00', style: TextStyle(fontSize: 20)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    /*
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VideoCallScreen()));

                     */
                  },
                  icon: const Icon(
                    Icons.video_call,
                    size: 44,
                  ),
                  color: Colors.teal,
                ),
                IconButton(

                  onPressed: () {
                    /*
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AudioCallScreen()));

                     */
                  },
                  icon: const Icon(
                    Icons.phone,
                    size: 35,
                  ),
                  color: Colors.teal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
