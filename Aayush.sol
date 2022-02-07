pragma solidity ^0.8.11;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract Aayush is ERC20 {

    address public admin;

    constructor() ERC20('Aayush Token', 'AAY') {
        _mint(msg.sender, 10000 * 10 ** 18);
    }

    function mint(address to, uint amount) external {
        require(msg.sender == admin, 'only admin are able to utilize this function');
        _mint(to, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
}
