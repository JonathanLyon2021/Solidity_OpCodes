contract MemoryOperationsDemo {
    function normalSumOfArray(uint[] arr) public view returns (uint sum) {
        for (uint i = 0; i < arr.length; i++) {
            sum = arr[i] + sum;
        }
    }
    
     function asmSumOfArray(uint[] arr) public view returns (uint sum) {
        assembly {
            let len := mload(arr)
            let elAddress := add(arr, 0x20)
            let i := 0
            
              loop:
                sum := add(sum, mload(elAddress))
                elAddress := add(elAddress, 0x20)
                
                i := add(i, 1)
                jumpi(loop, lt(i, len))
        }
     }
}
