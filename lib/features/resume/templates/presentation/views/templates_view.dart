// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/icon_extension.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_icon_button_widget.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_searchbar_widget.dart';
import 'package:flutter_resume_builder_app/features/resume/templates/data/models/resume_template_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TemplatesView extends StatefulWidget {
  const TemplatesView({super.key});

  @override
  State<TemplatesView> createState() => _TemplatesViewState();
}

late SearchController searchController;

class _TemplatesViewState extends State<TemplatesView> {
  @override
  void initState() {
    super.initState();
    searchController = SearchController();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final searchValue = ValueNotifier<String>('');
    final selectedCategory = ValueNotifier<int>(0);

    const suggestions = <String>[
      'Template 1',
      'Template 2',
      'Template 3',
      'Template 4',
      'Template 5',
    ];

    const categories = <String>[
      'All',
      'Free',
      'Newest',
      'Popular',
      'Most Selected',
      'Recommended',
    ];

    return ValueListenableBuilder(
      valueListenable: selectedCategory,
      builder: (context, idx, child) {
        final dynamicCount = ResumeTemplateModel.getTemplates()
            .where(
              (element) =>
                  element.category.contains(categories[selectedCategory.value]),
            )
            .length;
        return Scaffold(
          appBar: _appBar(context, dynamicCount),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    CustomSearchBarWidget(
                      suggestions: suggestions,
                      searchController: searchController,
                    ),
                    context.verticalPaddingSmall,
                    _categoriesListView(
                      selectedCategory,
                      categories,
                    ),
                    context.verticalPaddingSmall,
                    _sampleGridView(selectedCategory, categories, dynamicCount),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  AppBar _appBar(BuildContext context, int count) {
    return AppBar(
      titleSpacing: 18,
      automaticallyImplyLeading: false,
      title: Text.rich(
        TextSpan(
          text: 'Templates',
          style: context.size18Bold,
          children: <InlineSpan>[
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Text(
                '  ($count)',
                style: context.size12BoldWithColor(
                  ColorConstants.myMediumGrey,
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        CustomIconButtonWidget(
          iconData: FontAwesomeIcons.crown,
          color: ColorConstants.myYellow,
          size: 22,
          onTap: () {},
        ),
        context.horizontalPaddingMedium,
      ],
    );
  }

  SizedBox _sampleGridView(
    ValueNotifier<int> selectedCategory,
    List<String> categories,
    int count,
  ) {
    return SizedBox(
      height: context.height * .57,
      child: GridView.count(
        primary: true,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: .7,
        children: List.generate(
          count,
          (index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorConstants.myLightGrey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          ResumeTemplateModel.getTemplates()
                              .where(
                                (element) => element.category.contains(
                                  categories[selectedCategory.value],
                                ),
                              )
                              .elementAt(index)
                              .image,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        top: 4,
                        right: 4,
                        height: 24,
                        child: ResumeTemplateModel.getTemplates()
                                .where(
                                  (element) => element.category.contains(
                                    categories[selectedCategory.value],
                                  ),
                                )
                                .elementAt(index)
                                .premium
                            ? FontAwesomeIcons.crown.toFaIconCustomColorSized(
                                ColorConstants.myYellow,
                                16,
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  SizedBox _categoriesListView(
    ValueNotifier<int> selectedCategory,
    List<String> categories,
  ) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              showCheckmark: false,
              shape: const StadiumBorder(),
              color: index == selectedCategory.value
                  ? ColorConstants.primaryColorMaterialState
                  : null,
              side: index == selectedCategory.value
                  ? BorderSide(color: ColorConstants.primaryColor)
                  : BorderSide(color: ColorConstants.myLightGrey),
              label: Text(
                categories[index],
                style: index == selectedCategory.value
                    ? context.defaultSizeBoldWithColor(
                        ColorConstants.myWhite,
                      )
                    : context.defaultSizeBold,
              ),
              selected: index == selectedCategory.value,
              onSelected: (selected) => selectedCategory.value = index,
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
