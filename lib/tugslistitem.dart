// import 'package:flutter/material.dart';

// abstract class ListItem {
//   Widget buildTitle(BuildContext context);
//   Widget buildSubtitle(BuildContext context);
// }

// class HeadingItem implements ListItem {
//   final String heading;
//   HeadingItem(this.heading);

//   @override
//   Widget buildTitle(BuildContext context){
//     return Text(
//       heading,
//       style: const TextStyle(
//         color: Colors.blue,
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }

//   @override
//   Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
//   }
// class MessageItem implements ListItem {
//   final String sender;
//   final String body;

//   MessageItem(this.sender,this.body);

//   @override
//   Widget buildTitle(BuildContext context) {
//     return Row(
//       children: [
//         const Icon(Icons.message, size: 20, color: Colors.grey),
//         const SizedBox(width: 8),
//         Text(sender),
//       ],
//     );
//   }

//   @override
//   Widget buildSubtitle(BuildContext context) => Text(body);
//   }

// class ImageItem implements ListItem {
//   final String imagePath; 
//   final String title;

//   ImageItem(this.imagePath, this.title);

//   @override
//   Widget buildTitle(BuildContext context) => Text(title, style: const TextStyle(fontWeight: FontWeight.bold));

//   @override
//   Widget buildSubtitle (BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 4.0),
//       child: Image.asset(
//         imagePath,
//         height: 50,
//         width: double.infinity,
//         fit: BoxFit.cover,
//       ),
//     );
//   }
//  }
  
// class tugslistitem extends StatelessWidget {
//   const tugslistitem({super.key});

//   @override
//   Widget build(BuildContext context) {
    
//     final List<ListItem> items = List<ListItem>.generate(30, (i) {
//       if (i % 5 == 0) {
//         return HeadingItem('Heading $i');
//       } else if ( i % 3 == 0) {
//         final ImageIndex = (i ~/ 3) % 3 + 1 ;
//         return ImageItem ('images/foto1.png .jpg','image item $i');
//       }else{
//         return MessageItem('sender $i', 'Message body $i');
//       }
//     });

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('List dengan berbagai item'), ),
//         body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context,index){
//           final item = items[index];
//           return Padding(padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
//           child: Card(
//             elevation: 2,
//             child: ListTile(
//             title: item.buildTitle(context),
//             subtitle: item.buildSubtitle(context),
//             contentPadding: const EdgeInsets.all(8),
//           ),
//           ));
//         },
//       ),
//     ); 
//   }
// }