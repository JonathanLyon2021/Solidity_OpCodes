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
        }
     }
}
