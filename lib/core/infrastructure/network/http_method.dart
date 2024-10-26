enum HttpMethod {
  get("GET"),
  post("POST"),
  put("PUT"),
  patch("PATCH"),
  delete("DELETE"),
  head("HEAD");

  final String stringRepresentation;

  const HttpMethod(this.stringRepresentation);
}