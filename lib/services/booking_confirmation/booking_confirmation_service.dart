import 'package:ekam/models/booking_confirmation/booking_confirmation_model.dart';
import '../../utils/failure.dart';
import '../api/api_manager.dart';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import '../api/api_endpoints.dart';
import '../api/api_exception.dart';

class DoctorDetailsRepository {
  final _apiManager = ApiManager();

  Future<Either<Failure, BookingConfirmationResponseModel>> bookingConfirmation() async {
    try {
      var jsonResponse = await _apiManager.get(ApiEndpoints.bookingConfirmation);
      var response = BookingConfirmationResponseModel.fromJson(jsonResponse);
      log(response.toString());
      return right(response);
    } on AppException catch (error) {
      return left(ApiFailure(message: error.message));
    } catch (error) {
      return left(ApiFailure(message: error.toString()));
    }
  }
}
