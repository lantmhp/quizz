import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/a11y-dark.dart';
import 'package:quizz/app/utils/parse_html.dart';
import 'package:quizz/pages/article/widgets/model.dart';
import 'package:quizz/widgets/button_custom.dart';
import '../../../app/utils/const.dart';

class BoxContent extends StatefulWidget{
  const BoxContent({super.key});

  @override
  State<BoxContent> createState() => _BoxContentState();
}

class _BoxContentState extends State<BoxContent>{
  final PageController pageController = PageController();

  void handleSubmit() async{
    await showModel(context);
  }
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemCount: 3,
      itemBuilder: (context, int){
        return Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 40.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const Text(
                      'abc',
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: getHeight(context) * 0.02),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                        color: Color(0xff333333),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                      ),
                      width: getWidth(context),
                      child: HighlightView(
                        parseHtmlString(data[index].question),
                        theme: a11yDarkTheme,
                        language: 'dart',
                        padding: const EdgeInsets.all(12),
                        // Specify text style
                        textStyle: const TextStyle(
                          fontFamily: 'My awesome monospace font',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: getHeight(context) * 0.02),
                    const Text(
                      'Đáp án của bạn :',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: getHeight(context) * 0.02),
                    TextFormField(
                      onChanged: (value) => valueInput = value,
                      textInputAction: TextInputAction.done,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Nhập đáp án của bạn tại đây'),
                    ),
                    SizedBox(height: getHeight(context) * 0.04),
                    ButtonCustom(
                      onTap: () => handleSubmit(data[index]),
                      title: 'Xem kết quả',
                    ),
                  ],
                ),
              );
      },

    )
  }
}