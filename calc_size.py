# Estimate the size of the neural network on disk if you saved it out. 
# This has not been verified so take with grain of salt. 

# Size of float32 in bytes
float_size = 4

# Calculate the size for each layer
conv1_size = (32 * 1 * 5 * 5 + 32) * float_size
conv2_size = (64 * 32 * 5 * 5 + 64) * float_size
conv3_size = (128 * 64 * 3 * 3 + 128) * float_size
fc1_size = (128 * 2 * 2 * 128 + 128) * float_size
fc2_size = (128 * 10 + 10) * float_size

# Total memory required
total_memory = conv1_size + conv2_size + conv3_size + fc1_size + fc2_size

print(f"Total memory required: {total_memory / (1024**2):.2f} MB")

