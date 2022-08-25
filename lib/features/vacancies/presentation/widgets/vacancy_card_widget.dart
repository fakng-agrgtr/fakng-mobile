import 'package:fakng_mobile/core/presentation/router/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VacancyCardWidget extends StatelessWidget {
  const VacancyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.pushNamed(RoutesNames.vacancy);
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'SAP UI/UX Engineer',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        r'250K $ / year',
                      ),
                    ],
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      size: 25,
                      Icons.favorite_border,
                    ),
                  )
                ],
              ),
              const Text(
                'Apple',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Location: ',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(
                        text:
                            'Location: Santa Clara Valley (Cupertino), California, United States Software and Services'),
                  ],
                ),
              ),
              const SizedBox(height: 3),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Key Qualifications: ',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(
                        text:
                            'Knowledge of SAP BTP, SAP CAP, SAP BAS, GIT, DevOps, Node.js'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
