import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/functions/checkinternet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = await jsonDecode(response.body);
          return Right(responsebody);
        } else {
          return left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      return left(StatusRequest.serverFailure);
    }
  }
}
