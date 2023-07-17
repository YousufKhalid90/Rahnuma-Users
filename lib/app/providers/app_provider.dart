import 'package:RahnumaUser/config/decoders.dart';
import 'package:RahnumaUser/config/design.dart';
import 'package:RahnumaUser/config/theme.dart';
import 'package:RahnumaUser/config/validation_rules.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../config/localization.dart';

class AppProvider implements NyProvider {
  @override
  boot(Nylo nylo) async {
    await NyLocalization.instance.init(
        localeType: localeType,
        languageCode: languageCode,
        languagesList: languagesList,
        assetsDirectory: assetsDirectory,
        valuesAsMap: valuesAsMap);

    nylo.appLoader = loader;
    nylo.appLogo = logo;
    nylo.appThemes = appThemes;
    nylo.addValidationRules(validationRules);
    nylo.addModelDecoders(modelDecoders);

    return nylo;
  }

  @override
  afterBoot(Nylo nylo) async {}
}
