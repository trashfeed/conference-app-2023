import 'package:conference_2023/model/contributors/staff/staff_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class Staffs extends ConsumerWidget {
  const Staffs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(staffListProvider);

    return state.when(
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      error: (error, stackTrace) => Center(
        child: Text(
          '$error',
        ),
      ),
      data: (items) => ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final staffItem = items[index];
          return ListTile(
            leading: staffItem.userIcon != ''
                ? CircleAvatar(
                    foregroundImage: NetworkImage(
                      staffItem.userIcon!,
                    ),
                  )
                : const CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/79250595?v=4',
                    ),
                  ),
            title: Text(
              staffItem.displayName,
            ),
            onTap: () async {
              final url = Uri.parse(staffItem.github);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              }
            },
          );
        },
      ),
    );
  }
}
