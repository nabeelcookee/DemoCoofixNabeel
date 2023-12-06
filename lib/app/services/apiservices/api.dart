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
  
  static const String addAddres ="${ApiUrl.baseUrl}/profile/address/insert";

  static const String selectedAddress ="${ApiUrl.baseUrl}/profile/address/select";

  static const String  listAllRequests = "${ApiUrl.baseUrl}/profile/service_request/list";

  static const String  getProdects= "${ApiUrl.baseUrl}/profile/product_sales/list";

  static const String  getBanner ="${ApiUrl.baseUrl}/general/get_banner_data";
}
