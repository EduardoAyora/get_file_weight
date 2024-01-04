// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.

import 'stub_weight.dart'
    if (dart.library.io) 'mobile_user_agent.dart'
    if (dart.library.html) 'web_user_agent.dart';

class FileWeight {
  final WeightImpl _userAgent;

  FileWeight() : _userAgent = WeightImpl();

  Future<int> getWeight(xFile) {
    return _userAgent.getWeight(xFile);
  }
}
