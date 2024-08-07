import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/custom_search_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomSearchField(
            hintText: 'Search by the keyword...',
            icon: closeIcon,
          ),
        ],
      ),
    );
  }
}
