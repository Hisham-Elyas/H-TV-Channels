import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../core/helpers/check_internet.dart';
import '../../../core/helpers/enums.dart';
import '../../../core/helpers/network_manager.dart';
import '../../../core/helpers/snackbar_error_message.dart';
import '../../../core/networking/exception.dart';
import '../models/login_model.dart';
import '../models/login_response_model.dart';
import '../models/sinup_model.dart';
import '../models/user_model.dart';
import '../remote/auth_remotdata.dart';

abstract class AuthRepo {
  Future signUp({required SinupModel sinupModel});
  Future logIn({required LoginModel loginModel});
  Future getUserInfo();
  Future<bool> updateUserInfo({required UserModel userModel});
  Future logeOut();
  Future<bool> updateEmail({required String newEmail});
  Future<bool> updatePassword(
      {required String oldPassword, required String newPassword});

  Future<bool> forgotPassword({required String email});
  Future<bool> deleteAccount();
}

class AuthRepoImpFirebase implements AuthRepo {
  final AuthRemotDataImpFirebase authRemotData;

  AuthRepoImpFirebase({required this.authRemotData});

  @override
  Future<bool> logeOut() async {
    return await authRemotData.logeOut();
  }

  @override
  Future<bool> signUp({required SinupModel sinupModel}) async {
    final isConnected = await NetworkManager.instance.isConnected();
    if (isConnected) {
      return await authRemotData.signUp(sinupModel: sinupModel);
    } else {
      return false;
    }
  }

  @override
  Future<bool> logIn({required LoginModel loginModel}) async {
    final isConnected = await NetworkManager.instance.isConnected();
    if (isConnected) {
      return await authRemotData.logIn(loginModel: loginModel);
    } else {
      return false;
    }
  }

  @override
  Future<Either<StatusRequest, UserModel>> getUserInfo() async {
    final isConnected = await NetworkManager.instance.isConnected();

    if (isConnected) {
      try {
        final response = await authRemotData.getUserInfo();

        return right(response);
      } on ServerException catch (_) {
        return left(StatusRequest.serverFailure);
      }
    } else {
      return left(StatusRequest.serverFailure);
    }
  }

  @override
  Future<bool> updateEmail({required String newEmail}) async {
    final isConnected = await NetworkManager.instance.isConnected();
    if (isConnected) {
      return await authRemotData.updateEmail(newEmail: newEmail);
    } else {
      return false;
    }
  }

  @override
  Future<bool> updatePassword(
      {required String oldPassword, required String newPassword}) async {
    final isConnected = await NetworkManager.instance.isConnected();
    if (isConnected) {
      return await authRemotData.updatePassword(
          oldPassword: oldPassword, newPassword: newPassword);
    } else {
      return false;
    }
  }

  @override
  Future<bool> deleteAccount() async {
    final isConnected = await NetworkManager.instance.isConnected();

    if (isConnected) {
      return await authRemotData.deleteAccount();
    } else {
      return false;
    }
  }

  Future<void> resendEmailVerification() async {
    final isConnected = await NetworkManager.instance.isConnected();
    if (isConnected) {
      return await authRemotData.resendEmailVerification();
    } else {
      return;
    }
  }

  @override
  Future<bool> forgotPassword({required String email}) async {
    final isConnected = await NetworkManager.instance.isConnected();
    if (isConnected) {
      return await authRemotData.forgotPassword(email: email);
    } else {
      return false;
    }
  }

  @override
  Future<bool> updateUserInfo({required UserModel userModel}) async {
    final isConnected = await NetworkManager.instance.isConnected();
    if (isConnected) {
      return await authRemotData.updateUserInfo(userModel: userModel);
    } else {
      return false;
    }
  }
}

class AuthRepoImpHttp implements AuthRepo {
  final AuthRemotDataImpHttp authRemotData;

  AuthRepoImpHttp({required this.authRemotData});
  @override
  Future<Either<StatusRequest, LoginResponseModel>> logIn(
      {required LoginModel loginModel}) async {
    if (await checkInternet()) {
      try {
        final response = await authRemotData.logIn(loginModel: loginModel);
        debugPrint("AuthRepoImpHttp");
        debugPrint(response.toString());
        return right(response);
      } on ServerException catch (e) {
        showErrorMessage(e.message);
        return left(StatusRequest.serverFailure);
      }
    } else {
      showNetworkError();
      return left(StatusRequest.serverFailure);
    }
  }

  @override
  Future logeOut() {
    throw UnimplementedError();
  }

  @override
  Future<bool> signUp({required SinupModel sinupModel}) async {
    if (await checkInternet()) {
      try {
        await authRemotData.signUp(sinupModel: sinupModel);
        return true;
      } on ServerException catch (e) {
        showErrorMessage(e.message);
        return false;
      }
    } else {
      showNetworkError();

      return false;
    }
  }

  @override
  Future<UserModel> getUserInfo() {
    throw UnimplementedError();
  }

  @override
  Future<bool> updateEmail({required String newEmail}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> updatePassword(
      {required String oldPassword, required String newPassword}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> forgotPassword({required String email}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteAccount() {
    throw UnimplementedError();
  }

  @override
  Future<bool> updateUserInfo({required UserModel userModel}) {
    throw UnimplementedError();
  }
}
