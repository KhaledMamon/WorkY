import 'package:flutter/material.dart';

class ExperienceItem extends StatefulWidget {
  const ExperienceItem({
    super.key,
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.title,
    required this.company,
    required this.period,
    required this.description,
  });
  final IconData? icon;
  final Color? iconBg;
  final Color? iconColor;
  final String? title;
  final String? company;
  final String? period;
  final String? description;
  @override
  State<ExperienceItem> createState() => _ExperienceItemState();
}

class _ExperienceItemState extends State<ExperienceItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: widget.iconBg,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(widget.icon, color: widget.iconColor, size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "${widget.company}  •  ${widget.period}",
                style: const TextStyle(
                  color: Color(0xFF3244E6),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                widget.description!,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 13,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
