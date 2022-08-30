import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_to_do_app/domain/domain.dart';

part 'element_request.freezed.dart';
part 'element_request.g.dart';

@freezed
class ElementRequest with _$ElementRequest {
  const factory ElementRequest({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'element') required Todo element,
  }) = _ElementRequest;

  factory ElementRequest.fromJson(Map<String, dynamic> json) =>
      _$ElementRequestFromJson(json);
}
