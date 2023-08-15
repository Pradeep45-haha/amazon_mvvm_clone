import 'package:flutter/material.dart';

class AddressBox extends StatelessWidget {
  const AddressBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          stops: [0.5, 1.0],
          colors: [
            Color.fromARGB(255, 114, 226, 221),
            Color.fromARGB(255, 162, 236, 233),
          ],
        ),
      ),
      child:  const Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 20,
            ),
            Expanded(
              child: Text(
                "Delivery to -user address ",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2, left: 5),
              child: Icon(
                Icons.arrow_drop_down_outlined,
                size: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
