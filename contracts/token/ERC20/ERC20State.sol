pragma solidity ^0.5.0;


contract ERC20State {
    mapping (address => uint256) private _balances;
    mapping (address => mapping (address => uint256)) private _allowances;

    uint256 private _totalSupply;

    function setBalance(address account, uint256 amount) public {
        _balances[account] = amount;
    }

    function getBalance(address account) public view returns(uint256) {
        return _balances[account];
    }

    function setAllowance(address owner, address spender, uint256 amount) public {
        _allowances[owner][spender] = amount;
    }

    function getAllowance(address owner, address spender) public view returns(uint256) {
        return _allowances[owner][spender];
    }

    function setTotalSupply(uint256 totalSupply) public {
        _totalSupply = totalSupply;
    }

    function getTotalSupply() public view returns(uint256) {
        return _totalSupply;
    }
}
