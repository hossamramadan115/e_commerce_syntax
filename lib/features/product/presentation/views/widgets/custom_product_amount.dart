import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/custom_volume_option.dart';

class CustomProductAmount extends StatefulWidget {
  const CustomProductAmount({super.key});

  @override
  State<CustomProductAmount> createState() => _CustomProductAmountState();
}

class _CustomProductAmountState extends State<CustomProductAmount> {
  String _selectedVolume = '128 ML';

  // 2. دالة لتحديث الخيار المحدد
  void _selectVolume(String newVolume) {
    setState(() {
      _selectedVolume = newVolume;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Volume:',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),

        // خيارات الذاكرة
        Row(
          children: <Widget>[
            CustomVolumeOption(
              label: '128 ML',
              isSelected: _selectedVolume == '128 ML',
              onTap: () => _selectVolume('128 ML'),
            ),
            const SizedBox(width: 8),

            // 256 ML (الخيار الأساسي)
            CustomVolumeOption(
              label: '256 ML',
              isSelected: _selectedVolume == '256 ML',
              isPrimary: true,
              onTap: () => _selectVolume('256 ML'),
            ),
            const SizedBox(width: 8),

            // 512 ML
            CustomVolumeOption(
              label: '512 ML',
              isSelected: _selectedVolume == '512 ML',
              onTap: () => _selectVolume('512 ML'),
            ),
          ],
        ),
      ],
    );
  }
}
