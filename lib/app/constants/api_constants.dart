class ApiUrls {
  static const String base = 'http://178.33.34.156:55555/api/v1/customer';
}

class ApiTokens {
  static String validToken = 'Bearer tB_Eb73qC#_B*boQgwxC6OReIJPaeXvc7#QGJ2JKK6ni6ACJ_atpJvE#pjX-rnJUFIsP1_ePg-dbwG1d-8b45Ds@4Z6Wwc)NvgfTgW3#YC(Ty8sIO(7VjRGQP@nwNGbhp7Kh1m-HAK8mDHtUarB(1lsIMumc9VJlCH4qVV3u(zjxGMDlby*53vrtlM_PGkB9PC2paP3y#rNY4@OV@rsguU3mKRicSf)S)X8hci@#WAzQ8dH)@6*5Q*Qgji79@7Vv';
}

class ApiEndpoints {
  static const String checkPhone = "${ApiUrls.base}/general/login_check_phone";
  static const String verifyOtpApi = "${ApiUrls.base}/general/login_verify_otp";
  static const String checkAuth = "${ApiUrls.base}/profile/check_auth";
  static const String newRequest = "${ApiUrls.base}/profile/service_request/new";
  static const String getServieces = "${ApiUrls.base}/general/get_services";
  static const String getAdress = "${ApiUrls.base}/profile/address/list";
  static const String addAddres = "${ApiUrls.base}/profile/address/insert";
  static const String selectedAddress = "${ApiUrls.base}/profile/address/select";
  static const String listAllRequests = "${ApiUrls.base}/profile/service_request/list";
  static const String getProdects = "${ApiUrls.base}/profile/product_sales/list";
  static const String getBanner = "${ApiUrls.base}/general/get_banner_data";
  static const String updateProfile = "${ApiUrls.base}/profile/update_profile";
  static const String deleteAddress = "${ApiUrls.base}/profile/address/delete";
  static const String logout="${ApiUrls.base}/profile/logout";
}
