class DependentModel {
  String _massage;
  bool _status;
  List<SecondDependentData> _data;

  DependentModel({String massage, bool status, List<SecondDependentData> data}) {
    this._massage = massage;
    this._status = status;
    this._data = data;
  }

  String get massage => _massage;
  set massage(String massage) => _massage = massage;
  bool get status => _status;
  set status(bool status) => _status = status;
  List<SecondDependentData> get data => _data;
  set data(List<SecondDependentData> data) => _data = data;

  DependentModel.fromJson(Map<String, dynamic> json) {
    _massage = json['massage'];
    _status = json['status'];
    if (json['data'] != null) {
      _data = new List<SecondDependentData>();
      json['data'].forEach((v) {
        _data.add(new SecondDependentData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['massage'] = this._massage;
    data['status'] = this._status;
    if (this._data != null) {
      data['data'] = this._data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SecondDependentData {
  int _id;
  bool _isSelected = false;
  String _dateCreated;
  String _dateModified;
  String _createdBy;
  String _modifiedBy;
  bool _status;
  String _name;
  String _relationship;
  bool _primaryFlag;
  String _countryCode;
  String _secondCountryCode;
  String _phone;
  String _secondPhone;
  bool _isDependent;
  bool _isEmergencyContact;
  String _gender;
  String _email;
  bool _isAddSameAsEmployee;
  String _address1;
  String _address2;
  String _address3;
  String _city;
  String _state;
  Null _addressType;
  String _country;
  String _zip;
  Null _column1;
  Null _column2;
  Null _column3;
  Null _column4;
  Null _column5;
  Null _column6;
  Null _column7;
  Null _column8;
  Null _column9;
  Null _column10;
  Null _column11;
  Null _column12;
  String _empCode;
  Null _organization;
  String _empPassport;
  String _empVisa;

  SecondDependentData(
      {int id,
        bool isSelected,
        String dateCreated,
        String dateModified,
        String createdBy,
        String modifiedBy,
        bool status,
        String name,
        String relationship,
        bool primaryFlag,
        String countryCode,
        String secondCountryCode,
        String phone,
        String secondPhone,
        bool isDependent,
        bool isEmergencyContact,
        String gender,
        String email,
        bool isAddSameAsEmployee,
        String address1,
        String address2,
        String address3,
        String city,
        String state,
        Null addressType,
        String country,
        String zip,
        Null column1,
        Null column2,
        Null column3,
        Null column4,
        Null column5,
        Null column6,
        Null column7,
        Null column8,
        Null column9,
        Null column10,
        Null column11,
        Null column12,
        String empCode,
        Null organization,
        String empPassport,
        String empVisa}) {
    this._id = id;
    this._isSelected=isSelected;
    this._dateCreated = dateCreated;
    this._dateModified = dateModified;
    this._createdBy = createdBy;
    this._modifiedBy = modifiedBy;
    this._status = status;
    this._name = name;
    this._relationship = relationship;
    this._primaryFlag = primaryFlag;
    this._countryCode = countryCode;
    this._secondCountryCode = secondCountryCode;
    this._phone = phone;
    this._secondPhone = secondPhone;
    this._isDependent = isDependent;
    this._isEmergencyContact = isEmergencyContact;
    this._gender = gender;
    this._email = email;
    this._isAddSameAsEmployee = isAddSameAsEmployee;
    this._address1 = address1;
    this._address2 = address2;
    this._address3 = address3;
    this._city = city;
    this._state = state;
    this._addressType = addressType;
    this._country = country;
    this._zip = zip;
    this._column1 = column1;
    this._column2 = column2;
    this._column3 = column3;
    this._column4 = column4;
    this._column5 = column5;
    this._column6 = column6;
    this._column7 = column7;
    this._column8 = column8;
    this._column9 = column9;
    this._column10 = column10;
    this._column11 = column11;
    this._column12 = column12;
    this._empCode = empCode;
    this._organization = organization;
    this._empPassport = empPassport;
    this._empVisa = empVisa;
  }

  bool get isSelected => _isSelected;

  set isSelected(bool value) {
    _isSelected = value;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get dateCreated => _dateCreated;
  set dateCreated(String dateCreated) => _dateCreated = dateCreated;
  String get dateModified => _dateModified;
  set dateModified(String dateModified) => _dateModified = dateModified;
  String get createdBy => _createdBy;
  set createdBy(String createdBy) => _createdBy = createdBy;
  String get modifiedBy => _modifiedBy;
  set modifiedBy(String modifiedBy) => _modifiedBy = modifiedBy;
  bool get status => _status;
  set status(bool status) => _status = status;
  String get name => _name;
  set name(String name) => _name = name;
  String get relationship => _relationship;
  set relationship(String relationship) => _relationship = relationship;
  bool get primaryFlag => _primaryFlag;
  set primaryFlag(bool primaryFlag) => _primaryFlag = primaryFlag;
  String get countryCode => _countryCode;
  set countryCode(String countryCode) => _countryCode = countryCode;
  String get secondCountryCode => _secondCountryCode;
  set secondCountryCode(String secondCountryCode) =>
      _secondCountryCode = secondCountryCode;
  String get phone => _phone;
  set phone(String phone) => _phone = phone;
  String get secondPhone => _secondPhone;
  set secondPhone(String secondPhone) => _secondPhone = secondPhone;
  bool get isDependent => _isDependent;
  set isDependent(bool isDependent) => _isDependent = isDependent;
  bool get isEmergencyContact => _isEmergencyContact;
  set isEmergencyContact(bool isEmergencyContact) =>
      _isEmergencyContact = isEmergencyContact;
  String get gender => _gender;
  set gender(String gender) => _gender = gender;
  String get email => _email;
  set email(String email) => _email = email;
  bool get isAddSameAsEmployee => _isAddSameAsEmployee;
  set isAddSameAsEmployee(bool isAddSameAsEmployee) =>
      _isAddSameAsEmployee = isAddSameAsEmployee;
  String get address1 => _address1;
  set address1(String address1) => _address1 = address1;
  String get address2 => _address2;
  set address2(String address2) => _address2 = address2;
  String get address3 => _address3;
  set address3(String address3) => _address3 = address3;
  String get city => _city;
  set city(String city) => _city = city;
  String get state => _state;
  set state(String state) => _state = state;
  Null get addressType => _addressType;
  set addressType(Null addressType) => _addressType = addressType;
  String get country => _country;
  set country(String country) => _country = country;
  String get zip => _zip;
  set zip(String zip) => _zip = zip;
  Null get column1 => _column1;
  set column1(Null column1) => _column1 = column1;
  Null get column2 => _column2;
  set column2(Null column2) => _column2 = column2;
  Null get column3 => _column3;
  set column3(Null column3) => _column3 = column3;
  Null get column4 => _column4;
  set column4(Null column4) => _column4 = column4;
  Null get column5 => _column5;
  set column5(Null column5) => _column5 = column5;
  Null get column6 => _column6;
  set column6(Null column6) => _column6 = column6;
  Null get column7 => _column7;
  set column7(Null column7) => _column7 = column7;
  Null get column8 => _column8;
  set column8(Null column8) => _column8 = column8;
  Null get column9 => _column9;
  set column9(Null column9) => _column9 = column9;
  Null get column10 => _column10;
  set column10(Null column10) => _column10 = column10;
  Null get column11 => _column11;
  set column11(Null column11) => _column11 = column11;
  Null get column12 => _column12;
  set column12(Null column12) => _column12 = column12;
  String get empCode => _empCode;
  set empCode(String empCode) => _empCode = empCode;
  Null get organization => _organization;
  set organization(Null organization) => _organization = organization;
  String get empPassport => _empPassport;
  set empPassport(String empPassport) => _empPassport = empPassport;
  String get empVisa => _empVisa;
  set empVisa(String empVisa) => _empVisa = empVisa;

  SecondDependentData.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _dateCreated = json['date_created'];
    _dateModified = json['date_modified'];
    _createdBy = json['created_by'];
    _modifiedBy = json['modified_by'];
    _status = json['status'];
    _name = json['name'];
    _relationship = json['relationship'];
    _primaryFlag = json['primary_flag'];
    _countryCode = json['country_code'];
    _secondCountryCode = json['second_country_code'];
    _phone = json['phone'];
    _secondPhone = json['second_phone'];
    _isDependent = json['isDependent'];
    _isEmergencyContact = json['isEmergencyContact'];
    _gender = json['gender'];
    _email = json['email'];
    _isAddSameAsEmployee = json['isAddSameAsEmployee'];
    _address1 = json['address1'];
    _address2 = json['address2'];
    _address3 = json['address3'];
    _city = json['city'];
    _state = json['state'];
    _addressType = json['address_type'];
    _country = json['country'];
    _zip = json['zip'];
    _column1 = json['column1'];
    _column2 = json['column2'];
    _column3 = json['column3'];
    _column4 = json['column4'];
    _column5 = json['column5'];
    _column6 = json['column6'];
    _column7 = json['column7'];
    _column8 = json['column8'];
    _column9 = json['column9'];
    _column10 = json['column10'];
    _column11 = json['column11'];
    _column12 = json['column12'];
    _empCode = json['emp_code'];
    _organization = json['organization'];
    _empPassport = json['emp_passport'];
    _empVisa = json['emp_visa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['date_created'] = this._dateCreated;
    data['date_modified'] = this._dateModified;
    data['created_by'] = this._createdBy;
    data['modified_by'] = this._modifiedBy;
    data['status'] = this._status;
    data['name'] = this._name;
    data['relationship'] = this._relationship;
    data['primary_flag'] = this._primaryFlag;
    data['country_code'] = this._countryCode;
    data['second_country_code'] = this._secondCountryCode;
    data['phone'] = this._phone;
    data['second_phone'] = this._secondPhone;
    data['isDependent'] = this._isDependent;
    data['isEmergencyContact'] = this._isEmergencyContact;
    data['gender'] = this._gender;
    data['email'] = this._email;
    data['isAddSameAsEmployee'] = this._isAddSameAsEmployee;
    data['address1'] = this._address1;
    data['address2'] = this._address2;
    data['address3'] = this._address3;
    data['city'] = this._city;
    data['state'] = this._state;
    data['address_type'] = this._addressType;
    data['country'] = this._country;
    data['zip'] = this._zip;
    data['column1'] = this._column1;
    data['column2'] = this._column2;
    data['column3'] = this._column3;
    data['column4'] = this._column4;
    data['column5'] = this._column5;
    data['column6'] = this._column6;
    data['column7'] = this._column7;
    data['column8'] = this._column8;
    data['column9'] = this._column9;
    data['column10'] = this._column10;
    data['column11'] = this._column11;
    data['column12'] = this._column12;
    data['emp_code'] = this._empCode;
    data['organization'] = this._organization;
    data['emp_passport'] = this._empPassport;
    data['emp_visa'] = this._empVisa;
    return data;
  }
}