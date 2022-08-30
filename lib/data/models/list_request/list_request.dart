import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_to_do_app/domain/domain.dart';

part 'list_request.freezed.dart';
part 'list_request.g.dart';

@freezed
class ListRequest with _$ListRequest {
  const factory ListRequest({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'list') required List<Todo> list,
  }) = _ListRequest;

  factory ListRequest.fromJson(Map<String, dynamic> json) =>
      _$ListRequestFromJson(json);
}
