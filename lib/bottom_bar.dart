import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:notfix/Screens/screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    CalculateScreen(),
    AnalysisScreen(),
    SettingsScreen(),
  ];

  final List<IconData> _icons = [
    Icons.home_outlined,
    Icons.calculate_rounded,
    Icons.bar_chart_rounded,
    Icons.settings,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBar(
        body: _pages[_selectedIndex],
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF1C1F2E),
            border: Border.all(color: Colors.white.withOpacity(0.07)),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(_icons.length, (index) {
                final isActive = _selectedIndex == index;
                return GestureDetector(
                  onTap: () => setState(() => _selectedIndex = index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      color: isActive
                          ? Colors.blue.withOpacity(0.15)
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            _icons[index],
                            color: isActive ? Colors.blue : Colors.white38,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
