class ApiUrl{
   static const String baseUrl = "http://178.33.34.156:55555/api/v1/customer";
}
class ApiEndpoints{
  static const String checkPhone= "${ApiUrl.baseUrl}/general/login_check_phone";
  
  static const String verifyOtpApi ="${ApiUrl.baseUrl}/general/login_verify_otp";
  
  static const String checkAuth ="${ApiUrl.baseUrl}/profile/check_auth";
  
  static const String newRequest="${ApiUrl.baseUrl}/profile/service_request/new";
  
  static const String getServieces="${ApiUrl.baseUrl}/general/get_services";

  static const String getAdress ="${ApiUrl.baseUrl}/profile/address/list";
}