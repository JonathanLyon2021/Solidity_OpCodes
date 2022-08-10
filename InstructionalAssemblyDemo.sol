contract InstructionalAssemblyDemo {
    function assemblyLoop() public view returns (uint result) {
        assembly {
            let i := 0
            loop:
                result := add(result, i)
                i := add(i, 1)
                jumpi(loop, lt(i, 10))
        }
    }
    
}
