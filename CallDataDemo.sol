contract CalldataDemo {
    function sumArrayPublic(uint[] arr) public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < arr.length; i++) {
            sum += arr[i];
        }
        
        return sum;
    }
    
    function sumArrayExternal(uint[] arr) external view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < arr.length; i++) {
            sum += arr[i];
        }
        
        return sum;
    }
}
