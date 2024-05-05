import 'dart:convert';
/// Result : "adenocarcinoma"

UploadCtScanModel uploadCtScanModelFromJson(String str) => UploadCtScanModel.fromJson(json.decode(str));
String uploadCtScanModelToJson(UploadCtScanModel data) => json.encode(data.toJson());
class UploadCtScanModel {
  UploadCtScanModel({
      String? result,}){
    _result = result;
}

  UploadCtScanModel.fromJson(dynamic json) {
    _result = json['Result'];
  }
  String? _result;
UploadCtScanModel copyWith({  String? result,
}) => UploadCtScanModel(  result: result ?? _result,
);
  String? get result => _result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Result'] = _result;
    return map;
  }

}