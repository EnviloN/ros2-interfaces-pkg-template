# We can use other message descriptions (add dependency!)
example_interfaces/Int64MultiArray values

# Limit string length to 10 characters
string<=10 short_message

# Limit array size to 5 items
string[<=5] sensors

# Or have an array of size 5
bool[5] led_status

# Set default value for a field
uint8 x 42

# Define a constant (like default value but cannot be changed)
# The name has to be UPPERCASE
float32 MY_CONST=6.283185
