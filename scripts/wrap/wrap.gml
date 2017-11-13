/// @description wrap(value, min, max)
/// @function wrap
/// @param value
/// @param  min
/// @param  max
var value = argument0;
var minimum = argument1;
var maximum = argument2;
var range = maximum - minimum;

while(value < minimum) value += range;
while(value >= maximum) value -= range;

return value;
