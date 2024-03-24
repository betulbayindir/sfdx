public class AnimalRestCallout {

    public static void getAnimals(){
        
        Http httpDT = new Http(); //just like click on new on Postman
        HttpRequest request = new HttpRequest(); //just like http button on Postman
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');//set endpoint
        request.setMethod('GET'); //selected the method...
        
        HttpResponse response = httpDT.send(request); //send the request and assign the response into the response object
    
    
        if(response.getStatusCode() == 200){ //when the result is successfully coming, I can convert data from unknown to Apex...
         
           /* 1.way:
           //do casting operation on the right part; convert from json to apex...
           //and assign into a map structure after casting..
        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            
         List<Object>  animalsList = (List<Object>) results.get('animals');
            
            for(Object w : animalsList){
                System.debug(w);
            }
             */ 
            
            //2nd way to convert from json to apex: use another class for parsing operation...

        RestAnimalParse restAnimalP = RestAnimalParse.parse(response.getBody()); 
        
            for(Object w : restAnimalP.animals){
                System.debug(w);
            }
        } 
    }  
}