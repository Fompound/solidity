abstract contract B
{
        function iWillRevert() pure public virtual { revert(); }
}

contract C is B
{
        function iWillRevert() pure public override {  }

        function test(bool _param) pure external returns(uint256)
        {
                if (_param) return 1;

                iWillRevert();
        }
}

// ----
// Warning 6321: (223-230): Unnamed return variable can remain unassigned. Add an explicit return with value to all non-reverting code paths or name the variable.
