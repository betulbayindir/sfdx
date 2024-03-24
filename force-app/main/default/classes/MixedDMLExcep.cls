public class MixedDMLExcep {
    
    
    public static void mdeTest(){
        
        //1. DML for Account
        Account acc = new Account(Name='Test for MDE 2'); //non-setup object
        insert acc; //DML
        
        MixedDMLExcep.assignPS('PermisFromApex','betulbayindir00@gmail.com');
        
       //'PermisFromApex'
       //'betulbayindir00@gmail.com'
    }
    
    
    @future //Aysnch Apex....in background
    public static void assignPS(String psName, String usName){
        
         PermissionSet ps = [SELECT Id, Name FROM PermissionSet WHERE Name=:psName ]; //called the recently created PSet from database inSetup Object
        
       User us = [SELECT Id, Username FROM User WHERE Username=:usName];  //called the user to that you want to assign in Setup Object
        
        PermissionSetAssignment psa = new PermissionSetAssignment();
        
        psa.AssigneeId = us.Id;
        psa.PermissionSetId = ps.Id;
        System.debug(psa + 'Async part is completed');
        insert psa;
    }

}