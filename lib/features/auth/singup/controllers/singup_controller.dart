import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/coustom_overlay.dart';
import '../../../../core/localization/constants.dart';
import '../../../../core/widgets/custom_snackbar.dart';
import '../../login/ui/login_screen.dart';
import '../../models/sinup_model.dart';
import '../../repos/auth_repo.dart';

class SingupController extends GetxController {
  late String email;
  late String userName;
  late String password;
  late String confirmPassword;
  late String phoneNumber;
  final GlobalKey<FormState> singUpformKey = GlobalKey();
  final AuthRepoImpFirebase authRepo = Get.find();
  void singUp() async {
    Get.focusScope!.unfocus();
    if (!singUpformKey.currentState!.validate()) {
      // Invalid!
      return;
    }
    singUpformKey.currentState!.save();
    debugPrint('SingUp =>  userName : $userName');
    showOverlay(
      asyncFunction: () async {
        try {
          final isSuccess = await authRepo.signUp(
              sinupModel: SinupModel(
                  email: email,
                  password: confirmPassword,
                  phone: phoneNumber,
                  userName: userName));

          if (isSuccess) {
            Get.offAll(() => const LoginScreen());
          }
        } catch (e) {
          showCustomSnackBar(
            message: e.toString(),
            title: "",
            isError: true,
          );
        }
      },
    );
  }

  String? emailvalidator(val) {
    if (val.isEmpty) {
      return Type_your_email_adress.tr;
    } else if (!GetUtils.isEmail(val)) {
      return Type_in_valid_email_adress.tr;
    } else {
      return null;
    }
  }

  String? phonevalidator(val) {
    if (val.isEmpty) {
      return Type_your_PhoneNumber.tr;
    } else if (AppRegex.isPhoneNumberValid(val)) {
      return Add_valid_PhoneNumber.tr;
    } else {
      return null;
    }
  }

  String? userNamevalidator(val) {
    if (val.isEmpty) {
      return Type_your_Name.tr;
    } else if (val.length < 4) {
      return Name_can_not_be_less_than_4_characters.tr;
    } else {
      return null;
    }
  }

  String? passwordvalidator(val) {
    update();
    if (val.isEmpty) {
      return Enter_your_password.tr;
    } else if (val.length < 6) {
      return Password_can_not_be_less_than_six_characters.tr;
    } else {
      return null;
    }
  }

  String? confirmPasswordvalidator(val) {
    update();
    if (val.isEmpty) {
      return Enter_your_password.tr;
    } else if (password != confirmPassword) {
      return Password_not_match.tr;
    } else {
      return null;
    }
  }

  set setEmail(val) {
    email = val;
  }

  set setPassword(val) {
    password = val;
  }

  set setconfirmPassword(val) {
    confirmPassword = val;
  }

  set setuserName(val) {
    userName = val;
  }

  set setphoneNumber(val) {
    phoneNumber = val;
  }
}
