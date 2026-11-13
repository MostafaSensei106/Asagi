import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/radii.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/navigation/app_bar/app_bar_component.dart';

/// Assistant tab. Conversation controls appear when a local runtime is ready.
final class AiChatPage extends HookWidget {
  const AiChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = useMemoized(() => GlobalKey<ScaffoldState>());
    final messageController = useTextEditingController();
    final messages = useState<List<_ChatMessage>>(const [
      _ChatMessage(
        text: 'Hi! I am your AI assistant. Ask me anything.',
        isUser: false,
      ),
    ]);
    final isRecording = useState(false);

    void sendMessage() {
      final text = messageController.text.trim();
      if (text.isEmpty) {
        return;
      }

      final userMessage = _ChatMessage(text: text, isUser: true);
      final aiMessage = _ChatMessage(text: _buildAiReply(text), isUser: false);

      messages.value = [...messages.value, userMessage, aiMessage];
      messageController.clear();
      isRecording.value = false;
    }

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBarComponent(
        title: context.localeKeys.aiChatTitle,
        leading: Padding(
          padding: const EdgeInsets.all(7.5),
          child: IconButtonComponent(
            icon: LucideIcons.menu,
            variant: IconButtonVariant.filled,
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
          ),
        ),
      ),

      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Drawer(
          backgroundColor: context.colorScheme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadii.large),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Text(
                  context.localeKeys.aiChatTitle,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ListView.builder(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 104),
                  itemCount: messages.value.length,
                  itemBuilder: (context, index) {
                    final message = messages.value[index];
                    final isUser = message.isUser;

                    return Align(
                      alignment: isUser
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        constraints: const BoxConstraints(maxWidth: 320),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: isUser
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.surfaceContainer,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(16),
                            topRight: const Radius.circular(16),
                            bottomLeft: Radius.circular(isUser ? 16 : 4),
                            bottomRight: Radius.circular(isUser ? 4 : 16),
                          ),
                        ),
                        child: Text(
                          message.text,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: isUser
                                    ? Theme.of(context).colorScheme.onPrimary
                                    : Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      ),
                    );
                  },
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  bottom: 12,
                  child: Material(
                    elevation: 0,
                    color: Theme.of(context).colorScheme.surfaceContainer,
                    borderRadius: BorderRadius.circular(32),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButtonComponent(
                            tooltip: 'Add attachment',
                            onPressed: () {},
                            icon: Icons.add_rounded,
                          ),
                          Expanded(
                            child: TextField(
                              controller: messageController,
                              minLines: 1,
                              maxLines: 5,
                              textInputAction: TextInputAction.send,
                              onSubmitted: (_) => sendMessage(),
                              decoration: const InputDecoration(
                                hintText: 'Message AI',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 12,
                                ),
                              ),
                            ),
                          ),
                          IconButtonComponent(
                            tooltip: isRecording.value
                                ? 'Stop recording'
                                : 'Record voice',
                            onPressed: () {
                              isRecording.value = !isRecording.value;
                            },

                            icon: isRecording.value
                                ? Icons.stop_circle_rounded
                                : Icons.mic_none_rounded,
                          ),

                          IconButtonComponent(
                            tooltip: 'Send message',
                            onPressed: sendMessage,
                            icon: Icons.send_rounded,
                            variant: IconButtonVariant.filled,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _buildAiReply(String input) {
    final message = input.trim();
    if (message.isEmpty) {
      return 'Ask me something and I will help.';
    }

    return 'You said: "$message"\n\nI am ready to help with your project, ideas, or questions.';
  }
}

final class _ChatMessage {
  const _ChatMessage({required this.text, required this.isUser});

  final String text;
  final bool isUser;
}
