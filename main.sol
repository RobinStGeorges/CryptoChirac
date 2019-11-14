pragma solidity >=0.4.22 <0.6.0;
contract voteContract {

    uint weight;
    mapping(address => didVote) voters;
    mapping(address => candidat) candidats;
    address owner;
    uint attempts;
    
    struct didVote{
        address user;
        bool didVote;
    }
    
    struct candidat {
        string name;
        uint voteCount;
    }
    
    struct Candidate {
        uint id;
        string name;
        uint score;
    }
    
    constructor() public {
        owner = msg.sender;
    }
    
    function userDidVote()public returns(bool){
        return !voters[msg.sender].didVote;
    }
    
    function setBoolDidVoteToTrue()public{
        voters[msg.sender].didVote=true;
    }
    
    function vote() public{
        //can vote ?
        if(userDidVote() == false){
        //get score
            uint score = 1500; //a gerer après
        //get number attemps possible
        //get vote val max
        //enougth attemps
        //start algo
        while(voters[msg.sender].didVote==false && attempts>0){
            
        //accept?
            // manageVote (attempts)
            // setBoolDidVoteToTrue
            setBoolDidVoteToTrue();
        //refuse?
            //attemps --
            attempts --;
            //redo
        }
        }
        
    }
    
    
}