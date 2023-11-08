// import 'package:flutter/material.dart';
//
//
//
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
// // final studentsData = dataController.student;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Profile Screen"),
//         centerTitle: true,
//       ),
//       body:  ListView.builder(
//           itemCount:studentsData.length,
//           itemBuilder: (context, index) {
//         final newData = studentsData[index];
//         return ListTile(
//          leading: const CircleAvatar(
//            radius: 25,
//          ),
//           title: Text(newData.firstName),
//           subtitle: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('LastName:${newData.lastName}'),
//               Text('Age:${newData.age}'),
//               Text('PhoneNumber:${newData.phoneNumber}'),
//               Text('Address:${newData.address}'),
//               Text('Qualification:${newData.qualification}'),
//             ],
//           ),
//         );
//       }),
//       floatingActionButton:FloatingActionButton(
//         onPressed: (){
//           Navigator.of(context).pushNamed('/new');
//         },
//         child: const Icon(Icons.add),
//       ) ,
//     );
//   }
// }
//
//
//
