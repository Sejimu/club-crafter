import '../../../../generated/l10n.dart';
import 'package:flutter/material.dart';

class Events {
  final String emoji;
  final String text;
  Events({required this.emoji, required this.text});

  static List<Events> getEvent(BuildContext context) => [
        Events(emoji: "💼", text: S.of(context).introBusiness),
        Events(emoji: "🙌", text: S.of(context).introCommunity),
        Events(emoji: "🎙", text: S.of(context).introMusicEntertaiment),
        Events(emoji: "💉", text: S.of(context).introHealth),
        Events(emoji: "🍟", text: S.of(context).introFoodDrink),
        Events(emoji: "👪", text: S.of(context).introFamilyEducation),
        Events(emoji: "⚽", text: S.of(context).introSport),
        Events(emoji: "👠", text: S.of(context).introFashion),
        Events(emoji: "🎞", text: S.of(context).introFilmMedia),
        Events(emoji: "🏡", text: S.of(context).introHomeLifestyle),
        Events(emoji: "🎨", text: S.of(context).introDesign),
        Events(emoji: "🎮", text: S.of(context).introGaming),
        Events(emoji: "🔬", text: S.of(context).introScienceTech),
        Events(emoji: "📚", text: S.of(context).introSchoolEducation),
        Events(emoji: "☀️", text: S.of(context).introHoliday),
        Events(emoji: "✈", text: S.of(context).introTravel),
      ];
}
