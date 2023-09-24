
class BookingConfirmationResponseModel {
    List<String>? duration;
    List<String>? package;

    BookingConfirmationResponseModel({
        this.duration,
        this.package,
    });

    factory BookingConfirmationResponseModel.fromJson(Map<String, dynamic> json) => BookingConfirmationResponseModel(
        duration: json["duration"] == null ? [] : List<String>.from(json["duration"]!.map((x) => x)),
        package: json["package"] == null ? [] : List<String>.from(json["package"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "duration": duration == null ? [] : List<dynamic>.from(duration!.map((x) => x)),
        "package": package == null ? [] : List<dynamic>.from(package!.map((x) => x)),
    };
}
