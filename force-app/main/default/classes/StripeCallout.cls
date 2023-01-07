public class StripeCallout {
    public void createCustomer(){
        String accessToken = 'sk_test_51M9tW1IfdrnHziSp8bofRvizmI0xjyrzFwxeTAqmXg6WNDQ2AHbw1pzOnSO8wSlr3xt1IiCzequHFv1GkEan2p8V000iMjfqmC';
        /*Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod('POST'); 
        request.setEndpoint('https://api.stripe.com/v1/customers');
        request.setHeader('Content-Type','application/x-www-form-urlencoded');    
        request.setHeader('Authorization','Bearer '+accessToken );
        String body = 'name=Customer&email=abc@gmail.com&description=customer';
        HttpResponse response = new HttpResponse();
        request.setBody(body);
        response = http.send(request);
        String responseBody = response.getBody();*/
        HttpResponse ll = HttpCallout.callout(accessToken, 'POST','customers','name=Customer&email=abc@gmail.com&description=customer' );
        system.debug('responseBody'+ll.getBody());
    }
}