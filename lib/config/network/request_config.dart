class RequestConfig {
  static String get baseUrl {
    // final env = NetworkEnv().current;
    // switch (env) {
    //   case NetworkEnvMode.local:
    //     return "http://localhost:3000";
    //   case NetworkEnvMode.vercel:
    //     return "https://netease-cloud-music-api-eight-kappa-18.vercel.app";
    //   case NetworkEnvMode.custom:
    //     return NetworkEnv().customHost;
    //   default:
    // }
    return "http://localhost:3000";
  }

  static String get scheme {
    return baseUrl.split(':').first;
  }

  static String get host {
    return baseUrl.split('//').last;
  }

  static const connectTimeout = 15000;
}
