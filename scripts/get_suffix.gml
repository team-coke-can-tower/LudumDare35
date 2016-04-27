/// get_suffix(num)
// gets the suffix of a number e.g. 2 -> nd, 3 -> rd, 4->th

var num_str = string(argument0);

first_num = string_char_at(num_str, string_length(num_str))

switch(first_num){
case "1":
    return "st"
case "2":
    return "nd"
case "3":
    return "rd"
default:
    return "th"
}
