contract MemoryOperationsDemo {
    function normalSumOfArray(uint[] arr) public view returns (uint sum) {
        for (uint i = 0; i < arr.length; i++) {
            sum = arr[i] + sum;
        }
    }
}
