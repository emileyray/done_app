import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_to_do_app/domain/domain.dart';

part 'list_response.freezed.dart';
part 'list_response.g.dart';

@freezed
class ListResponse with _$ListResponse {
  const factory ListResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'list') required List<Todo> list,
    @JsonKey(name: 'revision') required int revision,
  }) = _ListResponse;

  factory ListResponse.fromJson(Map<String, dynamic> json) =>
      _$ListResponseFromJson(json);
}
