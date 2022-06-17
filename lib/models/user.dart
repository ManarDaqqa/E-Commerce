class User {
  late int id;
  // late String name;
  late String email;
  late String password;



  //to read data => fromMap
      User.fromMap(Map<String,dynamic> rowMap){
        id = rowMap['id'];
        email = rowMap['email'];
        password = rowMap['password'];
      }
        //1:07:03 min in the video
  //to save new data => toMap
      Map<String,dynamic> toMap(){
        Map<String,dynamic> map =<String,dynamic>{};

        return map;
      }
}