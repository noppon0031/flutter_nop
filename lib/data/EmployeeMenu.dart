class EmployeeMenu {
  EmployeeMenu({
    required this.resCode,
    required this.message,
    required this.data,
  });
  late final int resCode;
  late final String message;
  late final Data data;
  
  EmployeeMenu.fromJson(Map<String, dynamic> json){
    resCode = json['resCode'] != null ? 200 : 200;
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['resCode'] = resCode;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.profile,
    required this.showCheckIn,
    required this.listMenu,
    required this.listWidge,
  });
  late final Profile profile;
  late final bool showCheckIn;
  late final List<ListMenu> listMenu;
  late final List<ListWidge> listWidge;
  
  Data.fromJson(Map<String, dynamic> json){
    profile = Profile.fromJson(json['profile']);
    showCheckIn = json['showCheckIn'];
    listMenu = List.from(json['listMenu']).map((e)=>ListMenu.fromJson(e)).toList();
    listWidge = List.from(json['listWidge']).map((e)=>ListWidge.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['profile'] = profile.toJson();
    _data['showCheckIn'] = showCheckIn;
    _data['listMenu'] = listMenu.map((e)=>e.toJson()).toList();
    _data['listWidge'] = listWidge.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Profile {
  Profile({
    required this.id,
    required this.name,
    required this.roleName,
    required this.img,
  });
  late final String id;
  late final String name;
  late final String roleName;
  late final String img;
  
  Profile.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    roleName = json['roleName'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['roleName'] = roleName;
    _data['img'] = img;
    return _data;
  }
}

class ListMenu {
  ListMenu({
    required this.key,
    required this.name,
  });
  late final String key;
  late final String name;
  
  ListMenu.fromJson(Map<String, dynamic> json){
    key = json['key'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['key'] = key;
    _data['name'] = name;
    return _data;
  }
}

class ListWidge {
  ListWidge({
    required this.key,
  });
  late final String key;
  
  ListWidge.fromJson(Map<String, dynamic> json){
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['key'] = key;
    return _data;
  }
}