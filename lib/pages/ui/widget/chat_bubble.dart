part of 'widget.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          (context),
          '/detail-chat',
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icon_headset.png',
              width: 50,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Customer Service',
                    style: primaryTextStyle,
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
