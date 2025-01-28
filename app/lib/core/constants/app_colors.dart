import 'package:flutter/material.dart';

class AppColors {
  // やや黄みがかったホワイト。全体を明るく見せ、コンテンツやイラスト、アウトラインが映える。
  static const Color background = Color(0xFFFDFCF9);
  // 茶トラ感のあるオレンジ。主要アクションや重要なUI要素で使用。
  static const Color main = Color(0xFFF3B64D);
  // コーラルピンク。通知バッジ、ハイライト、イラストのズレ色などで使うとポップで映える。
  static const Color accent1 = Color(0xFFFF6F61);
  // ブルーグレー。アウトラインの色替えにも使いやすく、全体を引き締める役割。
  static const Color accent2 = Color(0xFF5E6A71);
  // 濃いめグレーで可読性を担保。アウトラインとしてもベースに使いやすい。
  static const Color textDark = Color(0xFF333333);
  // textDarkよりも少し軽めの文字色。サブ的なテキストや補足説明などに。
  static const Color textLightDark = Color(0xFF6D6D6D);
  // 淡いグリーンがかったグレー。ボックス背景・セクション分けなどに。多用しすぎない程度に取り入れる。
  static const Color subColor = Color(0xFF97C1A9);
  // 「ボトムモーダルのハンドル」「区切り線」「控えめな背景」などで使いやすい
  static const Color lightGray = Color(0xFFCDCDCD);
  // lightGrayよりも淡いグレー。背景など少しだけ控えめにグレーを使いたい場合に。
  static const Color backgroundGray = Color(0xFFE2E2E2);
  // エラーメッセージや警告などに使用。注意を喚起したいUI要素へ。
  static const Color error = Color(0xFFD32F2F);
  // 成功や完了を示す要素に使用。落ち着きや安心感を与えるグリーン。
  static const Color success = Color(0xFF388E3C);
}
