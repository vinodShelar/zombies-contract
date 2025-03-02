// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ZombieFactory {
    event NewZombie(uint256 zombieId, string _name, uint256 dna);

    uint256 dnaDigits = 16;
    uint256 dnaModulus = 10**16;

    struct Zombie {
        string name;
        uint256 dna;
    }

    Zombie[] public zombies;

    function createZombie(string memory _name, uint256 _dna) private {
        zombies.push(Zombie(_name, _dna));
        emit NewZombie(zombies.length - 1, _name, _dna);
    }

    function _generateRandomDna(string memory _str)
        private
        view
        returns (uint256)
    {
        uint256 rand = uint256(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        uint256 randDna = _generateRandomDna(_name);
        createZombie(_name, randDna);
    }
}
