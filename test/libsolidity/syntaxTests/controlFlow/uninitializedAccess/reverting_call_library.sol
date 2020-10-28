
library L
{
	function iWillRevert() public pure { revert(); }
}

contract C
{
	function test(bool _param) pure external returns(uint256)
	{
		if (_param) return 1;

		L.iWillRevert();
	}
}

