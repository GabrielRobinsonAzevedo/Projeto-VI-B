import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../domain/rfm.dart';

extension SegmentoVisual on Segmento {
  Color get cor => switch (this) {
        Segmento.campeoes => AppColors.primary,
        Segmento.fieis => AppColors.mint,
        Segmento.novos => AppColors.sky,
        Segmento.promissores => AppColors.amber,
        Segmento.emRisco => AppColors.coral,
        Segmento.perdidos => AppColors.subtle,
      };

  IconData get icone => switch (this) {
        Segmento.campeoes => Icons.emoji_events_rounded,
        Segmento.fieis => Icons.favorite_rounded,
        Segmento.novos => Icons.waving_hand_rounded,
        Segmento.promissores => Icons.rocket_launch_rounded,
        Segmento.emRisco => Icons.warning_rounded,
        Segmento.perdidos => Icons.bedtime_rounded,
      };
}
