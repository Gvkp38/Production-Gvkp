public with sharing class Integrationiplocator {
@AuraEnabled
public static string getintegrationmethod(string ipaddress){
    string endpoint = 'https://en.utrace.me/?query=' + ipaddress;
    http p=new http();
    HttpRequest request= new HttpRequest();
    request.setEndpoint(endpoint);
    request.setMethod('GET');
    HttpResponse response=p.send(request);
    string responsebody=response.getBody();
    System.debug(responsebody);
    return responsebody;
}
}