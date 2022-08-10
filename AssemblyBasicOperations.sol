contract AssemblyBasicOperations {
    function normalLoop() public view returns (uint result) {
        for (uint i = 0; i < 10; i++) {
            result += i;
        }
    }
    function assemblyLoop() public view returns (uint result) {
       assembly {
           let i := 0
           loop:
               result := add(result, i)
               i := add(i, 1)
               jumpi(loop, lt(i, 10))
        }
    }
    
    function normalIf(uint num1, uint num2) public view returns (uint result) {
        if (num1 > num2) {
            result = num1;
        } else {
            result = num2;
        }
    }
}
