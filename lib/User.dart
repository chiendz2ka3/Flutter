class User{
   int id;
   String name;
   String password;
  User( this.id,this.name, this.password);
   Map<String, dynamic> toMap() {
     return {
       'id': id,
       'name': name,
       'password': password,
     };
   }
}