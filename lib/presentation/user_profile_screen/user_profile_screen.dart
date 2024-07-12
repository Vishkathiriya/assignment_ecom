import 'package:ecommerce_assignment/utils/app_export.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  static Widget builder(BuildContext context) {
    return const UserProfileScreen();
  }

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool isSelected = false;

  final List _categoryView = [
    Lang.current.lbl_the_price_is_cheap,
    Lang.current.lbl_cpu_temperature_high,
    Lang.current.lbl_thermal_work_is_possible,
    Lang.current.lbl_the_game_runs_well,
    Lang.current.lbl_there_is_little_fever,
  ];
  final List _ratingCommentImages = [
    Assets.images.png.pngCommentImages1.path,
    Assets.images.png.pngCommentImages2.path,
    Assets.images.png.pngCommentImages3.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EcommerceAppBar(
        leading: CustomImageView(
          onTap: () => NavigatorService.goBack(),
          margin: const EdgeInsets.all(12),
          imagePath: Assets.images.png.pngBack.path,
          height: 20.h,
        ),
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Lang.of(context).lbl_ranking_1st_place,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 14.sp, color: AppColors.lablecolor1),
            ),
            Text(
              Lang.of(context).lbl_best_reviewer,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(fontSize: 16.sp),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.grayColor,
      body: ListView(
        children: [
          const Divider(height: 1, color: AppColors.iconColor),
          _buildProfile(),
          buildSizedBoxH(14),
          _buildWrittenReview(),
          buildSizedBoxH(18),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      color: AppColors.whitecolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildSizedBoxH(24),
          _buildProfileImage(),
          buildSizedBoxH(12),
          _buildProfileName(),
          buildSizedBoxH(28),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      height: 120.h,
      width: 120.w,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.lablecolor1.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: CustomImageView(
        imagePath: ModalRoute.of(context)!.settings.arguments.toString(),
      ),
    );
  }

  Widget _buildProfileName() {
    return Column(
      children: [
        Text(
          Lang.current.lbl_name01,
          style:
              Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20.sp),
        ),
        buildSizedBoxH(2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
                imagePath: Assets.images.png.pngCrown.path, height: 15.h),
            buildSizedboxW(5),
            Text(
              Lang.current.lbl_gold,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 14.sp, color: AppColors.starColor),
            ),
          ],
        ),
        buildSizedBoxH(18),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 12.0.w),
          decoration: BoxDecoration(
            color: AppColors.lablecolor,
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Text(
            Lang.current.lbl_i_run_a_computer,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.lablecolor1),
          ),
        )
      ],
    );
  }

  Widget _buildWrittenReview() {
    return Container(
      color: AppColors.whitecolor,
      child: Column(
        children: [
          _buildWrittenReviewTitle(),
          const Divider(height: 1, color: AppColors.lablecolor),
          buildSizedBoxH(20),
          _buildWrittenReviewProduct(),
          buildSizedBoxH(14),
        ],
      ),
    );
  }

  Widget _buildWrittenReviewTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 11.5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                Lang.current.lbl_written_review,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
              buildSizedboxW(4),
              Text(
                Lang.current.lbl_total_35,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGrayColor),
              ),
            ],
          ),
          _buildWrittenReviewDropDown(),
        ],
      ),
    );
  }

  Widget _buildWrittenReviewDropDown() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 7.w),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lablecolor1),
        borderRadius: BorderRadius.circular(33.r),
      ),
      child: Row(
        children: [
          Text(
            Lang.current.lbl_Latest,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 12.sp,
                color: AppColors.lablecolor1,
                fontWeight: FontWeight.w400),
          ),
          buildSizedboxW(10),
          const Icon(Icons.arrow_drop_down_rounded,
              color: AppColors.lablecolor1)
        ],
      ),
    );
  }

  Widget _buildWrittenReviewProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildProduct(),
        buildSizedBoxH(8),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const Divider(height: 1, color: AppColors.lablecolor)),
        buildSizedBoxH(14),
        _buildProfileTitle(),
        buildSizedBoxH(26),
        _buildCategoryView(),
        buildSizedBoxH(18),
        _buildRatingComment(),
        buildSizedBoxH(15),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const Divider(height: 1, color: AppColors.lablecolor)),
        _buildMessageField(),
      ],
    );
  }

  Widget _buildProduct() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Container(
            height: 104.h,
            width: 104.w,
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderColor),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child:
                CustomImageView(imagePath: Assets.images.png.pngProduct.path),
          ),
          buildSizedboxW(14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "${Lang.current.lbl_amd_ryzen} ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 14.sp,
                                        color: AppColors.blackcolor,
                                        fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: Lang.current.lbl_5600x,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 14.sp,
                                        color: AppColors.blackcolor,
                                        fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    buildSizedboxW(46),
                  ],
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: Assets.images.png.pngRating.path,
                      height: 21.h,
                    ),
                    buildSizedboxW(8.0),
                    Text(
                      Lang.current.lbl_rating_num,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: AppColors.blackcolor),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  height: 34.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: AppColors.lablecolor1.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: CustomImageView(
                    imagePath:
                        ModalRoute.of(context)!.settings.arguments.toString(),
                  )),
              buildSizedboxW(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Lang.current.lbl_name01,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.blackcolor,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: Assets.images.png.pngRating.path,
                        height: 11.h,
                      ),
                      buildSizedboxW(2),
                      Text(
                        Lang.current.lbl_date,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 10.sp, color: AppColors.lablecolor1),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          CustomImageView(
            imagePath: Assets.images.png.pngSave.path,
            height: 21.8.h,
          )
        ],
      ),
    );
  }

  Widget _buildCategoryView() {
    return SizedBox(
      height: 14,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          _categoryView.length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              _categoryView[index],
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: AppColors.textgrayColor,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRatingComment() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          _buildRatingCommentCard(true, false),
          buildSizedBoxH(18),
          _buildRatingCommentCard(false, true),
        ],
      ),
    );
  }

  Widget _buildRatingCommentCard(bool isSelected, bool isShowImages) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSizedboxW(13.w),
        Padding(
          padding: EdgeInsets.only(top: 3.0.h),
          child: CustomImageView(
            imagePath: Assets.images.png.pngBulletPoint.path,
            height: 16.h,
            color: isSelected ? null : AppColors.iconColor,
          ),
        ),
        buildSizedboxW(15.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Lang.current.lbl_it_multi_tasks,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w300)),
              if (isShowImages)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildSizedBoxH(18),
                    _buildRatingCommentImages(),
                  ],
                ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildRatingCommentImages() {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 10.w,
      runSpacing: 10.w,
      children: List.generate(
        _ratingCommentImages.length,
        (index) => CustomImageView(
            imagePath: _ratingCommentImages[index], height: 70.h, width: 73.w),
      ),
    );
  }

  Widget _buildMessageField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        height: 33.h,
        child: TextField(
          style:
              Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 12.sp),
          decoration: InputDecoration(
            hintText: Lang.current.lbl_leave_a_comment,
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 10,
                ),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
