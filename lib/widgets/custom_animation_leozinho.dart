import 'package:flutter/material.dart';

class CustomExpansionTileLeozinho extends StatefulWidget {
  const CustomExpansionTileLeozinho({super.key, required this.text});

  final String text;

  @override
  State<CustomExpansionTileLeozinho> createState() =>
      _CustomExpansionTileLeozinho();
}

class _CustomExpansionTileLeozinho extends State<CustomExpansionTileLeozinho> {
  bool isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:
          const Duration(milliseconds: 300), // Animação suave para o container
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isExpanded ? Colors.blue : Colors.black),
              ),
              const Spacer(),
              // Rotaciona o ícone baseado no estado de expansão
              AnimatedRotation(
                turns: isExpanded ? -0.5 : 0,
                duration: Duration(milliseconds: 300),
                child: GestureDetector(
                    onTap: () => _toggleExpansion(),
                    child: const Icon(Icons.arrow_upward)),
              ),
            ],
          ),
          // Usando AnimatedSize para animar a expansão e contração
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Column(
              children: [
                if (isExpanded)
                  const FlutterLogo(
                    size: 50,
                  ),
                const SizedBox(height: 10),
                if (isExpanded)
                  const Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
