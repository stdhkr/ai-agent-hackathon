import 'package:chat_app/core/presentation/widgets/clippers/rounded_hexagon_clipper.dart';
import 'package:flutter/material.dart';

class LevelUpModal extends StatelessWidget {
  const LevelUpModal({
    super.key,
    required this.prevLevel,
    required this.nextLevel,
    required this.avatarURL,
  });

  final int prevLevel;
  final int nextLevel;
  final String avatarURL;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AlertDialog(
      title: Center(
        child: Text(
          'Level Up!',
          style: theme.textTheme.headlineLarge,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipPath(
                clipper: HexagonClipper(),
                child: Container(
                  width: 100,
                  height: 110,
                  color: theme.colorScheme.primary,
                ),
              ),
              ClipPath(
                clipper: HexagonClipper(),
                child: Container(
                  width: 80,
                  height: 85,
                  color: theme.colorScheme.secondary,
                  child: Center(
                    child: Text(
                      '$nextLevel',
                      style: theme.textTheme.displayLarge?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 144,
            height: 144,
            child: Image.network(
              avatarURL,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'レベルが $prevLevel から $nextLevel に上がったにゃ！',
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('とじる'),
        ),
      ],
    );
  }
}
