abstract class NetworkConstants {
  static const Duration recipesApiConnectionTimeout = Duration(seconds: 10);
  static const Duration recipesApiReceiveTimeout = Duration(seconds: 8);
  static const String recipesApiContentType = "application/json";
  static const String recipesApiBase =
      "https://671cf31509103098807bbba1.mockapi.io/api/v1";

  static const String recipesApiRecipesEndpoint = "$recipesApiBase/Recipes";
}
