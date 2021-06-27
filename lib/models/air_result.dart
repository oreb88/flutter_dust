class AirResult {
  late String status;
  late Data data;

  AirResult({required this.status, required this.data});

  AirResult.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = (json['data'] != null ? Data.fromJson(json['data']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  late String city;
  late String state;
  late String country;
  late Location location;
  late Current current;

  Data(
      {required this.city,
      required this.state,
      required this.country,
      required this.location,
      required this.current});

  Data.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    state = json['state'];
    country = json['country'];
    location = (json['location'] != null
        ? Location.fromJson(json['location'])
        : null)!;
    current =
        (json['current'] != null ? Current.fromJson(json['current']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    if (this.current != null) {
      data['current'] = this.current.toJson();
    }
    return data;
  }
}

class Location {
  late String type;
  late List<double> coordinates;

  Location({required this.type, required this.coordinates});

  Location.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['coordinates'] = this.coordinates;
    return data;
  }
}

class Current {
  late Weather weather;
  late Pollution pollution;

  Current({required this.weather, required this.pollution});

  Current.fromJson(Map<String, dynamic> json) {
    weather =
        (json['weather'] != null ? Weather.fromJson(json['weather']) : null)!;
    pollution = (json['pollution'] != null
        ? new Pollution.fromJson(json['pollution'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.weather != null) {
      data['weather'] = this.weather.toJson();
    }
    if (this.pollution != null) {
      data['pollution'] = this.pollution.toJson();
    }
    return data;
  }
}

class Weather {
  late String ts;
  late int tp;
  late int pr;
  late int hu;
  late double ws;
  late int wd;
  late String ic;

  Weather(
      {required this.ts,
      required this.tp,
      required this.pr,
      required this.hu,
      required this.ws,
      required this.wd,
      required this.ic});

  Weather.fromJson(Map<String, dynamic> json) {
    ts = json['ts'];
    tp = json['tp'];
    pr = json['pr'];
    hu = json['hu'];
    ws = json['ws'];
    wd = json['wd'];
    ic = json['ic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ts'] = this.ts;
    data['tp'] = this.tp;
    data['pr'] = this.pr;
    data['hu'] = this.hu;
    data['ws'] = this.ws;
    data['wd'] = this.wd;
    data['ic'] = this.ic;
    return data;
  }
}

class Pollution {
  late String ts;
  late int aqius;
  late String mainus;
  late int aqicn;
  late String maincn;

  Pollution(
      {required this.ts,
      required this.aqius,
      required this.mainus,
      required this.aqicn,
      required this.maincn});

  Pollution.fromJson(Map<String, dynamic> json) {
    ts = json['ts'];
    aqius = json['aqius'];
    mainus = json['mainus'];
    aqicn = json['aqicn'];
    maincn = json['maincn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ts'] = this.ts;
    data['aqius'] = this.aqius;
    data['mainus'] = this.mainus;
    data['aqicn'] = this.aqicn;
    data['maincn'] = this.maincn;
    return data;
  }
}
