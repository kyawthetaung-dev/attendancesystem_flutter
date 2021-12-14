import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

import '../image/student_image_model.dart';

part 'student_model.g.dart';

@JsonSerializable()
class StudentModel extends INetworkModel<StudentModel> {
  @JsonKey(name: '_id')
  final String? id;
  final String? stdId;
  final String? email;
  final String? fullName;
  final StudentImageModel? studentImageModel;
  final String? imageUrl;
  bool? attendanceStatus;

  StudentModel(
      {this.id,
      this.stdId,
      this.email,
      this.fullName,
      this.studentImageModel,
      this.imageUrl,
      this.attendanceStatus});

  @override
  StudentModel fromJson(Map<String, dynamic> json) {
    return _$StudentModelFromJson(json);
  }

  @override
  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return _$StudentModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StudentModelToJson(this);
  }
}
