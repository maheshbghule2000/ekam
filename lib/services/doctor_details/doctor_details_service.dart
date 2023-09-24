import 'package:ekam/models/doctor_details/doctor_details_model.dart';
import '../../utils/failure.dart';
import '../api/api_manager.dart';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import '../api/api_endpoints.dart';
import '../api/api_exception.dart';

class DoctorDetailsRepository {
  final _apiManager = ApiManager();

  Future<Either<Failure, DoctorDetailsResponseModel>>
      getDoctorDetails() async {
    try {
      var jsonResponse = await _apiManager.get(ApiEndpoints.doctorDetails);
      var response = DoctorDetailsResponseModel.fromJson(jsonResponse);
      log(response.toString());
      return right(response);
    } on AppException catch (error) {
      return left(ApiFailure(message: error.message));
    } catch (error) {
      return left(ApiFailure(message: error.toString()));
    }
  }
}

