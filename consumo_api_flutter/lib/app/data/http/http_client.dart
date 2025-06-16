abstract class IHttpClient {
  Future get ({required String utl}) 
}

class HttpClient implements IHttpClient {
  @override
  Future get({required String utl}) {
    // TODO: implement get
    throw UnimplementedError();
  }
  
}