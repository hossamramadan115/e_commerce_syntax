import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:e_commerce_app/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import 'address_section.dart';
import 'date_time_section.dart';

enum DeliveryType { myAddress, pickUp, driveThru }

class DeliverySection extends StatefulWidget {
  const DeliverySection({super.key});

  @override
  State<DeliverySection> createState() => _DeliverySectionState();
}

class _DeliverySectionState extends State<DeliverySection> {
  DeliveryType _delivery = DeliveryType.myAddress;

  @override
  Widget build(BuildContext context) {
    final h = context.screenHeight;
    final w = context.screenWidth;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivery',
          style: AppStyless.textStyle13w700.copyWith(fontSize: w * 0.038),
        ),

        SizedBox(height: h * 0.01),

        /// RADIO BUTTONS
        Row(
          children: [
            _deliveryRadio(DeliveryType.myAddress, 'My Address'),
            SizedBox(width: w * 0.03),
            _deliveryRadio(DeliveryType.pickUp, 'Pick up'),
            SizedBox(width: w * 0.03),
            _deliveryRadio(DeliveryType.driveThru, 'Drive Thru'),
          ],
        ),

        SizedBox(height: h * 0.015),

        if (_delivery == DeliveryType.myAddress) ...[
          const AddressSection(),
        ],

        if (_delivery == DeliveryType.pickUp ||
            _delivery == DeliveryType.driveThru) ...[
          const DateTimeSection(),
        ],
      ],
    );
  }

  Widget _deliveryRadio(DeliveryType type, String label) {
    return InkWell(
      onTap: () => setState(() => _delivery = type),
      child: Row(
        children: [
          Radio<DeliveryType>(
            value: type,
            groupValue: _delivery,
            activeColor: Colors.black,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onChanged: (v) => setState(() => _delivery = v!),
          ),
          Text(
            label,
            style: AppStyless.textStyle13w700
                .copyWith(fontSize: 14), // ثابت عشان الوضوح
          ),
        ],
      ),
    );
  }
}
