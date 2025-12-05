import 'package:e_commerce_app/constsnt.dart';
import 'package:flutter/material.dart';

class CountryCodePicker extends StatefulWidget {
  final String initialCode;
  final ValueChanged<String>? onChanged;

  const CountryCodePicker({
    super.key,
    this.initialCode = "+965",
    this.onChanged,
  });

  @override
  State<CountryCodePicker> createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  late String _countryCode;

  @override
  void initState() {
    super.initState();
    _countryCode = widget.initialCode;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        color: kMostUseColor.withOpacity(.3),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('🇰🇼', style: TextStyle(fontSize: 18)),
          const SizedBox(width: 8),
          Text(_countryCode,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 6),
          GestureDetector(
            onTap: () async {
              final selected = await showModalBottomSheet<String>(
                context: context,
                builder: (_) => SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: ['+965', '+20', '+966', '+1']
                        .map((c) => ListTile(
                            title: Text(c),
                            onTap: () => Navigator.pop(context, c)))
                        .toList(),
                  ),
                ),
              );

              if (selected != null) {
                setState(() => _countryCode = selected);

                if (widget.onChanged != null) {
                  widget.onChanged!(selected);
                }
              }
            },
            child: const Icon(Icons.arrow_drop_down),
          ),
        ],
      ),
    );
  }
}
