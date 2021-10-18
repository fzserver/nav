// ignore_for_file: prefer_if_null_operators

class LoginModel {
  LoginModel({
    this.status,
    this.message,
    this.exportPath,
    this.data,
    this.devInfo,
  });

  final String? status;
  final String? message;
  final String? exportPath;
  final Data? data;
  final DevInfo? devInfo;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
        exportPath: json["exportPath"] == null ? null : json["exportPath"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        devInfo:
            json["devInfo"] == null ? null : DevInfo.fromJson(json["devInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "message": message == null ? null : message,
        "exportPath": exportPath == null ? null : exportPath,
        "data": data == null ? null : data!.toJson(),
        "devInfo": devInfo == null ? null : devInfo!.toJson(),
      };
}

class Data {
  Data({
    this.loginInfo,
    this.fyInfo,
    this.roles,
  });

  final LoginInfo? loginInfo;
  final FyInfo? fyInfo;
  final List<Role>? roles;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        loginInfo: json["LOGIN_INFO"] == null
            ? null
            : LoginInfo.fromJson(json["LOGIN_INFO"]),
        fyInfo:
            json["FY_INFO"] == null ? null : FyInfo.fromJson(json["FY_INFO"]),
        roles: json["ROLES"] == null
            ? null
            : List<Role>.from(json["ROLES"].map((x) => Role.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "LOGIN_INFO": loginInfo == null ? null : loginInfo!.toJson(),
        "FY_INFO": fyInfo == null ? null : fyInfo!.toJson(),
        "ROLES": roles == null
            ? null
            : List<dynamic>.from(roles!.map((x) => x.toJson())),
      };
}

class FyInfo {
  FyInfo({
    this.id,
    this.fyStartdate,
    this.fyEnddate,
    this.fyName,
    this.fyShortname,
    this.status,
    this.iscurrent,
  });

  final String? id;
  final String? fyStartdate;
  final String? fyEnddate;
  final String? fyName;
  final String? fyShortname;
  final String? status;
  final String? iscurrent;

  factory FyInfo.fromJson(Map<String, dynamic> json) => FyInfo(
        id: json["ID"] == null ? null : json["ID"],
        fyStartdate: json["FY_STARTDATE"] == null ? null : json["FY_STARTDATE"],
        fyEnddate: json["FY_ENDDATE"] == null ? null : json["FY_ENDDATE"],
        fyName: json["FY_NAME"] == null ? null : json["FY_NAME"],
        fyShortname: json["FY_SHORTNAME"] == null ? null : json["FY_SHORTNAME"],
        status: json["STATUS"] == null ? null : json["STATUS"],
        iscurrent: json["ISCURRENT"] == null ? null : json["ISCURRENT"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id == null ? null : id,
        "FY_STARTDATE": fyStartdate == null ? null : fyStartdate,
        "FY_ENDDATE": fyEnddate == null ? null : fyEnddate,
        "FY_NAME": fyName == null ? null : fyName,
        "FY_SHORTNAME": fyShortname == null ? null : fyShortname,
        "STATUS": status == null ? null : status,
        "ISCURRENT": iscurrent == null ? null : iscurrent,
      };
}

class LoginInfo {
  LoginInfo({
    this.userId,
    this.roleId,
    this.roleName,
    this.roleDisplayName,
    this.name,
    this.mobile,
    this.email,
    this.userName,
  });

  final String? userId;
  final String? roleId;
  final String? roleName;
  final String? roleDisplayName;
  final String? name;
  final String? mobile;
  final String? email;
  final String? userName;

  factory LoginInfo.fromJson(Map<String, dynamic> json) => LoginInfo(
        userId: json["USER_ID"] == null ? null : json["USER_ID"],
        roleId: json["ROLE_ID"] == null ? null : json["ROLE_ID"],
        roleName: json["ROLE_NAME"] == null ? null : json["ROLE_NAME"],
        roleDisplayName: json["ROLE_DISPLAY_NAME"] == null
            ? null
            : json["ROLE_DISPLAY_NAME"],
        name: json["NAME"] == null ? null : json["NAME"],
        mobile: json["MOBILE"] == null ? null : json["MOBILE"],
        email: json["EMAIL"] == null ? null : json["EMAIL"],
        userName: json["USER_NAME"] == null ? null : json["USER_NAME"],
      );

  Map<String, dynamic> toJson() => {
        "USER_ID": userId == null ? null : userId,
        "ROLE_ID": roleId == null ? null : roleId,
        "ROLE_NAME": roleName == null ? null : roleName,
        "ROLE_DISPLAY_NAME": roleDisplayName == null ? null : roleDisplayName,
        "NAME": name == null ? null : name,
        "MOBILE": mobile == null ? null : mobile,
        "EMAIL": email == null ? null : email,
        "USER_NAME": userName == null ? null : userName,
      };
}

class Role {
  Role({
    this.id,
    this.roleName,
    this.status,
    this.displayName,
  });

  final String? id;
  final String? roleName;
  final String? status;
  final String? displayName;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["ID"] == null ? null : json["ID"],
        roleName: json["ROLE_NAME"] == null ? null : json["ROLE_NAME"],
        status: json["STATUS"] == null ? null : json["STATUS"],
        displayName: json["DISPLAY_NAME"] == null ? null : json["DISPLAY_NAME"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id == null ? null : id,
        "ROLE_NAME": roleName == null ? null : roleName,
        "STATUS": status == null ? null : status,
        "DISPLAY_NAME": displayName == null ? null : displayName,
      };
}

class DevInfo {
  DevInfo({
    this.procedure,
    this.dbParms,
    this.exception,
    this.requestUrl,
    this.requestParms,
  });

  final String? procedure;
  final List<dynamic>? dbParms;
  final String? exception;
  final String? requestUrl;
  final String? requestParms;

  factory DevInfo.fromJson(Map<String, dynamic> json) => DevInfo(
        procedure: json["procedure"] == null ? null : json["procedure"],
        dbParms: json["dbParms"] == null
            ? null
            : List<dynamic>.from(json["dbParms"].map((x) => x)),
        exception: json["exception"] == null ? null : json["exception"],
        requestUrl: json["requestUrl"] == null ? null : json["requestUrl"],
        requestParms:
            json["requestParms"] == null ? null : json["requestParms"],
      );

  Map<String, dynamic> toJson() => {
        "procedure": procedure == null ? null : procedure,
        "dbParms":
            dbParms == null ? null : List<dynamic>.from(dbParms!.map((x) => x)),
        "exception": exception == null ? null : exception,
        "requestUrl": requestUrl == null ? null : requestUrl,
        "requestParms": requestParms == null ? null : requestParms,
      };
}
