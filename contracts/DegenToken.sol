// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20,ERC20Burnable,Ownable {
    mapping(uint256=>string)public phone;
    mapping(uint256 => uint256) public count; 
    string public phone_Store; 

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {
        phone_Store="Available phones to redeem: 1.redmi phone,2.one plus phone,3.Iphone";
        for(uint i=1;i<=3;i++){
            count[i]=6;
        }
        phone[1]="Redmi";
        phone[2]="One Plus";
        phone[3]="Iphone";
    }

    function mint(address _address, uint256 _value) public onlyOwner {
        _mint(_address, _value);
    }
    function redeem(uint256 id) public {
        require(id > 0 && id <= 3 && count[id]>0 );
        require(balanceOf(msg.sender)>1200);
        _burn(msg.sender, 400*id);
        count[id]--;
    }
     function burn(uint256 amount)public override {
        _burn(msg.sender, amount);
    }

    function transfer(address recepient,uint256 value)public override returns(bool){
        _transfer(msg.sender, recepient, value);
        return true;
    }
}



