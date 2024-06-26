import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rent_hub/core/theme/app_theme.dart';
import 'package:rent_hub/core/widgets/rounded_btn_widget.dart';
import 'package:rent_hub/features/chat/view/widgets/input_message_field_widget.dart';
import 'package:rent_hub/features/chat/view/widgets/received_message_widget.dart';
import 'package:rent_hub/features/chat/view/widgets/sent_message_widget.dart';

class ChatDetailsPage extends ConsumerWidget {
  static const routePath = '/chatDetails';
  ChatDetailsPage({super.key});
  // router path
  // input message controller
  final TextEditingController inputMessageController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: context.spaces.space_500 * 2,
        backgroundColor: context.colors.primary,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: context.spaces.space_200),
              child: RoundedIconButton(
                  onTap: () {
                    // TODO add function for navigate
                    context.pop();
                  },
                  icon: Icons.chevron_left_sharp),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //TODO fetch user name and online status
                Text(
                  'amal',
                  style: context.typography.h3Bold,
                ),
                Text(
                  'online',
                  style: context.typography.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
      // chat details section
      body: Container(
        margin: EdgeInsets.only(top: context.spaces.space_100),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: context.colors.cardBackground,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(context.spaces.space_600),
              topRight: Radius.circular(context.spaces.space_600)),
        ),
        child: Padding(
          padding: EdgeInsets.all(context.spaces.space_200),
          child: Column(
            children: [
              // TODO change messages and time accordingly......
              const Spacer(),

              /// recevied message
              ReceviedMessageWidget(
                message: 'Lorem Ipsum is simply dummy text of the',
                time: '2:00',
              ),

              /// sent message
              SentMessageWidget(
                message: 'Lorem Ipsum is simply',
                time: '2:30',
              ),

              /// Textfield for entering messages
              InputMessageFieldWidget(
                controller: inputMessageController,
              )
            ],
          ),
        ),
      ),
    );
  }
}
