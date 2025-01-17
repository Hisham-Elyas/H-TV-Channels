import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';
import '../../../core/widgets/custom_snackbar.dart';
import '../controllers/today_matches_controller.dart';
import '../data/models/match_model.dart';

class MatchCardWidget extends GetView<TodayMatchesController> {
  const MatchCardWidget({
    super.key,
    required this.event,
  });

  final MatchModel event;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (event.channelsAndCommentators.isEmpty) {
          showCustomSnackBar(
              message: "Channel Unknown",
              title: "Channel not found",
              isError: true);
          return;
        }
        try {
          final channel = controller
              .findChannelByName(event.channelsAndCommentators.first.channel);
          // Get.to(() => VideoPlayerScreen(videoUrl: channel.videoUrl));
          print('Found: ${channel.name}, Video URL: ${channel.videoUrl}');
        } catch (e) {
          print(e); // Handle exception
        }

        // Get.to(() => const VideoPlayerScreen());
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const VideoPlayerScreen()),
        // );
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        elevation: 3,
        color: ColorsManager.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CachedNetworkImage(
                        width: 80.w,
                        height: 80.h,
                        fit: BoxFit.contain,
                        imageUrl: event.homeTeamLogo,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                              color: ColorsManager.lightBlue,
                              value: downloadProgress.progress),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        event.homeTeam,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CachedNetworkImage(
                        width: 50.w,
                        height: 50.h,
                        fit: BoxFit.contain,
                        imageUrl: event.leagueLogo,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: ColorsManager.lightBlue,
                              value: downloadProgress.progress),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      verticalSpace(20.h),
                      Text(
                        event.matchTime,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: ColorsManager.lightBlue,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CachedNetworkImage(
                        width: 80.w,
                        height: 80.h,
                        fit: BoxFit.contain,
                        imageUrl: event.awayTeamLogo,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                              color: ColorsManager.lightBlue,
                              value: downloadProgress.progress),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        event.awayTeam,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              verticalSpace(8.h),
              if (event.channelsAndCommentators.isNotEmpty) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      event.channelsAndCommentators.first.commentator,
                      style: const TextStyle(color: ColorsManager.lightBlue),
                    ),
                    const Icon(Icons.mic, color: Colors.grey),
                    const Icon(Icons.tv, color: Colors.grey),
                    Text(
                      event.channelsAndCommentators.first.channel,
                      style: const TextStyle(color: ColorsManager.lightBlue),
                    ),
                  ],
                ),
              ] else ...[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Unknown',
                      style: TextStyle(color: ColorsManager.lightBlue),
                    ),
                    Icon(Icons.mic, color: Colors.grey),
                    Icon(Icons.tv, color: Colors.grey),
                    Text(
                      'Unknown',
                      style: TextStyle(color: ColorsManager.lightBlue),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
