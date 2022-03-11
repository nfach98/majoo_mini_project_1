import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project_1/utils/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key, this.textController, this.onSuffixIconTap}) : super(key: key);
  final TextEditingController? textController;
  final VoidCallback? onSuffixIconTap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width >= 480 ? width * 0.7 : width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF6D8DE2).withOpacity(.2),
              offset: const Offset(0, 6),
              blurRadius: 25,
            ),
          ],
        ),
        child: TextFormField(
          controller: textController,
          style: textStyleSearchBar,
          decoration: InputDecoration(
            hintStyle: textStyleSearchBar,
            hintText: 'Search your topic..',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(27),
              borderSide: BorderSide.none,
            ),
            fillColor: colorBackgroundSearchBar,
            filled: true,
            prefixIcon: Padding(
              padding: ButtonTheme.of(context).padding,
              child: SvgPicture.asset('assets/svg/search.svg'),
            ),
            contentPadding: const EdgeInsets.fromLTRB(12, 24, 0, 16),
            suffixIconConstraints: const BoxConstraints(),
            suffixIcon: MaterialButton(
              minWidth: 0,
              onPressed: onSuffixIconTap ?? () {},
              child: SvgPicture.asset('assets/svg/microphone.svg'),
              shape: const CircleBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
