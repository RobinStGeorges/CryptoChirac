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
            uint score = 1500; //a gerer apr�s
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

    /** 
    * slot : chosen candidate's number
    * max : the maximum slots + 1
    *
    * returns the new chosen candidate
    **/
    function shuffle (uint slot, uint max) public returns(uint256) {
        
        int height = 11;
        
        while (height > 0) {
            if (height % 2 == 0) {  // étage intermédiaire 
                slot += now % 2;
            } else {    // étage de départ / arrivée 
                slot -= now % 2;
            }
            height --;
            
            if(slot == 0) { // if the ball got out of bounds
                slot++;
            } else if(slot == max) {
                slot--;
            }
        }
        
        return slot;
    }
}