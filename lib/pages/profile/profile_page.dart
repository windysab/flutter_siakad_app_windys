import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_siakad_app_windys/common/constants/colors.dart';
import 'package:flutter_siakad_app_windys/common/widgets/custom_scaffold.dart';
import 'package:flutter_siakad_app_windys/common/widgets/row_text.dart';

class ProfilePage extends StatefulWidget {
  final String role;
  const ProfilePage({
    Key? key,
    required this.role,
  }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const SizedBox(height: 60.0),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: ColorName.white,
            boxShadow: [
              BoxShadow(
                color: ColorName.black.withOpacity(0.25),
                offset: const Offset(0, 3),
                spreadRadius: 0,
                blurRadius: 4.0,
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
          child: Column(
            children: [
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                      'https://sikep.mahkamahagung.go.id/uploads/foto_formal/40257.jpg?v=1655191332',
                      width: 72.0,
                      height: 72.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 11.0,
                          vertical: 2.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          border: Border.all(color: ColorName.primary),
                        ),
                        child: Text(
                          widget.role,
                          style: const TextStyle(
                            color: ColorName.primary,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Text(
                        "Windy Sabtami, S.Kom",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: ColorName.primary,
                        ),
                      ),
                      const Text(
                        "Senin, 28 Agustus 2023",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 5.0),
              Dash(
                length: MediaQuery.of(context).size.width - 60,
                dashColor: const Color(0xffD5DFE7),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
        const SizedBox(height: 60.0),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 14.0,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            color: ColorName.white,
            boxShadow: [
              BoxShadow(
                color: ColorName.black.withOpacity(0.25),
                offset: const Offset(0, 3),
                spreadRadius: 0,
                blurRadius: 4.0,
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowText(ic
                label: 'Edit Infomasi Profil', value: '')
            ],
          ),
        )
      ],
    ));
  }
}
