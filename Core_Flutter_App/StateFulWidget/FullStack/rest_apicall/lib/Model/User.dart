
import 'package:rest_apicall/Model/UserDOB.dart';
import 'package:rest_apicall/Model/UserLocation.dart';

import 'UserName.dart';

class User{
    final String gender;
    final String email;
    final String phone;
    final String cell;
    final String nat;
    final UserName name;
    final UserDOB dob;
    final UserLocation location;

    User( {
        required this.gender,
        required this.email,
        required this.phone,
        required this.cell,
        required this.nat,
        required this.name,
        required this.dob,
        required this.location
    });

    String get fulName{
        return '${name.title} ${name.first} ${name.last}';
    }
}
