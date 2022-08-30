import 'package:yandex_to_do_app/flavor_config.dart';
import 'package:yandex_to_do_app/main_common.dart';

void main() {
  FlavorConfigDTO flavorConfigDTO =
      FlavorConfigDTO(appName: 'Yandex-Todo Prod', flavor: 'prod');

  mainCommon(flavorConfigDTO);
}
