import 'package:ecommerce_assignment/utils/app_export.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  int _currentImageIndex = 0;
  int _selectedUserIndex = 0;
  final List<String> _bannerImages = [
    Assets.images.png.pngBannerOne.path,
    Assets.images.png.pngBannerTwo.path,
    Assets.images.png.pngBannerThree.path,
    Assets.images.png.pngBannerFour.path,
  ];

  @override
  Widget build(BuildContext context) {
    final List<Product> _products = [
      Product(
        imagePath: Assets.images.png.pngProductOne.path,
        title: Lang.of(context).lbl_product_title,
        subtitle1: Lang.of(context).lbl_product_subtitle1,
        subtitle2: Lang.of(context).lbl_product_subtitle2,
        rating: Lang.of(context).lbl_product_review1,
        ratingcount: Lang.of(context).lbl_product_review_count1,
        label1: Lang.of(context).lbl_lable_1,
        label2: Lang.of(context).lbl_lable_1,
      ),
      Product(
        imagePath: Assets.images.png.pngProductTwo.path,
        title: Lang.of(context).lbl_product1_title,
        subtitle1: Lang.of(context).lbl_product1_subtitle1,
        subtitle2: Lang.of(context).lbl_product1_subtitle2,
        rating: Lang.of(context).lbl_product1_review1,
        ratingcount: Lang.of(context).lbl_product1_review_count1,
        label1: Lang.of(context).lbl_lable1_1,
        label2: Lang.of(context).lbl_lable1_1,
      ),
      Product(
        imagePath: Assets.images.png.pngProductThree.path,
        title: Lang.of(context).lbl_product2_title,
        subtitle1: Lang.of(context).lbl_product2_subtitle1,
        subtitle2: Lang.of(context).lbl_product2_subtitle2,
        rating: Lang.of(context).lbl_product2_review1,
        ratingcount: Lang.of(context).lbl_product2_review_count1,
        label1: Lang.of(context).lbl_lable2_1,
        label2: Lang.of(context).lbl_lable2_1,
      ),
    ];
    final List<Users> _buildusersdata = [
      Users(
        imagePath: Assets.images.png.pngUserOne.path,
      ),
      Users(
        imagePath: Assets.images.png.pngUserTwo.path,
      ),
      Users(
        imagePath: Assets.images.png.pngUserThree.path,
      ),
      Users(
        imagePath: Assets.images.png.pngUserFour.path,
      ),
      Users(
        imagePath: Assets.images.png.pngUserFive.path,
      ),
      Users(
        imagePath: Assets.images.png.pngUserSix.path,
      ),
      Users(
        imagePath: Assets.images.png.pngUserSeaven.path,
      ),
      Users(
        imagePath: Assets.images.png.pngUserNine.path,
      ),
      Users(
        imagePath: Assets.images.png.pngUserFive.path,
      ),
      Users(
        imagePath: Assets.images.png.pngUserTen.path,
      ),
      Users(
        imagePath: Assets.images.png.pngUserFour.path,
      ),
    ];

    return Padding(
      padding: EdgeInsets.only(top: 24.0.h, bottom: 85.h),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            _buildSearchTextField(),
            buildSizedBoxH(10),
            _buildBannerSlider(),
            buildSizedBoxH(26),
            _buildScreenTitle(Lang.of(context).lbl_screen_title,
                Lang.of(context).lbl_screen_subtitle),
            _buildproductListtile(_products),
            buildSizedBoxH(16),
            _buildEndContainer(),
            buildSizedBoxH(16),
            _buildScreenTitle(Lang.of(context).lbl_screen_title_1,
                Lang.of(context).lbl_screen_subtitle_1),
            buildSizedBoxH(16),
            _buildusersList(_buildusersdata),
            buildSizedBoxH(22),
            _buildFooterWidget()
          ],
        ),
      ),
    );
  }

  Widget _buildSearchTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: EcommerceTextFormField(
        hintText: Lang.of(context).lbl_search_hint,
        context: context,
        suffix: CustomImageView(
          onTap: () {},
          margin: const EdgeInsets.all(11),
          imagePath: Assets.images.svg.icSearch.path,
          height: 12.h,
          width: 12.w,
        ),
      ),
    );
  }

  Widget _buildBannerSlider() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 221.h,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            pageSnapping: true,
            onPageChanged: (index, reason) {
              _currentImageIndex = index;
              setState(() {});
            },
          ),
          items: _bannerImages.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return CustomImageView(
                  imagePath: imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                );
              },
            );
          }).toList(),
        ),
        _buildIndicator(),
      ],
    );
  }

  Widget _buildIndicator() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0.h),
        child: AnimatedSmoothIndicator(
          activeIndex: _currentImageIndex,
          count: _bannerImages.length,
          effect: CustomizableEffect(
            activeDotDecoration: DotDecoration(
              width: 18.w,
              height: 8.h,
              color: AppColors.whitecolor,
              borderRadius: BorderRadius.circular(5.0),
            ),
            dotDecoration: DotDecoration(
              width: 8.w,
              height: 8.h,
              color: AppColors.whitecolor.withOpacity(0.6),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ));
  }

  Widget _buildScreenTitle(String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 12.sp, height: 2.h),
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios, color: AppColors.arrowColor)
        ],
      ),
    );
  }

  Widget _buildproductListtile(List<Product> products) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: products.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final product = products[index];
          return Padding(
            padding: EdgeInsets.only(top: 16.0.h),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CustomImageView(
                    radius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColors.borderColor),
                    imagePath: product.imagePath,
                    height: 104.h,
                  ),
                ),
                buildSizedboxW(8),
                _buildProductDetails(product)
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildProductDetails(Product product) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 16.sp),
          ),
          Text(
            product.subtitle1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 13.sp, fontWeight: FontWeight.w400),
          ),
          Text(
            product.subtitle2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 13.sp, fontWeight: FontWeight.w400),
          ),
          Row(
            children: [
              const Icon(
                Icons.star_rounded,
                color: AppColors.starColor,
              ),
              Text(
                product.rating,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.starColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700),
              ),
              buildSizedboxW(4),
              Text(product.ratingcount,
                  style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
          buildSizedBoxH(6),
          Row(
            children: [
              _buildLableContainer(product.label1),
              buildSizedboxW(4),
              _buildLableContainer(product.label2)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLableContainer(String lableName) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.lablecolor,
          borderRadius: BorderRadius.circular(4.0.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 1.0.h),
        child: Text(
          lableName,
          style:
              Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 13.sp),
        ),
      ),
    );
  }

  Widget _buildEndContainer() {
    return Container(
      height: 25.h,
      width: double.infinity,
      color: AppColors.lablecolor,
    );
  }

  Widget _buildusersList(List<Users> buildusersdata) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w, right: 2.w),
      child: Container(
        height: 100.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: buildusersdata.length,
          itemBuilder: (context, index) {
            final user = buildusersdata[index];
            return InkWell(
              onTap: () {
                NavigatorService.pushNamed(AppRoutes.userprofileScreen,
                    arguments: user.imagePath);
                setState(() {
                  _selectedUserIndex = index;
                });
              },
              child: _buildusersItem(
                "${Lang.of(context).lbl_name} $index",
                user.imagePath,
                index == _selectedUserIndex,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildusersItem(String title, String imageUrl, bool isSelected) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 13.0.w),
          child: Column(
            children: [
              Container(
                height: 65.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: isSelected
                        ? Border.all(color: AppColors.starColor, width: 3.0)
                        : null),
                child: Stack(
                  children: [
                    ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(50),
                      child: CustomImageView(
                        imagePath: imageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                    isSelected
                        ? CustomImageView(
                            imagePath: Assets.images.png.pngSelect.path,
                            height: 15.h,
                            fit: BoxFit.fill,
                          )
                        : const SizedBox.shrink()
                  ],
                ),
              ),
              buildSizedBoxH(7),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 14.sp),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFooterWidget() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.lablecolor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Lang.of(context).lbl_logo_inc,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.lablecolor1,
                  fontWeight: FontWeight.w700),
            ),
            buildSizedBoxH(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Lang.of(context).lbl_fotter_one),
                Text(Lang.of(context).lbl_fotter_two),
                Text(Lang.of(context).lbl_fotter_three),
                Text(Lang.of(context).lbl_fotter_four),
              ],
            ),
            buildSizedBoxH(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.send,
                      color: AppColors.sendiconcolor,
                      size: 20.sp,
                    ),
                    buildSizedboxW(4),
                    Text(
                      Lang.of(context).lbl_compny_email,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: AppColors.lablecolor1),
                    ),
                  ],
                ),
                _buildWrittenReviewDropDown()
              ],
            ),
            buildSizedBoxH(10),
            Divider(),
            buildSizedBoxH(10),
            Text(
              Lang.of(context).lbl_copy_right,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 12.sp, color: AppColors.lablecolor1),
            ),
            buildSizedBoxH(24)
          ],
        ),
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
            Lang.current.lbl_drop_down,
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
}
