 bool login({required String username,required String password}) {
  if (username=='user' && password=='password') {
    return true;
  }else{
    return false;
  }

}