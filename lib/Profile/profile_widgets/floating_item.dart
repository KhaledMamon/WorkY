import 'package:flutter/material.dart';

class FloatingItem extends StatelessWidget {
  final int index;
  final IconData iconSelected;
  final IconData iconUnselected;
  final String label;
  final bool isProfile;
  final bool isSelected;
  final VoidCallback onTap;

  const FloatingItem({
    super.key,
    required this.index,
    required this.iconSelected,
    required this.iconUnselected,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.isProfile = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xFF3244E6).withValues(alpha: 0.2)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(35),
        ),
        child: TextButton(
          onPressed: onTap,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  isProfile
                      ? const CircleAvatar(
                          radius: 16,
                          backgroundImage: NetworkImage(
                            'https://lh3.googleusercontent.com/aida-public/AB6AXuDDka4xNpbG1l6PvFRpm0lpsZ8xZHAJ0hQY2tDIAoUU7oiqbPi6lAYUXDeTr2nxqL1AbosnCgeRkTf8vwaJhz1PUzOgYL-qFcqrREIn2BH8n7Op3t2MvG3dfin5z4tHhxaq8BkG0q0G_BYEqUQBTChJoIdhYEmvbfWKXDIcBbfHg54iHlytLL2LVIRYKX_SPvLl4gYEG_qLKT1QIef82Tl4Ud45FaIKvs2K2kls4hU9fHPSdkpO1aZ9dH9isHE29f8DWhqXR54WF2Ab',
                          ),
                        )
                      : Icon(
                          isSelected ? iconSelected : iconUnselected,
                          color: isSelected
                              ? const Color(0xFF3244E6)
                              : Colors.black,
                          size: 28,
                        ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  color: isSelected ? const Color(0xFF3244E6) : Colors.black,
                  fontSize: 12,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
