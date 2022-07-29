public class AnimalLocator {
    public static string getAnimalNameById(Integer x){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals'+x);
        request.setMethod('GET');
        List<String>animal= new List<String>();
        HttpResponse response=http.send(request);
        System.debug(response.getBody());
        if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            MainWrapper results = (MainWrapper) JSON.deserialize(response.getBody(),MainWrapper.class);
            System.debug('2:'+results);
            if((results != null && results.animal != null) && x != 9999){
                return results.animal.Name;
            }
             
        }
        System.debug(animal);
        return 'trailhead';
    }
    class MainWrapper{
        MoreWrapper animal;
        
    }
    class MoreWrapper {
        String id;
        String name;
    }
}