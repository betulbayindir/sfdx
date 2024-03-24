public class ContactEmailTriggerHandler {
    
    public static void sendEmailNotification(List<Contact> conList){
        
        List<Messaging.Email> emailList = new List<Messaging.Email>();
        
        for(Contact con : conList){
            if(con.Email != null){
                
                Messaging.SingleEmailMessage emailMsg = new Messaging.SingleEmailMessage();
                
                String[] toAddress = new String[]{con.Email};
                    emailMsg.setToAddresses(toAddress);
                
                String emailSub = 'Welcome ' + con.FirstName + ' , your record is created in Salesforce';
                emailMsg.setSubject(emailSub);
                
                String disName = 'Betul';
                emailMsg.setSenderDisplayName(disName);
                
                String content = 'Hi ' + con.FirstName + ' ' + con.LastName + ', <br/>' + 
                    'Welcome to the Salesforce Ecosystem! <br/>';
                emailMsg.setHtmlBody(content);
                emailList.add(emailMsg);
             
                    
               
            }
        }
        Messaging.sendEmail(emailList);
    }

}