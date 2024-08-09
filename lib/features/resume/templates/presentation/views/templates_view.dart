import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/utils/general_util.dart';
import 'package:fixresume/core/widgets/custom_icon_button_widget.dart';
import 'package:fixresume/core/widgets/custom_searchbar_widget.dart';
import 'package:fixresume/features/resume/templates/data/models/resume_template_model.dart';
import 'package:flutter/material.dart';
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

    final showCategories = <String>[
      LocaleKeys.templates_categories_all.locale(context),
      LocaleKeys.templates_categories_free.locale(context),
      LocaleKeys.templates_categories_newest.locale(context),
      LocaleKeys.templates_categories_popular.locale(context),
      LocaleKeys.templates_categories_mostLiked.locale(context),
      LocaleKeys.templates_categories_recommended.locale(context),
    ];

    const backCategiories = <String>[
      'All',
      'Free',
      'Newest',
      'Popular',
      'Most Liked',
      'Recommended',
    ];

    return Scaffold(
      appBar: _appBar(context, 10), //TO-DO: dynamic count
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ValueListenableBuilder(
          valueListenable: selectedCategory,
          builder: (context, _, __) {
            final dynamicCount = ResumeTemplateModel.getTemplates()
                .where(
                  (element) => element.category.contains(
                    backCategiories[selectedCategory.value],
                  ),
                )
                .length;
            return Column(
              children: [
                CustomSearchBarWidget(
                  suggestions: suggestions,
                  searchController: searchController,
                ),
                context.verticalPaddingSmall,
                _categoriesListView(
                  selectedCategory,
                  showCategories,
                ),
                context.verticalPaddingSmall,
                Expanded(
                  child: _sampleGridView(
                    selectedCategory,
                    backCategiories,
                    dynamicCount,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context, int count) {
    return AppBar(
      titleSpacing: 18,
      automaticallyImplyLeading: false,
      title: Text.rich(
        TextSpan(
          text: LocaleKeys.templates_name.locale(context),
          style: context.defaultSizeBold,
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
          color: GeneralUtil.badgeColor,
          size: 22,
          onTap: () {},
        ),
        context.horizontalPaddingMedium,
      ],
    );
  }

  Widget _sampleGridView(
    ValueNotifier<int> selectedCategory,
    List<String> categories,
    int count,
  ) {
    return GridView.count(
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
              label: Text(categories[index]),
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
