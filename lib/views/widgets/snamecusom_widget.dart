  import 'package:baap_people_mgnt/views/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../consts/app_colors.dart';

class SnameWidget extends StatelessWidget {
   SnameWidget({
      this.context,
      this.sname,
    super.key});
    final BuildContext? context;
final String? sname;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         TextWidget(  
                    context: context,
                    data: sname ?? 'Unknown User',
                    fontSize: 20,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
      ],
    );
  }
}