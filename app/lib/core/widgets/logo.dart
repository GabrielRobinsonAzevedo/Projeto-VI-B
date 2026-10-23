import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Logotipo: vitrine (loja) com um "+" de crescimento.
class VitrineLogo extends StatelessWidget {
  const VitrineLogo({super.key, this.size = 56, this.onDark = false});

  final double size;
  final bool onDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: onDark ? Colors.white : null,
        gradient: onDark ? null : AppColors.hero,
        borderRadius: BorderRadius.circular(size * 0.3),
        boxShadow: [
          BoxShadow(
            color: (onDark ? Colors.black : AppColors.primary).withValues(alpha: 0.22),
            blurRadius: size * 0.3,
            offset: Offset(0, size * 0.1),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(Icons.storefront_rounded,
              size: size * 0.56, color: onDark ? AppColors.primary : Colors.white),
          Positioned(
            right: size * 0.12,
            top: size * 0.12,
            child: Container(
              width: size * 0.3,
              height: size * 0.3,
              decoration: BoxDecoration(
                color: AppColors.mint,
                shape: BoxShape.circle,
                border: Border.all(color: onDark ? Colors.white : AppColors.primary, width: size * 0.03),
              ),
              child: Icon(Icons.add_rounded, size: size * 0.22, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
