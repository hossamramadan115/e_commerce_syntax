import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class RegionDropdown extends StatefulWidget {
  const RegionDropdown({super.key});

  @override
  State<RegionDropdown> createState() => _RegionDropdownState();
}

class _RegionDropdownState extends State<RegionDropdown> {
  final List<String> _regions = [
    'Choose region',
    'Region A',
    'Region B',
    'Region C'
  ];

  String? _selectedRegion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _openRegionPicker,
      child: AbsorbPointer(
        child: CustomTextField(
          hint: _selectedRegion ?? 'Choose region',
          validatorMsg: 'Region required',
          suffix: const Icon(
              Icons.keyboard_arrow_down_rounded), // ← العلامة الجديدة
        ),
      ),
    );
  }

  void _openRegionPicker() {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return ListView(
          children: _regions.map((region) {
            return ListTile(
              title: Text(region),
              onTap: () {
                setState(() => _selectedRegion = region);
                Navigator.pop(context);
              },
            );
          }).toList(),
        );
      },
    );
  }
}
