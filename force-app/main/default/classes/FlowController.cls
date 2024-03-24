public class FlowController {
    
    @InvocableMethod(label='Delete related contact record' 
                     description='to delete the related contacts' category='Account')
    public static void deleteContact(list<ID> accID){
        //we can call this method from flow
        list<contact> listCon = [select id, name from contact where accountid = : accID];
        delete listCon;
        
        
        
      
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }

}