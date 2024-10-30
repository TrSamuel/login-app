 bool login({required String username,required String password}) {
  if (username.trim()=='user' && password.trim()=='password') {
    return true;
  }else{
    return false;
  }
  
}