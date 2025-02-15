import 'package:get/get.dart';

import 'constants.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": {
          Home: Home,
          Soon: Soon,
          The_match_has_ended: The_match_has_ended,
          Go: Go,
          Categories: Categories,
          ContactUs: ContactUs,
          AboutUs: AboutUs,
          Language: Language,
          Logout: Logout,
          DarkMode: DarkMode,
          Profile: Profile,
          Select_language: Select_language,
          Premium_annual_and_monthly_subscription:
              Premium_annual_and_monthly_subscription,
          WatchYourFavouriteMatches: WatchYourFavouriteMatches,
          All_international_and_local_leagues_with_one_click_of_a_button:
              All_international_and_local_leagues_with_one_click_of_a_button,
          Please_try_something_else: Please_try_something_else,
          No_valid_entry_found: No_valid_entry_found,
          Errors: Errors,
          Ckeck_your_Internet: Ckeck_your_Internet,
          Network_Info: Network_Info,
          Unexpected_Error: Unexpected_Error,
          Please_try_agein_later: Please_try_agein_later,
          Password_not_match: Password_not_match,
          Name_can_not_be_less_than_4_characters:
              Name_can_not_be_less_than_4_characters,
          Type_your_Name: Type_your_Name,
          Password_can_not_be_less_than_six_characters:
              Password_can_not_be_less_than_six_characters,
          Enter_your_vlied_name: Enter_your_vlied_name,
          Type_your_email_adress: Type_your_email_adress,
          Type_in_valid_email_adress: Type_in_valid_email_adress,
          English: English,
          Arabic: Arabic,
          LOGIN: LOGIN,
          EMAIL: EMAIL,
          Phone: Phone,
          Enter_your_email: Enter_your_email,
          Enter_your_password: Enter_your_password,
          Reset_Password: Reset_Password,
          Forgot_Password: Forgot_Password,
          Forgot_Your_Password: Forgot_Your_Password,
          Create_New_Password: Create_New_Password,
          Create_Password: Create_Password,
          Create_your_new_password_to_login: Create_your_new_password_to_login,
          Enter_your_email_or_your_phone_number_we_will_send_you_confirmation_code:
              Enter_your_email_or_your_phone_number_we_will_send_you_confirmation_code,
          Enter_your_name: Enter_your_name,
          Dont_have_an_account: Dont_have_an_account,
          Sign_Up: Sign_Up,
          Sign_In: Sign_In,
          OR: OR,
          Sign_in_with_Google: Sign_in_with_Google,
          Sign_in_with_Apple: Sign_in_with_Apple,
          Sign_in_with_Facebook: Sign_in_with_Facebook,
          Enter_Verification_Code: Enter_Verification_Code,
          I_agree_to_the_medidoc_Terms_of_Service_and_Privacy_Policy:
              I_agree_to_the_medidoc_Terms_of_Service_and_Privacy_Policy,
          Enter_code_that_we_have_sent_to_your_email:
              Enter_code_that_we_have_sent_to_your_email,
          Verify: Verify,
          Didnt_receive_the_code: Didnt_receive_the_code,
          Type_your_PhoneNumber: Type_your_PhoneNumber,
          Add_valid_PhoneNumber: Add_valid_PhoneNumber,
          Resend: Resend,
          Phone_number: Phone_number,
          Confirm_password: Confirm_password,
          GetCode: GetCode,

          /// login screen
          UserName: UserName,
          VerificationCode: VerificationCode,
          ChannelUnknown: ChannelUnknown,
          Channel_not_found: Channel_not_found,
          /////      Settings Screen
          Settings: Settings,

          Report_a_Problem_Or_Leave_Feedback:
              Report_a_Problem_Or_Leave_Feedback,

          FAQs: FAQs,
          ////  Feedback  Screen
          feeedback: feeedback,
          Provide_feedback: Provide_feedback,
          How_feedback_it_work: How_feedback_it_work,
          FilterLeagues: FilterLeagues,
          Clear: Clear,
          Apply: Apply,
          TryAgain: TryAgain,
          Start: Start,

          /// abut us screen
          Show_more: Show_more,
          Show_less: Show_less,
          Our_Vision: Our_Vision,
          Our_Vision_desc: Our_Vision_desc,
          Our_Services: Our_Services,
          Our_Services_desc: Our_Services_desc,
          About: About,
          About_desc: About_desc,
          Our_Mission: Our_Mission,
          Our_Mission_desc: Our_Mission_desc,
          Who_We_Are: Who_We_Are,
          Who_We_Are_desc: Who_We_Are_desc,
          Match_Status: Match_Status,
          The_match_hasn_t_started_yet: The_match_hasn_t_started_yet,
          UserDataNotFound: UserDataNotFound,
          UserInfoError: UserInfoError,
          FailedToFetchUserInfo: FailedToFetchUserInfo,
          LoginError: LoginError,
          SomethingWentWrong: SomethingWentWrong,
          LoggedOutSuccessfully: LoggedOutSuccessfully,
          Success: Success,
          FailedToLogOut: FailedToLogOut,
          LogoutError: LogoutError,
          AccountCreatedSuccessfully: AccountCreatedSuccessfully,
          SignUpSuccess: SignUpSuccess,
          SignUpError: SignUpError,
          NoUserSignedIn: NoUserSignedIn,
          AuthError: AuthError,
          VerifyEmailBeforeUpdate: VerifyEmailBeforeUpdate,
          VerificationRequired: VerificationRequired,
          EmailUpdatedSuccessfully: EmailUpdatedSuccessfully,
          UpdateSuccess: UpdateSuccess,
          EmailUpdateError: EmailUpdateError,
          VerifyEmailBeforePasswordUpdate: VerifyEmailBeforePasswordUpdate,
          PasswordUpdatedSuccessfully: PasswordUpdatedSuccessfully,
          PasswordUpdateError: PasswordUpdateError,
          PasswordResetLinkSent: PasswordResetLinkSent,
          ResetPasswordError: ResetPasswordError,
          VerificationEmailSent: VerificationEmailSent,
          EmailSent: EmailSent,
          AlreadyVerified: AlreadyVerified,
          AlreadyVerifiedTitle: AlreadyVerifiedTitle,
          UserInfoUpdatedSuccessfully: UserInfoUpdatedSuccessfully,
          FailedToUpdateUserInfo: FailedToUpdateUserInfo,
          UpdateError: UpdateError,
          DeleteAccountError: DeleteAccountError,
          AccountDeletedSuccessfully: AccountDeletedSuccessfully,
          IncorrectEmailOrPassword: IncorrectEmailOrPassword,
          EmailAlreadyInUse: EmailAlreadyInUse,
          InvalidEmailFormat: InvalidEmailFormat,
          WeakPassword: WeakPassword,
          TooManyRequests: TooManyRequests,
          RequiresRecentLogin: RequiresRecentLogin,
          UserDisabled: UserDisabled,
          OperationNotAllowed: OperationNotAllowed,
          NetworkRequestFailed: NetworkRequestFailed,
          CredentialAlreadyInUse: CredentialAlreadyInUse,
          UnexpectedError: UnexpectedError,
          UpdateEmail: UpdateEmail,
          NewEmail: NewEmail,
          ChangePassword: ChangePassword,
          OldPassword: OldPassword,
          NewPassword: NewPassword,
          UpdatePassword: UpdatePassword,
          UpdateProfileInfo: UpdateProfileInfo,
          Username: Username,
          UpdateInfo: UpdateInfo,
          DeleteAccount: DeleteAccount,
          DeleteAccountConfirmation: DeleteAccountConfirmation,
          Cancel: Cancel,
          Delete: Delete,
          server: server,
        },
        "ar": {
          server: "الخادم",
          Network_Info: "معلومات الشبكة",
          DeleteAccount: "حذف الحساب",
          DeleteAccountConfirmation: "هل أنت متأكد أنك تريد حذف حسابك؟",
          Cancel: "إلغاء",
          Delete: "حذف",
          UpdateProfileInfo: 'تحديث معلومات الملف الشخصي',
          Username: 'اسم المستخدم',
          UpdateInfo: 'تحديث المعلومات',
          ChangePassword: 'تغيير كلمة المرور',
          OldPassword: 'كلمة المرور القديمة',
          NewPassword: 'كلمة المرور الجديدة',
          UpdatePassword: 'تحديث كلمة المرور',
          NewEmail: 'البريد الإلكتروني الجديد',
          UpdateEmail: 'تحديث البريد الإلكتروني',
          IncorrectEmailOrPassword:
              "البريد الإلكتروني أو كلمة المرور غير صحيحة. حاول مرة أخرى.",
          EmailAlreadyInUse: "هذا البريد الإلكتروني مرتبط بحساب آخر.",
          InvalidEmailFormat:
              "تنسيق البريد الإلكتروني غير صالح. يرجى التحقق والمحاولة مرة أخرى.",
          WeakPassword: "كلمة المرور ضعيفة للغاية. يرجى اختيار كلمة مرور أقوى.",
          TooManyRequests: "الكثير من المحاولات. يرجى المحاولة لاحقًا.",
          RequiresRecentLogin:
              "لأسباب أمنية، يرجى تسجيل الدخول مرة أخرى لتحديث بريدك الإلكتروني أو كلمة المرور.",
          UserDisabled: "تم تعطيل حساب المستخدم هذا.",
          OperationNotAllowed:
              "هذه العملية غير مسموح بها. يرجى الاتصال بالدعم.",
          NetworkRequestFailed: "خطأ في الشبكة. يرجى التحقق من اتصال الإنترنت.",
          CredentialAlreadyInUse:
              "هذه البيانات المرتبطة تم استخدامها بالفعل مع حساب آخر.",
          UnexpectedError: "حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.",
          DeleteAccountError: "خطأ في حذف الحساب",
          AccountDeletedSuccessfully: "تم حذف الحساب بنجاح.",
          FailedToUpdateUserInfo:
              "فشل في تحديث معلومات المستخدم. يرجى المحاولة مرة أخرى.",
          UpdateError: "خطأ في التحديث",
          VerificationEmailSent: "تم إرسال بريد التحقق. تحقق من صندوق الوارد.",
          EmailSent: "تم إرسال البريد الإلكتروني",
          AlreadyVerified: "تم التحقق من بريدك الإلكتروني بالفعل.",
          AlreadyVerifiedTitle: "تم التحقق بالفعل",
          UserInfoUpdatedSuccessfully: "تم تحديث معلومات المستخدم بنجاح.",
          ResetPasswordError: "خطأ في إعادة تعيين كلمة المرور",
          PasswordResetLinkSent:
              "تم إرسال رابط إعادة تعيين كلمة المرور إلى . تحقق من صندوق الوارد.",
          VerifyEmailBeforePasswordUpdate:
              "يرجى التحقق من بريدك الإلكتروني قبل تحديث كلمة المرور.",
          PasswordUpdatedSuccessfully: "تم تحديث كلمة المرور بنجاح!",
          PasswordUpdateError: "خطأ في تحديث كلمة المرور",
          EmailUpdateError: "خطأ في تحديث البريد الإلكتروني",
          EmailUpdatedSuccessfully: "تم تحديث البريد الإلكتروني بنجاح.",
          UpdateSuccess: "نجاح التحديث",
          VerifyEmailBeforeUpdate:
              "يرجى التحقق من بريدك الإلكتروني قبل تحديث بريدك الإلكتروني.",
          VerificationRequired: "التحقق مطلوب",
          NoUserSignedIn: "لا يوجد مستخدم مسجل الدخول.",
          AuthError: "خطأ في المصادقة",
          SignUpError: "خطأ في التسجيل",
          AccountCreatedSuccessfully:
              "تم إنشاء الحساب بنجاح! يرجى التحقق من بريدك الإلكتروني قبل تسجيل الدخول.",
          SignUpSuccess: "نجاح التسجيل",
          SomethingWentWrong: "حدث خطأ ما. يرجى المحاولة لاحقًا.",
          LoginError: "خطأ في تسجيل الدخول",
          EmailNotVerified: "لم يتم التحقق من البريد الإلكتروني",
          VerifyEmailBeforeLogin:
              "يرجى التحقق من بريدك الإلكتروني قبل تسجيل الدخول.",
          UserInfoError: "خطأ في معلومات المستخدم",
          FailedToFetchUserInfo:
              "فشل في جلب معلومات المستخدم. يرجى التحقق من الاتصال.",

          UserDataNotFound:
              "لم يتم العثور على بيانات المستخدم. يرجى المحاولة مرة أخرى لاحقًا.",
          TryAgain: 'حاول مرة اخرى',
          The_match_hasn_t_started_yet: "لم يبدء المباراة بعد",
          Match_Status: "حالة المباراة",
          The_match_has_ended: "انتهت المباراة",
          Start: "إبدء",
          Go: "استمر",
          Soon: "قريباََ",
          FilterLeagues: "فلترة الدوريات",
          Clear: "مسح",
          Apply: "تطبيق",
          /////      Settings Screen
          Settings: 'الضبط',
          FAQs: 'الأسئلة الشائعة',
          Report_a_Problem_Or_Leave_Feedback: 'الإبلاغ عن مشكلة أو أترك تعليق',
          ////  Feedback  Screen
          feeedback: " أترك تعليق",
          Provide_feedback: "تقديم تعليق",
          How_feedback_it_work: '# كيف يعمل؟\n'
              '1. ما عليك سوى الضغط على زر "تقديم التعليقات" أو زر الرمز.\n'
              '2. يتم فتح عرض الملاحظات. '
              'يمكنك الاختيار بين وضع الرسم والتنقل. '
              'عندما تكون في وضع التنقل، يمكنك التنقل بحرية في'
              'برنامج. جربه عن طريق فتح درج التنقل '
              " وضع الرسم فقط اضغط على زر الرسم الموجود على اليمين"
              '  جانب . يمكنك الآن الرسم على الشاشة. \n '
              '3. لإنهاء ملاحظاتك فقط قم بكتابة رسالة '
              'أدناه وأرسله بالضغط على زر إرسال',

          /// login screen
          UserName: "اسم المستخدم",
          ////
          Profile: "الملف الشخصي",
          AboutUs: "من نحن",
          DarkMode: 'الوضع الداكن',
          English: 'إنجليزي',
          Arabic: 'العربية',
          Logout: "تسجيل الخروج",
          ContactUs: "اتصل بنا",
          Categories: "الاقسام",
          Home: "الصفحة الرئيسية",
          All_international_and_local_leagues_with_one_click_of_a_button:
              "جميع الدوريات العالمية والمحلية بضغطة زر واحدة",
          WatchYourFavouriteMatches: "شاهد مبارياتك المفضلة بلا انقطاع",
          Premium_annual_and_monthly_subscription: "اشتراك سنوي وشهري متميز",
          Language: "اللغة",
          Select_language: 'اختر اللغة',
          No_valid_entry_found: "لا يوجد بيانات حالياً",
          Errors: "خطأ ❗",
          LoggedOutSuccessfully: "تم تسجيل الخروج بنجاح.",
          Success: "نجاح",
          FailedToLogOut: "فشل في تسجيل الخروج. يرجى المحاولة مرة أخرى.",
          LogoutError: "خطأ في تسجيل الخروج",
          Ckeck_your_Internet: "تفحص اتصال الإنترنت",
          Unexpected_Error: "خطأ غير متوقع ❗",
          Please_try_agein_later: "الرجاء تجربة في وقت أخر",
          Please_try_something_else: "الرجاء تجربة شئ أخر ❗",
          Type_your_Name: "اكتب اسمك",
          Name_can_not_be_less_than_4_characters: "ادخل اسم صحيح",
          Enter_your_vlied_name: "ادخل اسم صحيح",
          Type_in_valid_email_adress: "ادخل إيميل صحيح",
          Type_your_email_adress: "اكتب إيميلك",
          Password_can_not_be_less_than_six_characters: "كلمة السر ضعيفة",
          Password_not_match: "كلمة السر غير متطابقة",

          ///////////////
          LOGIN: "تسجيل الدخول",
          Confirm_password: "تاكيد كلمة المرور",
          Type_your_PhoneNumber: "ادخل رقم الهاتف",
          Add_valid_PhoneNumber: "ادخل رقم صحيح",
          EMAIL: "بريد إلكتروني",
          Phone: " رقم الهاتف",
          Enter_your_email: "أدخل بريدك الإلكتروني",
          Enter_your_password: "ادخل رقمك السري",
          Enter_your_name: "أدخل أسمك",
          Forgot_Password: "هل نسيت كلمة السر؟",
          Reset_Password: "إعادة تعيين كلمة المرور",
          Forgot_Your_Password: "نسيت كلمة السر؟",
          Dont_have_an_account: "ليس لديك حساب؟",
          Create_New_Password: 'إنشاء كلمة مرور جديدة',
          Create_Password: 'إنشاء كلمة المرور',
          Create_your_new_password_to_login:
              'قم بإنشاء كلمة المرور الجديدة لتسجيل الدخول',
          Enter_your_email_or_your_phone_number_we_will_send_you_confirmation_code:
              'أدخل بريدك الإلكتروني أو رقم هاتفك، وسنرسل لك \nرمز التأكيد',
          Sign_Up: 'اشتراك',
          Phone_number: "رقم الهاتف",
          Sign_In: 'تسجيل الدخول',
          OR: 'أو',
          Sign_in_with_Google: 'قم بتسجيل الدخول باستخدام جوجل',
          Sign_in_with_Apple: 'قم بتسجيل الدخول باستخدام أبل',
          Sign_in_with_Facebook: 'قم بتسجيل الدخول باستخدام الفيسبوك',
          I_agree_to_the_medidoc_Terms_of_Service_and_Privacy_Policy:
              'أوافق على شروط خدمة  \n سياسة الخصوصية',
          Enter_Verification_Code: 'أدخل رمز التحقق',
          Enter_code_that_we_have_sent_to_your_email:
              'أدخل الرمز الذي أرسلناه إلى بريدك الإلكتروني',
          Verify: 'تحقق',
          Didnt_receive_the_code: 'لم تتلق الرمز؟',
          Resend: 'إعادة إرسال',
          GetCode: 'احصل على رمز التحقق',
          VerificationCode: "رمز التحقق",
          ChannelUnknown: "القناة غير معروفة",
          Channel_not_found: "لم يتم العثور على القناة",

          /// abut us screen
          Show_more: "عرض المزيد",
          Show_less: "عرض أقل",
          Our_Vision: Our_Vision_ar,
          Our_Vision_desc: Our_Vision_desc_ar,
          Our_Services: Our_Services_ar,
          Our_Services_desc: Our_Services_desc_ar,
          About: About_ar,
          About_desc: About_desc_ar,
          Our_Mission: Our_Mission_ar,
          Our_Mission_desc: Our_Mission_desc_ar,
          Who_We_Are: Who_We_Are_ar,
          Who_We_Are_desc: Who_We_Are_desc_ar,
        },
      };
}
