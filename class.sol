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
    //                        **enumeration** 
    
    
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
    uint count = 34;
    uint8 count2 = 23;
    mapping (int => string ) list; 
    
    function doSomeWork() public{
        myAge = 56;
        name = "34";
        //count2 = "300"; this will give error coz in 8 bites 0 to 255 no. limit will allow
    }
                           //**Functions*
    //Functions(qyalifiers= 1.public/2.internal/3.private/4.external)
    //public = outside +inside contract + child contract 
    //internal = inside + child 
    //private = inside contract
    //external = only outside contract
          function hello1() public view{
              getName1();
              getAge1();
              }                
         function getName1() private view returns(string memory){
             return "Zubair";
             }
         function getAge1() internal view returns(int){
             return 45;
             }     
         function getCount1() external{
             }
// Qualifiers view

 uint myNewAge = 45;
 function doSomething() public view{
     
 }
 function getMyNewage() public view returns(uint){
     // not allow to change state variable
     //age = 10 .. wil give you error
     doSomething(); // allow coz it will not change anystate variable
     uint a = myNewAge *2;//allow
     return myNewAge;
 }
 int myNewAge2 = 45;
 function doSomething1() public pure{
 }
 function getMyNewage2() public pure returns(int){
     // not allow to access or modify state variable
     //age = 10 .. wil give you error
     //return myNewAge2;
     doSomething1(); //allow
     return 45;
 }
 function recivePayment() public payable{
     //no Logic require
 }
 uint public balance; // to keep track of balance
 function recivePayment1() public payable{
     //msg.value contain ether from sender
     //we can store value in state variable
     balance += msg.value; 
 } 
 function checkBalance() public view returns(uint){ // only will show in wei unit 
     return balance;// will show balance sent by recivePayment1 function
     //return address(this).balance; .. this command will show balance of contract
 }
 
             
             //          *enumeration*
   /* enum gender {  ... should be in first part of contract
        male,
        female
    }         
             function sendGenderValue()public{
                 getValues(gender.female);  ...first way
                 getValues(gender(1));  ...2nd way
             
             }
             function getValues(gender g) public view returns (gender){
             gender value = g;
             return gender;
             
             }
             
             // struct or structure  

struct Student{
    string name;
    uint age;
    bool isFeePaid;
    uint[] list;   ... also possible to put arrys in it
}
 Student stu = Student("zeeshan",23, false);
 function manageStudent() public view returns(uint){
     Student st1 = Student("rehan",20, true);
     Student st2 = Student("taha",40, false);
     return st1.age;
 }
 function manageStudent() public view returns(string memory){ ..sequence is important
     st2.name = "zeeshan";
     return st2.name;
 }
 */
 }