// import 'package:appeventos01/Screens/agenda/agenda_screen.dart';
// import 'package:flutter/material.dart';

// import '../Screens/agenda/mi_agenda_screen.dart';

// class BottomTab extends StatefulWidget {
//   const BottomTab({Key? key}) : super(key: key);

//   @override
//   State<BottomTab> createState() => _BottonTabState();
// }

// class _BottonTabState extends State<BottomTab> {
//   int currentIndex = 0;
//   final screens = [
//     AgendaScreen(),
//     MiAgendaScreen(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.blueGrey,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white.withOpacity(.60),
//         selectedFontSize: 14,
//         unselectedFontSize: 14,
//         onTap: (index) => setState(() {
//           currentIndex = index;
//         }),
//         currentIndex: currentIndex,
//         items: [
//           BottomNavigationBarItem(
//             label: 'Agenda',
//             icon: Icon(Icons.calendar_today_outlined),
//           ),
//           BottomNavigationBarItem(
//             label: 'Mi agenda',
//             icon: Icon(Icons.perm_contact_calendar_outlined),
//           ),
//         ],
//       ),
//     );
//   }
// }
