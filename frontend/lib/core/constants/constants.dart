import 'package:flutter/material.dart';

const flavor = String.fromEnvironment('flavor');

const apiBaseUrl = String.fromEnvironment('apiBaseUrl');

final rootNavigatorKey = GlobalKey<NavigatorState>();

const catLevelTexts = [
  '真面目',
  '普通',
  'Max',
];

const defaultCatLevel = 2.0;

const defaultAvatarURL =
    'https://firebasestorage.googleapis.com/v0/b/hackathon2024-4cb8e.firebasestorage.app/o/avatars%2F1.png?alt=media&token=f06bd8f1-5f2d-4599-b354-a52bd302e444';

const tabBarHeight = 40.0;

const catLevelDescription =
    '上にするほど、よりふざけた語呂を作れるにゃ。\nMaxにすると、もはや語呂ではなくなるにゃ🐈🐈🐈';

const interestsText = '興味に関連するものを生成できるようになるにゃ🐈';
