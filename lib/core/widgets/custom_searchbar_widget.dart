import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///
class CustomSearchBarWidget extends StatelessWidget {
  const CustomSearchBarWidget({
    required this.suggestions,
    required this.searchController,
    super.key,
  });
  final SearchController searchController;
  final List<String> suggestions;

  @override
  Widget build(BuildContext context) {
    return TapRegion(
      onTapOutside: (e) => FocusScope.of(context).unfocus(),
      child: SearchAnchor.bar(
        barHintStyle: WidgetStatePropertyAll(
          TextStyle(
            color: ColorConstants.myMediumGrey,
          ),
        ),
        barLeading: FontAwesomeIcons.magnifyingGlass.toFaIconMedGreyColor,
        isFullScreen: false,
        viewShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        viewConstraints: const BoxConstraints(
          maxHeight: 300,
        ),
        searchController: searchController,
        barElevation: const WidgetStatePropertyAll(0),
        viewElevation: 1,
        barHintText: LocaleKeys.templates_searchHint.locale,
        onChanged: (value) {},
        barSide: WidgetStatePropertyAll(
          BorderSide(
            color: ColorConstants.myLightGrey,
          ),
        ),
        barBackgroundColor: ColorConstants.myExtraLightGreyMaterialState,
        barOverlayColor: ColorConstants.myExtraLightGreyMaterialState,
        suggestionsBuilder: (context, controller) {
          return suggestions
              .where(
                (element) => element
                    .toLowerCase()
                    .contains(controller.text.toLowerCase()),
              )
              .map(
                (suggestion) => ListTile(
                  title: Text(suggestion),
                  onTap: () {
                    controller.text = suggestion;
                  },
                ),
              )
              .toList();
        },
      ),
    );
  }
}
