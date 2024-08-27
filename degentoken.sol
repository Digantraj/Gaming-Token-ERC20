// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import OpenZeppelin contracts
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable(msg.sender) {
    event Redeem(address indexed user, uint256 indexed itemId, uint256 quantity);

    struct Item {
        uint256 price;
        uint256 quantity;
    }

    mapping(uint256 => Item) public storeItems;


    mapping(address => mapping(uint256 => uint256)) public userItemQuantity; 
    mapping(address => uint256) public userTotalSpent; 
    
    uint256 public itemCount;
    constructor() ERC20("Degen", "DGN") {}

    function mint(address to, uint256 amount) external onlyOwner {
        require(to != address(0), "Invalid address");
        require(amount > 0, "Amount must be greater than zero");

        _mint(to, amount);
    }

    function addItem(uint256 price, uint256 initialQuantity) external onlyOwner {
        require(price > 0, "Price must be greater than zero");
        require(initialQuantity > 0, "Initial quantity must be greater than zero");

        itemCount++;
        storeItems[itemCount] = Item(price, initialQuantity);
    }

    function redeem(uint256 itemId, uint256 quantity) external {
        require(itemId > 0 && itemId <= itemCount, "Invalid item ID");
        require(quantity > 0, "Quantity must be greater than zero");
        Item storage item = storeItems[itemId]; 
        require(item.quantity >= quantity, "Item not available");

        uint256 totalCost = item.price * quantity;
        require(balanceOf(msg.sender) >= totalCost, "Insufficient balance");

        _transfer(msg.sender, owner(), totalCost);

        item.quantity -= quantity;
        userItemQuantity[msg.sender][itemId] += quantity;
        userTotalSpent[msg.sender] += totalCost;

        emit Redeem(msg.sender, itemId, quantity);
    }

    function burn(uint256 amount) external {
        require(amount > 0, "Amount must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");

        _burn(msg.sender, amount);
    }

    function getRedeemedItems(uint256 itemId) public view returns (uint256) {
        return userItemQuantity[msg.sender][itemId];
    }

    function transferAndBurn(address to, uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        transfer(to, amount);
        _burn(msg.sender, amount);
    }
}
