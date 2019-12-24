pragma solidity ^0.5.0;
contract ClassLearning{
    /*
                          **Types of State variables **
    (1= internal,2= public,3= private,4=constant)
    1= only public variable will show in deployment.
    2= constant can be attacht with any variable but will will make them un-changeable eg. 40x2= (wrong expression) ans=40 thoughout contract.
    3= internal can accessable in child contracts but private can't
                          **Data Types**
                          
    
    */
    int age = 40; // by default this will be internal
    int public age2 = 52; 
    int private /*constant*/ age3 = 62; // by removing comment it will become constant thoughout contract 
    // to access in in-access able variables we need function
    
    
    function getAge() public view returns(int){ //adding view in function will also show you in diployment section not only in transction
        return age;
    } // internal variable can be access only withing contract only 
    // we also can change variable by using function 
    function setAge() public{
        age = 3; 
    }
    
    function getAgeNew() public view returns(int){ 
    //    age3 = 42; this will give you error if i put constant in state variable 
        return age3;
    }  
     // Data Types
    int myAge = 35;
    bool feePaid = true;
    string name = "Zeeshan";
    address myAccount = 0x583031D1113aD414F02576BD6afaBfb302140225;
    bytes1 b = "A";
    mapping (int => string ) list; 
    
    
    
}