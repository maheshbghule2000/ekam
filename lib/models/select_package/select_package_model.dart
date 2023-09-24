class SelectPackageResponseModel {
    List<String>? duration;
    List<String>? package;

    SelectPackageResponseModel({
        this.duration,
        this.package,
    });

    factory SelectPackageResponseModel.fromJson(Map<String, dynamic> json) => SelectPackageResponseModel(
        duration: json["duration"] == null ? [] : List<String>.from(json["duration"]!.map((x) => x)),
        package: json["package"] == null ? [] : List<String>.from(json["package"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "duration": duration == null ? [] : List<dynamic>.from(duration!.map((x) => x)),
        "package": package == null ? [] : List<dynamic>.from(package!.map((x) => x)),
    };
}
