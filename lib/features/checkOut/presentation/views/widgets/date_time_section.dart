import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'custom_text_field.dart';

class DateTimeSection extends StatefulWidget {
  const DateTimeSection({super.key});

  @override
  State<DateTimeSection> createState() => _DateTimeSectionState();
}

class _DateTimeSectionState extends State<DateTimeSection> {
  final TextEditingController dateCtrl = TextEditingController();
  final TextEditingController timeCtrl = TextEditingController();

  @override
  void dispose() {
    dateCtrl.dispose();
    timeCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        dateCtrl.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  Future<void> _pickTime() async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (picked != null) {
      setState(() {
        final hour = picked.hour.toString().padLeft(2, '0');
        final minute = picked.minute.toString().padLeft(2, '0');
        timeCtrl.text = "$hour:$minute";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date',
          style: AppStyless.textStyle13w700.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 6),
        GestureDetector(
          onTap: _pickDate,
          child: AbsorbPointer(
            child: CustomTextField(
              hint: 'Enter date',
              validatorMsg: 'Choose a date',
              suffix: const Icon(IconsaxPlusLinear.calendar),
              controller: dateCtrl,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Time',
          style: AppStyless.textStyle13w700.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 6),
        GestureDetector(
          onTap: _pickTime,
          child: AbsorbPointer(
            child: CustomTextField(
              hint: 'Choose time',
              validatorMsg: 'Choose time',
              suffix: const Icon(IconsaxPlusLinear.clock_1),
              controller: timeCtrl,
            ),
          ),
        ),
      ],
    );
  }
}
