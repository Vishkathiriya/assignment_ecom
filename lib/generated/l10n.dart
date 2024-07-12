// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Lang {
  Lang();

  static Lang? _current;

  static Lang get current {
    assert(_current != null,
        'No instance of Lang was loaded. Try to initialize the Lang delegate before accessing Lang.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Lang> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Lang();
      Lang._current = instance;

      return instance;
    });
  }

  static Lang of(BuildContext context) {
    final instance = Lang.maybeOf(context);
    assert(instance != null,
        'No instance of Lang present in the widget tree. Did you add Lang.delegate in localizationsDelegates?');
    return instance!;
  }

  static Lang? maybeOf(BuildContext context) {
    return Localizations.of<Lang>(context, Lang);
  }

  /// `Sign Up`
  String get lbl_signup {
    return Intl.message(
      'Sign Up',
      name: 'lbl_signup',
      desc: '',
      args: [],
    );
  }

  /// `종료하려면 다시 탭하세요!`
  String get lbl_exit_app {
    return Intl.message(
      '종료하려면 다시 탭하세요!',
      name: 'lbl_exit_app',
      desc: '',
      args: [],
    );
  }

  /// `홈`
  String get lbl_home {
    return Intl.message(
      '홈',
      name: 'lbl_home',
      desc: '',
      args: [],
    );
  }

  /// `카테고리`
  String get lbl_category {
    return Intl.message(
      '카테고리',
      name: 'lbl_category',
      desc: '',
      args: [],
    );
  }

  /// `커뮤니티`
  String get lbl_community {
    return Intl.message(
      '커뮤니티',
      name: 'lbl_community',
      desc: '',
      args: [],
    );
  }

  /// `마이페이지`
  String get lbl_user_profile {
    return Intl.message(
      '마이페이지',
      name: 'lbl_user_profile',
      desc: '',
      args: [],
    );
  }

  /// `LOGO`
  String get lbl_logo {
    return Intl.message(
      'LOGO',
      name: 'lbl_logo',
      desc: '',
      args: [],
    );
  }

  /// `검색어를 입력하세요`
  String get lbl_search_hint {
    return Intl.message(
      '검색어를 입력하세요',
      name: 'lbl_search_hint',
      desc: '',
      args: [],
    );
  }

  /// `리뷰️ 랭킹⭐top 3`
  String get lbl_screen_title {
    return Intl.message(
      '리뷰️ 랭킹⭐top 3',
      name: 'lbl_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `제일 핫한 리뷰를 만나보세요`
  String get lbl_screen_subtitle {
    return Intl.message(
      '제일 핫한 리뷰를 만나보세요',
      name: 'lbl_screen_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `LG전자 스탠바이미 27ART10AKPL (...)`
  String get lbl_product_title {
    return Intl.message(
      'LG전자 스탠바이미 27ART10AKPL (...)',
      name: 'lbl_product_title',
      desc: '',
      args: [],
    );
  }

  /// `• 화면을 이동할 수 있고 전환도 편리하다는`
  String get lbl_product_subtitle1 {
    return Intl.message(
      '• 화면을 이동할 수 있고 전환도 편리하다는',
      name: 'lbl_product_subtitle1',
      desc: '',
      args: [],
    );
  }

  /// `• 스탠바이미는 사랑입니다!️`
  String get lbl_product_subtitle2 {
    return Intl.message(
      '• 스탠바이미는 사랑입니다!️',
      name: 'lbl_product_subtitle2',
      desc: '',
      args: [],
    );
  }

  /// `4.89`
  String get lbl_product_review1 {
    return Intl.message(
      '4.89',
      name: 'lbl_product_review1',
      desc: '',
      args: [],
    );
  }

  /// `(216)`
  String get lbl_product_review_count1 {
    return Intl.message(
      '(216)',
      name: 'lbl_product_review_count1',
      desc: '',
      args: [],
    );
  }

  /// `LG전자`
  String get lbl_lable_1 {
    return Intl.message(
      'LG전자',
      name: 'lbl_lable_1',
      desc: '',
      args: [],
    );
  }

  /// `편리성`
  String get lbl_lable_2 {
    return Intl.message(
      '편리성',
      name: 'lbl_lable_2',
      desc: '',
      args: [],
    );
  }

  /// `LG전자  울트라HD 75UP8300KNA (...)`
  String get lbl_product1_title {
    return Intl.message(
      'LG전자  울트라HD 75UP8300KNA (...)',
      name: 'lbl_product1_title',
      desc: '',
      args: [],
    );
  }

  /// `• 화면 잘 나오고... 리모컨 기능 좋습니다.`
  String get lbl_product1_subtitle1 {
    return Intl.message(
      '• 화면 잘 나오고... 리모컨 기능 좋습니다.',
      name: 'lbl_product1_subtitle1',
      desc: '',
      args: [],
    );
  }

  /// `• 넷플 아마존 등 버튼하나로 바로 접속 되고`
  String get lbl_product1_subtitle2 {
    return Intl.message(
      '• 넷플 아마존 등 버튼하나로 바로 접속 되고',
      name: 'lbl_product1_subtitle2',
      desc: '',
      args: [],
    );
  }

  /// `4.36`
  String get lbl_product1_review1 {
    return Intl.message(
      '4.36',
      name: 'lbl_product1_review1',
      desc: '',
      args: [],
    );
  }

  /// `(136)`
  String get lbl_product1_review_count1 {
    return Intl.message(
      '(136)',
      name: 'lbl_product1_review_count1',
      desc: '',
      args: [],
    );
  }

  /// `LG전자`
  String get lbl_lable1_1 {
    return Intl.message(
      'LG전자',
      name: 'lbl_lable1_1',
      desc: '',
      args: [],
    );
  }

  /// `고화질`
  String get lbl_lable1_2 {
    return Intl.message(
      '고화질',
      name: 'lbl_lable1_2',
      desc: '',
      args: [],
    );
  }

  /// `라익미 스마트 DS4001L NETRANGE `
  String get lbl_product2_title {
    return Intl.message(
      '라익미 스마트 DS4001L NETRANGE ',
      name: 'lbl_product2_title',
      desc: '',
      args: [],
    );
  }

  /// `• 반응속도 및 화질이나 여러면에서도 부족함`
  String get lbl_product2_subtitle1 {
    return Intl.message(
      '• 반응속도 및 화질이나 여러면에서도 부족함',
      name: 'lbl_product2_subtitle1',
      desc: '',
      args: [],
    );
  }

  /// `• 중소기업TV 라익미 제품을 사용해보았는`
  String get lbl_product2_subtitle2 {
    return Intl.message(
      '• 중소기업TV 라익미 제품을 사용해보았는',
      name: 'lbl_product2_subtitle2',
      desc: '',
      args: [],
    );
  }

  /// `3.98`
  String get lbl_product2_review1 {
    return Intl.message(
      '3.98',
      name: 'lbl_product2_review1',
      desc: '',
      args: [],
    );
  }

  /// `(98)`
  String get lbl_product2_review_count1 {
    return Intl.message(
      '(98)',
      name: 'lbl_product2_review_count1',
      desc: '',
      args: [],
    );
  }

  /// `라익미`
  String get lbl_lable2_1 {
    return Intl.message(
      '라익미',
      name: 'lbl_lable2_1',
      desc: '',
      args: [],
    );
  }

  /// `가성비`
  String get lbl_lable2_2 {
    return Intl.message(
      '가성비',
      name: 'lbl_lable2_2',
      desc: '',
      args: [],
    );
  }

  /// `베스트 리뷰어 🏆 Top10`
  String get lbl_screen_title_1 {
    return Intl.message(
      '베스트 리뷰어 🏆 Top10',
      name: 'lbl_screen_title_1',
      desc: '',
      args: [],
    );
  }

  /// `골드 계급 사용자들이예요`
  String get lbl_screen_subtitle_1 {
    return Intl.message(
      '골드 계급 사용자들이예요',
      name: 'lbl_screen_subtitle_1',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get lbl_name {
    return Intl.message(
      'Name',
      name: 'lbl_name',
      desc: '',
      args: [],
    );
  }

  /// `LOGO Inc.`
  String get lbl_logo_inc {
    return Intl.message(
      'LOGO Inc.',
      name: 'lbl_logo_inc',
      desc: '',
      args: [],
    );
  }

  /// `회사 소개  |`
  String get lbl_fotter_one {
    return Intl.message(
      '회사 소개  |',
      name: 'lbl_fotter_one',
      desc: '',
      args: [],
    );
  }

  /// `인재 채용  |`
  String get lbl_fotter_two {
    return Intl.message(
      '인재 채용  |',
      name: 'lbl_fotter_two',
      desc: '',
      args: [],
    );
  }

  /// `기술 블로그  |`
  String get lbl_fotter_three {
    return Intl.message(
      '기술 블로그  |',
      name: 'lbl_fotter_three',
      desc: '',
      args: [],
    );
  }

  /// `리뷰 저작권`
  String get lbl_fotter_four {
    return Intl.message(
      '리뷰 저작권',
      name: 'lbl_fotter_four',
      desc: '',
      args: [],
    );
  }

  /// `review@logo.com`
  String get lbl_compny_email {
    return Intl.message(
      'review@logo.com',
      name: 'lbl_compny_email',
      desc: '',
      args: [],
    );
  }

  /// `KOR`
  String get lbl_drop_down {
    return Intl.message(
      'KOR',
      name: 'lbl_drop_down',
      desc: '',
      args: [],
    );
  }

  /// `@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구`
  String get lbl_copy_right {
    return Intl.message(
      '@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
      name: 'lbl_copy_right',
      desc: '',
      args: [],
    );
  }

  /// `랭킹 1위`
  String get lbl_ranking_1st_place {
    return Intl.message(
      '랭킹 1위',
      name: 'lbl_ranking_1st_place',
      desc: '',
      args: [],
    );
  }

  /// `베스트 리뷰어`
  String get lbl_best_reviewer {
    return Intl.message(
      '베스트 리뷰어',
      name: 'lbl_best_reviewer',
      desc: '',
      args: [],
    );
  }

  /// `Name01`
  String get lbl_name01 {
    return Intl.message(
      'Name01',
      name: 'lbl_name01',
      desc: '',
      args: [],
    );
  }

  /// `골드`
  String get lbl_gold {
    return Intl.message(
      '골드',
      name: 'lbl_gold',
      desc: '',
      args: [],
    );
  }

  /// `조립컴 업체를 운영하며 리뷰를 작성합니다.`
  String get lbl_i_run_a_computer {
    return Intl.message(
      '조립컴 업체를 운영하며 리뷰를 작성합니다.',
      name: 'lbl_i_run_a_computer',
      desc: '',
      args: [],
    );
  }

  /// `작성한 리뷰`
  String get lbl_written_review {
    return Intl.message(
      '작성한 리뷰',
      name: 'lbl_written_review',
      desc: '',
      args: [],
    );
  }

  /// `총 35개`
  String get lbl_total_35 {
    return Intl.message(
      '총 35개',
      name: 'lbl_total_35',
      desc: '',
      args: [],
    );
  }

  /// `최신순`
  String get lbl_Latest {
    return Intl.message(
      '최신순',
      name: 'lbl_Latest',
      desc: '',
      args: [],
    );
  }

  /// `AMD 라이젠 5`
  String get lbl_amd_ryzen {
    return Intl.message(
      'AMD 라이젠 5',
      name: 'lbl_amd_ryzen',
      desc: '',
      args: [],
    );
  }

  /// `5600X 버미어 정품 멀티팩`
  String get lbl_5600x {
    return Intl.message(
      '5600X 버미어 정품 멀티팩',
      name: 'lbl_5600x',
      desc: '',
      args: [],
    );
  }

  /// `4.07`
  String get lbl_rating_num {
    return Intl.message(
      '4.07',
      name: 'lbl_rating_num',
      desc: '',
      args: [],
    );
  }

  /// `2022.12.09`
  String get lbl_date {
    return Intl.message(
      '2022.12.09',
      name: 'lbl_date',
      desc: '',
      args: [],
    );
  }

  /// `“가격 저렴해요”`
  String get lbl_the_price_is_cheap {
    return Intl.message(
      '“가격 저렴해요”',
      name: 'lbl_the_price_is_cheap',
      desc: '',
      args: [],
    );
  }

  /// `“CPU온도 고온”`
  String get lbl_cpu_temperature_high {
    return Intl.message(
      '“CPU온도 고온”',
      name: 'lbl_cpu_temperature_high',
      desc: '',
      args: [],
    );
  }

  /// `“서멀작업 가능해요”`
  String get lbl_thermal_work_is_possible {
    return Intl.message(
      '“서멀작업 가능해요”',
      name: 'lbl_thermal_work_is_possible',
      desc: '',
      args: [],
    );
  }

  /// `“게임 잘 돌아가요”`
  String get lbl_the_game_runs_well {
    return Intl.message(
      '“게임 잘 돌아가요”',
      name: 'lbl_the_game_runs_well',
      desc: '',
      args: [],
    );
  }

  /// `“발열이 적어요”`
  String get lbl_there_is_little_fever {
    return Intl.message(
      '“발열이 적어요”',
      name: 'lbl_there_is_little_fever',
      desc: '',
      args: [],
    );
  }

  /// `멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.`
  String get lbl_it_multi_tasks {
    return Intl.message(
      '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
      name: 'lbl_it_multi_tasks',
      desc: '',
      args: [],
    );
  }

  /// `3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.`
  String get lbl_at_3600 {
    return Intl.message(
      '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
      name: 'lbl_at_3600',
      desc: '',
      args: [],
    );
  }

  /// `댓글 달기..`
  String get lbl_leave_a_comment {
    return Intl.message(
      '댓글 달기..',
      name: 'lbl_leave_a_comment',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Lang> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(
          languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Lang> load(Locale locale) => Lang.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
