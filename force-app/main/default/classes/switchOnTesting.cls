public class switchOnTesting {
    
    //Create a method that gives you random letters
    //Access modifier DataType methodName(){method body}
    public String getRandomLetters(){
         
     String letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
        
     Integer index =  Integer.valueOf(Math.random()*51); 
        
        return letters.substring(index, index+1);
    }
    
  }

//random() : gives you a random value between 0 and 1 > 0....1
    
    
    /*
     	1)Methods should be created in Classes
		2)to create a method
			i)Type "access modifier": There are 4 four access modifiers
					a) global: It can be accessed even from other applications
					b) public: It can be accessed from entire the project like a "public library"
					c) protected: It can be used from inner classes
					d) private: It can be used just inside the class in which the data was created
			ii) Type "return type": It is data type which the method will give you (return)
			iii) Type method name: a) Method name should summarize the functionality 
								   b) Use camelCase
			iv) Put method parenthesis () : From that one Apex understand it is a method
			 v) use {} : The part between {} is called "method body"
     */