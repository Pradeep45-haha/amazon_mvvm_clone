import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/bloc/auth/login_signup/auth_bloc.dart';
import '../../constants/country_code.dart';

class CountryCodePicker extends StatelessWidget {
  const CountryCodePicker({super.key});

  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return AlertDialog(
      scrollable: true,
      content: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 250,
              height: 500,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: countryList.length,
                itemBuilder: (context, index) {
                  Country country = countryList[index];
                  return InkWell(
                    hoverColor: Colors.grey[300],
                    onTap: () {
                      String phoneCode = country.phoneCode.replaceAll("-", "");
                      authBloc.add(
                        CountryChanged(
                          phoneCode: int.parse(phoneCode),
                          countryCode: country.isoCode,
                          countryName: country.name,
                        ),
                      );

                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: BorderDirectional(
                          bottom: BorderSide(color: Colors.grey, width: .5),
                        ),
                      ),
                      child: ListTile(
                        hoverColor: Colors.grey[300],
                        title: Text(countryList[index].name),
                        trailing: Text(countryList[index].phoneCode),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      title: Row(
        children: [
          const Text(
            "Country/Region Code",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
    );
  }
}
