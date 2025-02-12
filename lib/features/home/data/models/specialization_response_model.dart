import 'package:json_annotation/json_annotation.dart';
part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  @JsonKey(name: "data")
  final List<SpecializationData?>? specializationData;
  SpecializationResponseModel({this.specializationData});

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  final int? id;
  final String? name;
  @JsonKey(name: "doctors")
  final List<Doctors?>? doctorsList;

  SpecializationData({this.id, this.name, this.doctorsList});

  factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  final int? id;
  final String? name;
  final String? email;
  final String? gender;
  final String? photo;
  final String? phone;
  final String? degree;
  final String? address;
  final String? description;
  @JsonKey(name: "appoint_price")
  final int? price;
  final City? city;
  final Specialization? specialization;
  @JsonKey(name: "start_time")
  final String? startTime;
  @JsonKey(name: "end_time")
  final String? endTime;

  Doctors(
      {this.id,
      this.name,
      this.email,
      this.gender,
      this.photo,
      this.phone,
      this.degree,
      this.address,
      this.description,
      this.price,
      this.city,
      this.specialization,
      this.startTime,
      this.endTime});

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}

@JsonSerializable()
class City {
  final int? id;
  final String? name;
  final Governrate? governrate;

  City({this.id, this.name, this.governrate});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@JsonSerializable()
class Governrate {
  final int? id;
  final String? name;

  Governrate({this.id, this.name});

  factory Governrate.fromJson(Map<String, dynamic> json) =>
      _$GovernrateFromJson(json);
}

@JsonSerializable()
class Specialization {
  final int? id;
  final String? name;

  Specialization({this.id, this.name});

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}
