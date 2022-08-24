class CheckIn {
  CheckIn({
    required this.name,
    required this.lat,
    required this.lng,
  });
  late final String name;
  late final String lat;
  late final String lng;

  CheckIn.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;

    _data['lat'] = lat;
    _data['lng'] = lng;

    return _data;
  }
}

class CheckOut {
  CheckOut({
    required this.name,
    required this.storeId,
    required this.checkInId,
    required this.lat,
    required this.lng,
  });
  late final String name;
  late final String storeId;
  late final String checkInId;
  late final String lat;
  late final String lng;

  CheckOut.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    storeId = json['storeId'];
    checkInId = json['checkInId'];
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['storeId'] = storeId;
    _data['checkInId'] = checkInId;
    _data['lat'] = lat;
    _data['lng'] = lng;

    return _data;
  }
}

class ChecInGet {
  ChecInGet({
    required this.message,
    required this.data,
  });
  late final String message;
  late final Data data;

  ChecInGet.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.listTimes,
  });
  late final List<ListTimes> listTimes;

  Data.fromJson(Map<String, dynamic> json) {
    listTimes =
        List.from(json['listTimes']).map((e) => ListTimes.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['listTimes'] = listTimes.map((e) => e.toJson()).toList();
    return _data;
  }
}

class ListTimes {
  ListTimes({
    required this.checkInTime,
    required this.checkOutTime,
  });
  late final String checkInTime;
  late final String checkOutTime;

  ListTimes.fromJson(Map<String, dynamic> json) {
    checkInTime = json['checkInTime'];
    checkOutTime = json['checkOutTime'] != null ? json['checkOutTime'] : "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['checkInTime'] = checkInTime;
    _data['checkOutTime'] = checkOutTime;
    return _data;
  }
}
