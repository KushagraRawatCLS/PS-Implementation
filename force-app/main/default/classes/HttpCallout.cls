public class HttpCallout {

    public static HttpResponse callout(String accessToken, String httpMethod, String endpoint, String requestBody){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod(httpMethod); 
        request.setEndpoint('https://api.stripe.com/v1/'+endpoint);
        request.setHeader('Content-Type','application/x-www-form-urlencoded');    
        request.setHeader('Authorization','Bearer '+accessToken );
        HttpResponse response = new HttpResponse();
        request.setBody(requestBody);
        response = http.send(request);
        return response;
    }
}