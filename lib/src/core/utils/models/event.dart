import '../../../../generated/l10n.dart';
import 'package:flutter/material.dart';

class Events {
  final String emoji;
  final String text;
  Events({required this.emoji, required this.text});

  static List<Events> getEvent(BuildContext context) => [
        Events(emoji: "💼", text: S.of(context).business),
        Events(emoji: "🙌", text: S.of(context).community),
        Events(emoji: "🎙", text: S.of(context).musicEntertaiment),
        Events(emoji: "💉", text: S.of(context).health),
        Events(emoji: "🍟", text: S.of(context).foodDrink),
        Events(emoji: "👪", text: S.of(context).familyEducation),
        Events(emoji: "⚽", text: S.of(context).sport),
        Events(emoji: "👠", text: S.of(context).fashion),
        Events(emoji: "🎞", text: S.of(context).filmMedia),
        Events(emoji: "🏡", text: S.of(context).homeLifestyle),
        Events(emoji: "🎨", text: S.of(context).design),
        Events(emoji: "🎮", text: S.of(context).gaming),
        Events(emoji: "🔬", text: S.of(context).scienceTech),
        Events(emoji: "📚", text: S.of(context).schoolEducation),
        Events(emoji: "☀️", text: S.of(context).holiday),
        Events(emoji: "✈", text: S.of(context).travel),
      ];
}
