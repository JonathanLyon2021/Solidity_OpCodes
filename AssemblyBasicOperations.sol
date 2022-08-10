contract AssemblyBasicOperations {
    function normalLoop() public view returns (uint result) {
        for (uint i = 0; i < 10; i++) {
            result += i;
        }
    }
}
