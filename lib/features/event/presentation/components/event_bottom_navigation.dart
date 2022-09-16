import 'package:flutter/material.dart';
import 'package:paipe/features/navigation/components/selected_navigation.dart';

class EventBottomNavigationBarItem extends BottomNavigationBarItem {
  final VoidCallback delegate;

  EventBottomNavigationBarItem({required super.icon, required super.label, required this.delegate});
}

class EventBottomNavigation extends StatefulWidget {

  final VoidCallback homeSelected;
  final VoidCallback taskSelected;

  const EventBottomNavigation({
    Key? key,
    required this.homeSelected,
    required this.taskSelected
  }) : super(key: key);

  @override
  State<EventBottomNavigation> createState() => EventBottomNavigationState();

}

class EventBottomNavigationState extends State<EventBottomNavigation> {
  int _selectedIndex = 0;

  late final List<EventBottomNavigationBarItem> _navigationBarItems = _getNavigationBarItems();

  void _setActiveItem(int selectedIndex) {
    _navigationBarItems.elementAt(selectedIndex).delegate();

    setState(() {
      _selectedIndex = selectedIndex;
    });
  }

  List<EventBottomNavigationBarItem> _getNavigationBarItems() {
    return <EventBottomNavigationBarItem>[
      EventBottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: 'Home',
          delegate: widget.homeSelected,
      ),
      EventBottomNavigationBarItem(
          icon: const Icon(Icons.task),
          label: 'Tasks',
          delegate: widget.taskSelected
      ),
      // BottomNavigationBarItem(
      //     icon: Icon(Icons.task),
      //     label: 'Tasks'
      // ),
      // BottomNavigationBarItem(
      //   icon: Icon(Icons.settings),
      //   label: 'Settings',
      // ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (i) => _setActiveItem(i),
        type: BottomNavigationBarType.fixed,
        items: _navigationBarItems
    );
  }
}


