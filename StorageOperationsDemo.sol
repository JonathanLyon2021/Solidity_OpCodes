contract StorageOperationsDemo {
    uint public x;
    uint public y;
    
    function setX(uint value) public {
        assembly {
            sstore(add(x_slot, x_offset), value)
        }
    }
    
    function setY(uint value) public {
        assembly {
            sstore(add(y_slot, y_offset), value)
        }
    }
}
