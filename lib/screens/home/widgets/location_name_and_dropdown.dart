import 'package:flutter/material.dart';

class LocationAndDropDown extends StatelessWidget {
  final String locationName;
  const LocationAndDropDown({
    required this.locationName,
    super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              leading: const Icon(Icons.alarm, color: Colors.white, size: 32),
              title: Text(
                locationName,
                style: const TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ),
          const Icon(Icons.menu, color: Colors.white, size: 32,)
        ],
      ),
    );
  }
}
