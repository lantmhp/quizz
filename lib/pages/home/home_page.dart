import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:quizz/apps/routes/router_name.dart';
import 'package:quizz/apps/utils/const.dart';
import 'package:quizz/pages/home/widgets/home_dropdown.dart';
import 'package:quizz/pages/home/widgets/home_title.dart';
import 'package:quizz/providers/category_provider.dart';
import 'package:quizz/widgets/background_custom.dart';
import 'package:quizz/widgets/button_custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundCustom(),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingCustom(context)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeTitle(),
                  const HomeDropdown(),
                  SizedBox(height: getHeight(context) * 0.06),
                  ButtonCustom(
                    onTap: () {
                      if (context.read<CategoryProvider>().idLanguageChoose !=
                          null) {
                        context.goNamed(RoutersName.categoryName);
                      }
                    },
                    title: 'Bắt đầu thực hành',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
