import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_to_do_app/domain/domain.dart';

part 'element_response.freezed.dart';
part 'element_response.g.dart';

@freezed
class ElementResponse with _$ElementResponse {
  const factory ElementResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'element') required Todo element,
    @JsonKey(name: 'revision') required int revision,
  }) = _ElementResponse;

  factory ElementResponse.fromJson(Map<String, dynamic> json) =>
      _$ElementResponseFromJson(json);
}
