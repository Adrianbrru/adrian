
# we create our genesis block
genesis_block = create_genesis_block("X paid $100 to Y")

# print the hash of the genesis_block
genesis_block_hash = get_hash_itself(genesis_block)
print "genesis_block_hash:", genesis_block_hash

# create another block
block1 = create_block("Y paid $20 to Z, X paid $10 to P", genesis_block_hash)

# print the hash of block1
block1_hash = get_hash_itself(block1)
print "block1_hash:", block1_hash
